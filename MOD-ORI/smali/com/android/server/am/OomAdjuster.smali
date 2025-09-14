.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final VENDING_PKG:Ljava/lang/String;

.field public final mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public final mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public final mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mFollowUpUpdateSet:Landroid/util/ArraySet;

.field public final mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

.field public final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public mLastFreeSwapPercent:D

.field public mLastReason:I

.field public final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextFollowUpUpdateUptimeMs:J

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumCachedProcessCount:I

.field public mNumCachedSlotCount:I

.field public mNumEmptyProcessCount:I

.field public mNumEmptySlotCount:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public final mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessStateCurTop:I

.field public final mProcessesInCycle:Landroid/util/ArraySet;

.field public final mProcsToOomAdj:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/am/OomAdjuster$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$Injector;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 13
    .line 14
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 15
    .line 16
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 17
    .line 18
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 19
    .line 20
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v3, v2, [I

    .line 24
    .line 25
    iput-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 29
    .line 30
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 50
    .line 51
    new-instance v4, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 57
    .line 58
    new-instance v4, Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 64
    .line 65
    new-instance v4, Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 71
    .line 72
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 82
    .line 83
    const/4 v4, 0x2

    .line 84
    iput v4, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 85
    .line 86
    new-instance v4, Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 92
    .line 93
    const-wide v4, 0x7fffffffffffffffL

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    iput-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 99
    .line 100
    const-string/jumbo v4, "com.android.vending"

    .line 101
    .line 102
    .line 103
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    .line 104
    .line 105
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 106
    .line 107
    iput-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 108
    .line 109
    new-instance v4, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 110
    .line 111
    invoke-direct {v4, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    .line 112
    .line 113
    .line 114
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 121
    .line 122
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 125
    .line 126
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 127
    .line 128
    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 129
    .line 130
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 131
    .line 132
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer;

    .line 133
    .line 134
    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    .line 135
    .line 136
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p1, v3, v4}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 143
    .line 144
    new-instance v0, Lcom/android/server/am/CacheOomRanker;

    .line 145
    .line 146
    new-instance v3, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, p1, v3}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 155
    .line 156
    new-instance v0, Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 159
    .line 160
    invoke-direct {v0, p0, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 164
    .line 165
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 170
    .line 171
    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 174
    .line 175
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 180
    .line 181
    new-instance v0, Landroid/os/Handler;

    .line 182
    .line 183
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    new-instance v3, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, p4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 196
    .line 197
    new-instance p4, Lcom/android/server/am/ActiveUids;

    .line 198
    .line 199
    invoke-direct {p4, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 200
    .line 201
    .line 202
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 203
    .line 204
    new-instance p4, Ljava/util/ArrayDeque;

    .line 205
    .line 206
    iget v0, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 207
    .line 208
    shl-int/2addr v0, v2

    .line 209
    invoke-direct {p4, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 210
    .line 211
    .line 212
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 213
    .line 214
    const/16 p4, 0xa

    .line 215
    .line 216
    iput p4, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 217
    .line 218
    sget-boolean p4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 219
    .line 220
    sget-object p4, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 221
    .line 222
    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 223
    .line 224
    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public static evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 8
    .line 9
    if-nez p0, :cond_2

    .line 10
    .line 11
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 12
    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 16
    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    :goto_0
    return v0
.end method

.method public static getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq p0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x6

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v2, 0x10

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v2, 0x7f

    .line 31
    .line 32
    :cond_3
    :goto_0
    or-int p0, v2, v0

    .line 33
    .line 34
    return p0
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "_unknown"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string/jumbo p0, "updateOomAdj_fgsfilter"

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string/jumbo p0, "updateOomAdj_slowdown"

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string/jumbo p0, "updateOomAdj_followUp"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string/jumbo p0, "updateOomAdj_componentDisabled"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string/jumbo p0, "updateOomAdj_restrictionChange"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_5
    const-string/jumbo p0, "updateOomAdj_executingService"

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string/jumbo p0, "updateOomAdj_stopService"

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_7
    const-string/jumbo p0, "updateOomAdj_uidIdle"

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_8
    const-string/jumbo p0, "updateOomAdj_removeTask"

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_9
    const-string/jumbo p0, "updateOomAdj_shell"

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_a
    const-string/jumbo p0, "updateOomAdj_backup"

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_b
    const-string/jumbo p0, "updateOomAdj_systemInit"

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_c
    const-string/jumbo p0, "updateOomAdj_shortFgs"

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_d
    const-string/jumbo p0, "updateOomAdj_processEnd"

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_e
    const-string/jumbo p0, "updateOomAdj_processBegin"

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_f
    const-string/jumbo p0, "updateOomAdj_allowlistChange"

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_10
    const-string/jumbo p0, "updateOomAdj_uiVisibility"

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_11
    const-string/jumbo p0, "updateOomAdj_removeProvider"

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_12
    const-string/jumbo p0, "updateOomAdj_getProvider"

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_13
    const-string/jumbo p0, "updateOomAdj_startService"

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_14
    const-string/jumbo p0, "updateOomAdj_unbindService"

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_15
    const-string/jumbo p0, "updateOomAdj_bindService"

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_16
    const-string/jumbo p0, "updateOomAdj_startReceiver"

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_17
    const-string/jumbo p0, "updateOomAdj_finishReceiver"

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_18
    const-string/jumbo p0, "updateOomAdj_activityChange"

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_19
    const-string/jumbo p0, "updateOomAdj_meh"

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

.method public static promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_2

    .line 3
    .line 4
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v0, "fg-service-act"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "vis-activity"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v0, "service"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x3

    .line 40
    if-ne p1, p0, :cond_2

    .line 41
    .line 42
    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo p1, "provider"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :cond_1
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget p1, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 14
    .line 15
    if-le p0, p1, :cond_1

    .line 16
    .line 17
    const/16 p0, 0xfa

    .line 18
    .line 19
    if-gt p1, p0, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x2

    .line 22
    :cond_0
    move p0, p1

    .line 23
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 24
    .line 25
    .line 26
    return p2
.end method

.method public static updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput-boolean v2, v0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 14
    .line 15
    iget v2, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 16
    .line 17
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 18
    .line 19
    if-le v2, v3, :cond_0

    .line 20
    .line 21
    iput v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    iput-boolean p0, v0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 31
    .line 32
    :cond_1
    iget p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 33
    .line 34
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 35
    .line 36
    or-int/2addr p0, v1

    .line 37
    iput p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method


# virtual methods
.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    move-wide/from16 v12, p5

    .line 8
    .line 9
    move/from16 v14, p7

    .line 10
    .line 11
    iget-object v15, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 12
    .line 13
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 14
    .line 15
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 16
    .line 17
    iget v2, v15, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iput v0, v15, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 22
    .line 23
    :cond_0
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 24
    .line 25
    iget v2, v15, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 26
    .line 27
    const/16 v3, 0x352

    .line 28
    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    if-ge v0, v2, :cond_1

    .line 40
    .line 41
    if-ge v0, v3, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 44
    .line 45
    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 51
    .line 52
    const/16 v16, 0x7

    .line 53
    .line 54
    if-eqz v0, :cond_18

    .line 55
    .line 56
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 57
    .line 58
    if-eqz v5, :cond_18

    .line 59
    .line 60
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 61
    .line 62
    iget v3, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 63
    .line 64
    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 65
    .line 66
    iget v2, v15, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 67
    .line 68
    iget v7, v15, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 69
    .line 70
    iget v4, v15, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 71
    .line 72
    iget v12, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 73
    .line 74
    iget-object v13, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 75
    .line 76
    iget-boolean v13, v13, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 77
    .line 78
    iget-boolean v14, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 79
    .line 80
    if-nez v14, :cond_2

    .line 81
    .line 82
    goto/16 :goto_b

    .line 83
    .line 84
    :cond_2
    if-nez v13, :cond_12

    .line 85
    .line 86
    const-string v14, "PerProcessNandswap"

    .line 87
    .line 88
    move-object/from16 v19, v8

    .line 89
    .line 90
    const-string/jumbo v8, "nandswap "

    .line 91
    .line 92
    .line 93
    move-object/from16 v20, v15

    .line 94
    .line 95
    :try_start_0
    const-string/jumbo v15, "com.google.android.providers.media.module"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_3

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v15, :cond_4

    .line 111
    .line 112
    const/16 v15, 0x10

    .line 113
    .line 114
    if-lt v12, v15, :cond_4

    .line 115
    .line 116
    const/16 v15, 0x13

    .line 117
    .line 118
    if-gt v12, v15, :cond_4

    .line 119
    .line 120
    const/16 v15, 0x384

    .line 121
    .line 122
    if-lt v7, v15, :cond_4

    .line 123
    .line 124
    const/16 v15, 0x3e7

    .line 125
    .line 126
    if-gt v7, v15, :cond_4

    .line 127
    .line 128
    const/16 v9, 0xe

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    sget-object v15, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 132
    .line 133
    const-string/jumbo v15, "ro.slmk.chimera_quota_enable"

    .line 134
    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    invoke-static {v15, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-nez v15, :cond_5

    .line 142
    .line 143
    const/16 v9, 0xfa

    .line 144
    .line 145
    if-lt v7, v9, :cond_5

    .line 146
    .line 147
    const/4 v9, 0x5

    .line 148
    if-ne v12, v9, :cond_5

    .line 149
    .line 150
    const/16 v9, 0x8

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    const/16 v9, -0x320

    .line 154
    .line 155
    if-eq v7, v9, :cond_c

    .line 156
    .line 157
    const/16 v9, -0x2bc

    .line 158
    .line 159
    if-eq v7, v9, :cond_c

    .line 160
    .line 161
    const/16 v9, 0x64

    .line 162
    .line 163
    if-eq v7, v9, :cond_b

    .line 164
    .line 165
    const/16 v9, 0xc8

    .line 166
    .line 167
    if-eq v7, v9, :cond_a

    .line 168
    .line 169
    const/16 v9, 0xe1

    .line 170
    .line 171
    if-eq v7, v9, :cond_9

    .line 172
    .line 173
    const/16 v9, 0xfa

    .line 174
    .line 175
    if-eq v7, v9, :cond_8

    .line 176
    .line 177
    const/16 v9, 0x1f4

    .line 178
    .line 179
    if-eq v7, v9, :cond_7

    .line 180
    .line 181
    const/16 v9, 0x320

    .line 182
    .line 183
    if-eq v7, v9, :cond_6

    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    goto :goto_0

    .line 187
    :cond_6
    const/4 v9, 0x1

    .line 188
    goto :goto_0

    .line 189
    :cond_7
    const/4 v9, 0x2

    .line 190
    goto :goto_0

    .line 191
    :cond_8
    const/4 v9, 0x3

    .line 192
    goto :goto_0

    .line 193
    :cond_9
    const/4 v9, 0x4

    .line 194
    goto :goto_0

    .line 195
    :cond_a
    const/4 v9, 0x5

    .line 196
    goto :goto_0

    .line 197
    :cond_b
    const/4 v9, 0x6

    .line 198
    goto :goto_0

    .line 199
    :cond_c
    move/from16 v9, v16

    .line 200
    .line 201
    :goto_0
    if-eqz v9, :cond_11

    .line 202
    .line 203
    iget-object v15, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 204
    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v15, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 214
    .line 215
    if-nez v1, :cond_d

    .line 216
    .line 217
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 218
    .line 219
    invoke-direct {v1, v6, v3, v7, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 220
    .line 221
    .line 222
    iget-object v15, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    .line 224
    move/from16 v21, v12

    .line 225
    .line 226
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-virtual {v15, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :goto_1
    move v15, v13

    .line 234
    goto :goto_3

    .line 235
    :catch_0
    :goto_2
    move v15, v13

    .line 236
    :catch_1
    const-wide/16 v17, 0x0

    .line 237
    .line 238
    goto/16 :goto_5

    .line 239
    .line 240
    :catch_2
    move/from16 v21, v12

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_d
    move/from16 v21, v12

    .line 244
    .line 245
    iput v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :goto_3
    :try_start_2
    iget-wide v12, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    .line 250
    const-wide/16 v17, 0x0

    .line 251
    .line 252
    cmp-long v22, v12, v17

    .line 253
    .line 254
    if-nez v22, :cond_e

    .line 255
    .line 256
    const-wide/32 v8, 0x83d60

    .line 257
    .line 258
    .line 259
    sub-long v8, v10, v8

    .line 260
    .line 261
    :try_start_3
    iput-wide v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 262
    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_e
    sub-long v12, v10, v12

    .line 266
    .line 267
    const-wide/32 v22, 0x927c0

    .line 268
    .line 269
    .line 270
    cmp-long v12, v12, v22

    .line 271
    .line 272
    if-lez v12, :cond_13

    .line 273
    .line 274
    iput-wide v10, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 275
    .line 276
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    if-eqz v12, :cond_f

    .line 281
    .line 282
    new-instance v12, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v8, " pkg:"

    .line 291
    .line 292
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v8, " pid:"

    .line 299
    .line 300
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v8, " curAdj:"

    .line 307
    .line 308
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_f
    iget-object v8, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    int-to-long v12, v8

    .line 328
    const-wide/16 v22, 0x14

    .line 329
    .line 330
    cmp-long v8, v12, v22

    .line 331
    .line 332
    if-gez v8, :cond_10

    .line 333
    .line 334
    iget-object v8, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    iget-object v1, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 340
    .line 341
    const/4 v8, 0x0

    .line 342
    invoke-virtual {v1, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_10
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_13

    .line 355
    .line 356
    const-string v1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_MSG"

    .line 357
    .line 358
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_11
    :goto_4
    move/from16 v21, v12

    .line 363
    .line 364
    move v15, v13

    .line 365
    const-wide/16 v17, 0x0

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :catch_3
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string/jumbo v8, "failed to tryNandswapNonActivityApp "

    .line 371
    .line 372
    .line 373
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v8, " "

    .line 380
    .line 381
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_12
    move-object/from16 v19, v8

    .line 396
    .line 397
    move/from16 v21, v12

    .line 398
    .line 399
    move-object/from16 v20, v15

    .line 400
    .line 401
    const-wide/16 v17, 0x0

    .line 402
    .line 403
    move v15, v13

    .line 404
    :cond_13
    :goto_6
    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 405
    .line 406
    if-lez v1, :cond_17

    .line 407
    .line 408
    const/16 v1, 0x2bc

    .line 409
    .line 410
    if-ne v2, v1, :cond_15

    .line 411
    .line 412
    const/16 v1, 0x352

    .line 413
    .line 414
    if-lt v7, v1, :cond_15

    .line 415
    .line 416
    const/16 v1, 0x3e7

    .line 417
    .line 418
    if-gt v7, v1, :cond_15

    .line 419
    .line 420
    if-eqz v15, :cond_15

    .line 421
    .line 422
    :try_start_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_14

    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_14
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 430
    .line 431
    invoke-direct {v1, v0, v6, v3, v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(ILjava/lang/String;II)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 435
    .line 436
    const/4 v6, 0x0

    .line 437
    const/4 v8, 0x6

    .line 438
    invoke-virtual {v0, v8, v6, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :catch_4
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    .line 449
    .line 450
    :cond_15
    :goto_7
    const/16 v1, 0xc8

    .line 451
    .line 452
    if-gt v2, v1, :cond_16

    .line 453
    .line 454
    const/4 v2, 0x5

    .line 455
    if-le v4, v2, :cond_17

    .line 456
    .line 457
    :goto_8
    const/16 v4, 0x64

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_16
    const/4 v2, 0x5

    .line 461
    goto :goto_8

    .line 462
    :goto_9
    if-lt v7, v4, :cond_17

    .line 463
    .line 464
    if-ge v7, v1, :cond_17

    .line 465
    .line 466
    move/from16 v1, v21

    .line 467
    .line 468
    if-ne v1, v2, :cond_17

    .line 469
    .line 470
    invoke-virtual {v5, v3}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    .line 471
    .line 472
    .line 473
    :cond_17
    :goto_a
    move-object/from16 v1, p0

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_18
    :goto_b
    move-object/from16 v19, v8

    .line 477
    .line 478
    move-object/from16 v20, v15

    .line 479
    .line 480
    const-wide/16 v17, 0x0

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :goto_c
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 484
    .line 485
    if-eqz v0, :cond_1f

    .line 486
    .line 487
    move-object/from16 v9, p1

    .line 488
    .line 489
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 490
    .line 491
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 492
    .line 493
    move-object/from16 v12, v20

    .line 494
    .line 495
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 496
    .line 497
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 498
    .line 499
    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 500
    .line 501
    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 502
    .line 503
    iget-boolean v7, v12, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 504
    .line 505
    const-string v8, "GMR"

    .line 506
    .line 507
    const-string v13, "bg : "

    .line 508
    .line 509
    const-string v14, "bg_async : "

    .line 510
    .line 511
    const-string/jumbo v15, "fg : "

    .line 512
    .line 513
    .line 514
    const-string/jumbo v10, "fg_async : "

    .line 515
    .line 516
    .line 517
    :try_start_5
    sget-boolean v11, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 518
    .line 519
    if-eqz v11, :cond_20

    .line 520
    .line 521
    iget-object v11, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 522
    .line 523
    if-nez v11, :cond_19

    .line 524
    .line 525
    goto/16 :goto_11

    .line 526
    .line 527
    :cond_19
    if-gtz v2, :cond_1a

    .line 528
    .line 529
    goto/16 :goto_11

    .line 530
    .line 531
    :cond_1a
    if-eq v4, v5, :cond_20

    .line 532
    .line 533
    const-string v11, " "

    .line 534
    .line 535
    const/16 v9, 0x352

    .line 536
    .line 537
    if-lt v5, v9, :cond_1c

    .line 538
    .line 539
    const/16 v9, 0x3e7

    .line 540
    .line 541
    if-gt v5, v9, :cond_1c

    .line 542
    .line 543
    if-nez v4, :cond_1c

    .line 544
    .line 545
    if-eqz v7, :cond_1c

    .line 546
    .line 547
    :try_start_6
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-eqz v7, :cond_1b

    .line 556
    .line 557
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    if-eqz v7, :cond_1b

    .line 566
    .line 567
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 568
    .line 569
    if-eqz v7, :cond_1b

    .line 570
    .line 571
    if-eqz v3, :cond_1b

    .line 572
    .line 573
    const/4 v9, 0x1

    .line 574
    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    goto :goto_d

    .line 578
    :catch_5
    move-exception v0

    .line 579
    goto/16 :goto_10

    .line 580
    .line 581
    :cond_1b
    :goto_d
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 582
    .line 583
    .line 584
    move-result-object v7

    .line 585
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    if-eqz v7, :cond_1c

    .line 590
    .line 591
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 596
    .line 597
    .line 598
    move-result v7

    .line 599
    if-eqz v7, :cond_1d

    .line 600
    .line 601
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 602
    .line 603
    if-eqz v7, :cond_1d

    .line 604
    .line 605
    new-instance v7, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 627
    .line 628
    iget-object v7, v7, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 629
    .line 630
    iget-object v7, v7, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 631
    .line 632
    const/4 v9, 0x0

    .line 633
    const/4 v10, 0x1

    .line 634
    invoke-virtual {v7, v10, v2, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 635
    .line 636
    .line 637
    move-result-object v15

    .line 638
    invoke-virtual {v7, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    .line 640
    .line 641
    :cond_1c
    :goto_e
    const/16 v7, 0x2bc

    .line 642
    .line 643
    goto :goto_f

    .line 644
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    iget-object v7, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 666
    .line 667
    invoke-virtual {v7, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapInImpl(I)I

    .line 668
    .line 669
    .line 670
    goto :goto_e

    .line 671
    :goto_f
    if-ne v5, v7, :cond_20

    .line 672
    .line 673
    const/16 v5, 0x352

    .line 674
    .line 675
    if-lt v4, v5, :cond_20

    .line 676
    .line 677
    const/16 v5, 0x3e7

    .line 678
    .line 679
    if-gt v4, v5, :cond_20

    .line 680
    .line 681
    if-eqz v6, :cond_20

    .line 682
    .line 683
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    if-eqz v4, :cond_20

    .line 692
    .line 693
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-eqz v4, :cond_1e

    .line 702
    .line 703
    iget-object v4, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 704
    .line 705
    if-eqz v4, :cond_1e

    .line 706
    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 729
    .line 730
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 731
    .line 732
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 733
    .line 734
    const/4 v4, 0x0

    .line 735
    const/4 v5, 0x1

    .line 736
    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    const-wide/16 v3, 0x7d0

    .line 741
    .line 742
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    .line 744
    .line 745
    goto :goto_11

    .line 746
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 747
    .line 748
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 768
    .line 769
    invoke-virtual {v0, v2, v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 770
    .line 771
    .line 772
    goto :goto_11

    .line 773
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    const-string v3, "Failed to handle onOomAdjChanged: "

    .line 776
    .line 777
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    goto :goto_11

    .line 795
    :cond_1f
    move-object/from16 v12, v20

    .line 796
    .line 797
    :cond_20
    :goto_11
    iget v9, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 798
    .line 799
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 800
    .line 801
    move-object/from16 v10, p1

    .line 802
    .line 803
    invoke-virtual {v0, v10}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 808
    .line 809
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 810
    .line 811
    if-eq v2, v3, :cond_2a

    .line 812
    .line 813
    if-eqz p8, :cond_21

    .line 814
    .line 815
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 816
    .line 817
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    .line 818
    .line 819
    if-eqz v3, :cond_21

    .line 820
    .line 821
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 822
    .line 823
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    goto :goto_12

    .line 827
    :cond_21
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 828
    .line 829
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 830
    .line 831
    invoke-static {v3, v4, v2, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 832
    .line 833
    .line 834
    :goto_12
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 835
    .line 836
    if-eqz v0, :cond_27

    .line 837
    .line 838
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 839
    .line 840
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 841
    .line 842
    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 843
    .line 844
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 845
    .line 846
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 847
    .line 848
    iget v8, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 849
    .line 850
    iget v11, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 851
    .line 852
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    if-nez v2, :cond_22

    .line 857
    .line 858
    goto :goto_14

    .line 859
    :cond_22
    if-eqz v8, :cond_23

    .line 860
    .line 861
    const/16 v2, 0xfa

    .line 862
    .line 863
    if-le v8, v2, :cond_24

    .line 864
    .line 865
    :cond_23
    invoke-static {v11}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    if-nez v2, :cond_26

    .line 870
    .line 871
    :cond_24
    invoke-static {v8}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    if-eqz v2, :cond_25

    .line 876
    .line 877
    if-eqz v11, :cond_26

    .line 878
    .line 879
    const/16 v2, 0xfa

    .line 880
    .line 881
    if-le v11, v2, :cond_25

    .line 882
    .line 883
    goto :goto_13

    .line 884
    :cond_25
    if-eqz v11, :cond_26

    .line 885
    .line 886
    if-nez v8, :cond_27

    .line 887
    .line 888
    :cond_26
    :goto_13
    iget-object v13, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 889
    .line 890
    new-instance v14, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 891
    .line 892
    move-object v2, v14

    .line 893
    move v5, v11

    .line 894
    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const/4 v2, 0x1

    .line 898
    invoke-virtual {v13, v2, v8, v11, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 903
    .line 904
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 905
    .line 906
    .line 907
    goto :goto_14

    .line 908
    :catch_6
    move-exception v0

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    const-string v3, "Handler onOomAdjChanged catch exception "

    .line 912
    .line 913
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    const-string v3, "HeimdallAlwaysRunningMonitor"

    .line 928
    .line 929
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    .line 934
    .line 935
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 936
    .line 937
    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 938
    .line 939
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 940
    .line 941
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 942
    .line 943
    if-ne v0, v2, :cond_28

    .line 944
    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    const-string v2, "Set "

    .line 948
    .line 949
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 953
    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    const-string v2, " "

    .line 958
    .line 959
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 963
    .line 964
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    const-string v2, " adj "

    .line 968
    .line 969
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 973
    .line 974
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    const-string v2, ": "

    .line 978
    .line 979
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    iget-object v2, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 983
    .line 984
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-virtual {v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    :cond_28
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 995
    .line 996
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 997
    .line 998
    move-object/from16 v8, v19

    .line 999
    .line 1000
    const/4 v3, 0x1

    .line 1001
    if-eqz v19, :cond_29

    .line 1002
    .line 1003
    iput-boolean v3, v8, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 1004
    .line 1005
    :cond_29
    const/16 v0, -0x2710

    .line 1006
    .line 1007
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 1008
    .line 1009
    goto :goto_15

    .line 1010
    :cond_2a
    move-object/from16 v8, v19

    .line 1011
    .line 1012
    const/4 v3, 0x1

    .line 1013
    const/16 v4, 0xb4

    .line 1014
    .line 1015
    if-lt v0, v4, :cond_2b

    .line 1016
    .line 1017
    const/16 v4, 0xc8

    .line 1018
    .line 1019
    if-ge v0, v4, :cond_2b

    .line 1020
    .line 1021
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1022
    .line 1023
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1024
    .line 1025
    invoke-static {v4, v5, v2, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 1026
    .line 1027
    .line 1028
    :cond_2b
    :goto_15
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 1029
    .line 1030
    const/4 v7, 0x0

    .line 1031
    if-eqz v0, :cond_2c

    .line 1032
    .line 1033
    iput-boolean v7, v10, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 1034
    .line 1035
    :cond_2c
    iget v0, v12, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 1036
    .line 1037
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 1038
    .line 1039
    const/16 v11, 0xa

    .line 1040
    .line 1041
    if-eqz v2, :cond_2d

    .line 1042
    .line 1043
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 1044
    .line 1045
    iget v2, v2, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 1046
    .line 1047
    if-nez v2, :cond_2d

    .line 1048
    .line 1049
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1050
    .line 1051
    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    if-eqz v2, :cond_2d

    .line 1056
    .line 1057
    iget-boolean v2, v12, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 1058
    .line 1059
    if-nez v2, :cond_2d

    .line 1060
    .line 1061
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 1062
    .line 1063
    if-nez v2, :cond_2d

    .line 1064
    .line 1065
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    .line 1066
    .line 1067
    if-nez v2, :cond_2d

    .line 1068
    .line 1069
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 1070
    .line 1071
    const/16 v4, 0x16

    .line 1072
    .line 1073
    const/4 v0, 0x1

    .line 1074
    const/16 v5, 0xa

    .line 1075
    .line 1076
    const/4 v13, 0x1

    .line 1077
    move-object/from16 v2, p1

    .line 1078
    .line 1079
    move v15, v3

    .line 1080
    const/16 v14, 0xe

    .line 1081
    .line 1082
    move v3, v5

    .line 1083
    move-object v5, v6

    .line 1084
    const/4 v14, 0x2

    .line 1085
    move v14, v7

    .line 1086
    move v7, v0

    .line 1087
    move-object/from16 v24, v8

    .line 1088
    .line 1089
    move v8, v13

    .line 1090
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1091
    .line 1092
    .line 1093
    move/from16 v4, p7

    .line 1094
    .line 1095
    move v0, v14

    .line 1096
    goto/16 :goto_1b

    .line 1097
    .line 1098
    :cond_2d
    move v15, v3

    .line 1099
    move v14, v7

    .line 1100
    move-object/from16 v24, v8

    .line 1101
    .line 1102
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 1103
    .line 1104
    const/16 v3, 0x1b

    .line 1105
    .line 1106
    if-ne v2, v0, :cond_2f

    .line 1107
    .line 1108
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 1109
    .line 1110
    if-eqz v4, :cond_2e

    .line 1111
    .line 1112
    move/from16 v4, p7

    .line 1113
    .line 1114
    if-ne v4, v3, :cond_3a

    .line 1115
    .line 1116
    goto :goto_16

    .line 1117
    :cond_2e
    move/from16 v4, p7

    .line 1118
    .line 1119
    goto/16 :goto_1a

    .line 1120
    .line 1121
    :cond_2f
    move/from16 v4, p7

    .line 1122
    .line 1123
    :goto_16
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 1124
    .line 1125
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1126
    .line 1127
    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1128
    .line 1129
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1130
    .line 1131
    if-ne v5, v6, :cond_30

    .line 1132
    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    const-string v6, "Setting sched group of "

    .line 1136
    .line 1137
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1141
    .line 1142
    const-string v7, " to "

    .line 1143
    .line 1144
    const-string v8, ": "

    .line 1145
    .line 1146
    invoke-static {v0, v6, v7, v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v6, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1150
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v5

    .line 1158
    invoke-virtual {v1, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    :cond_30
    const/4 v5, -0x2

    .line 1162
    if-eq v0, v5, :cond_31

    .line 1163
    .line 1164
    if-eqz v0, :cond_36

    .line 1165
    .line 1166
    if-eq v0, v15, :cond_35

    .line 1167
    .line 1168
    const/4 v5, 0x3

    .line 1169
    if-eq v0, v5, :cond_33

    .line 1170
    .line 1171
    const/4 v5, 0x4

    .line 1172
    if-eq v0, v5, :cond_33

    .line 1173
    .line 1174
    const/4 v5, 0x5

    .line 1175
    if-eq v0, v5, :cond_31

    .line 1176
    .line 1177
    const/4 v3, 0x6

    .line 1178
    if-eq v0, v3, :cond_32

    .line 1179
    .line 1180
    :cond_31
    :goto_17
    const/4 v7, -0x1

    .line 1181
    goto :goto_18

    .line 1182
    :cond_32
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 1183
    .line 1184
    if-eqz v3, :cond_31

    .line 1185
    .line 1186
    move v7, v11

    .line 1187
    goto :goto_18

    .line 1188
    :cond_33
    const/4 v5, 0x5

    .line 1189
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 1190
    .line 1191
    if-eqz v6, :cond_34

    .line 1192
    .line 1193
    if-ne v4, v3, :cond_34

    .line 1194
    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    const-string v5, "Top app "

    .line 1198
    .line 1199
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1203
    .line 1204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    const-string v5, " change to THREAD_GROUP_DEFAULT(BLOCK)"

    .line 1208
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    const-wide/16 v5, 0x40

    .line 1217
    .line 1218
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    const-string v3, "OomAdjuster"

    .line 1222
    .line 1223
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    const-string v13, "Top app "

    .line 1226
    .line 1227
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1231
    .line 1232
    const-string v7, " should not change TOP sched group"

    .line 1233
    .line 1234
    invoke-static {v8, v13, v7, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1238
    .line 1239
    .line 1240
    goto :goto_17

    .line 1241
    :cond_34
    move v7, v5

    .line 1242
    goto :goto_18

    .line 1243
    :cond_35
    move/from16 v7, v16

    .line 1244
    .line 1245
    goto :goto_18

    .line 1246
    :cond_36
    move v7, v14

    .line 1247
    :goto_18
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 1248
    .line 1249
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1250
    .line 1251
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1252
    .line 1253
    invoke-virtual {v3, v14, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v5

    .line 1257
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    .line 1259
    .line 1260
    :try_start_8
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    .line 1261
    .line 1262
    const/4 v5, 0x3

    .line 1263
    if-ne v0, v5, :cond_38

    .line 1264
    .line 1265
    if-eq v2, v5, :cond_3a

    .line 1266
    .line 1267
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1268
    .line 1269
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    if-eqz v0, :cond_37

    .line 1277
    .line 1278
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1279
    .line 1280
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    iput v0, v12, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 1285
    .line 1286
    invoke-static {v10, v15}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1287
    .line 1288
    .line 1289
    goto :goto_1a

    .line 1290
    :cond_37
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1291
    .line 1292
    const/16 v2, -0xa

    .line 1293
    .line 1294
    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1295
    .line 1296
    .line 1297
    if-eqz v3, :cond_3a

    .line 1298
    .line 1299
    :try_start_9
    invoke-static {v3, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1300
    .line 1301
    .line 1302
    goto :goto_1a

    .line 1303
    :cond_38
    if-ne v2, v5, :cond_3a

    .line 1304
    .line 1305
    if-eq v0, v5, :cond_3a

    .line 1306
    .line 1307
    :try_start_a
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1308
    .line 1309
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    if-eqz v0, :cond_39

    .line 1317
    .line 1318
    invoke-static {v10, v14}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1319
    .line 1320
    .line 1321
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1322
    .line 1323
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 1324
    .line 1325
    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_19

    .line 1329
    :cond_39
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1330
    .line 1331
    invoke-static {v0, v14}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1332
    .line 1333
    .line 1334
    :goto_19
    if-eqz v3, :cond_3a

    .line 1335
    .line 1336
    const/4 v0, -0x4

    .line 1337
    invoke-static {v3, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1338
    .line 1339
    .line 1340
    :catch_7
    :cond_3a
    :goto_1a
    move v0, v15

    .line 1341
    :goto_1b
    iget-boolean v2, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1342
    .line 1343
    iget-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 1344
    .line 1345
    if-eq v2, v3, :cond_3b

    .line 1346
    .line 1347
    iput-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1348
    .line 1349
    move v8, v15

    .line 1350
    goto :goto_1c

    .line 1351
    :cond_3b
    move v8, v14

    .line 1352
    :goto_1c
    invoke-virtual {v1, v10, v4, v14}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 1353
    .line 1354
    .line 1355
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 1356
    .line 1357
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1358
    .line 1359
    if-eq v2, v3, :cond_3c

    .line 1360
    .line 1361
    invoke-virtual {v12, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 1362
    .line 1363
    .line 1364
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 1365
    .line 1366
    if-eqz v2, :cond_3c

    .line 1367
    .line 1368
    :try_start_b
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 1369
    .line 1370
    invoke-interface {v2, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 1371
    .line 1372
    .line 1373
    :catch_8
    :cond_3c
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1374
    .line 1375
    const/16 v3, 0x14

    .line 1376
    .line 1377
    if-eq v2, v3, :cond_3d

    .line 1378
    .line 1379
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1380
    .line 1381
    sget-object v4, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1382
    .line 1383
    aget v3, v4, v3

    .line 1384
    .line 1385
    aget v2, v4, v2

    .line 1386
    .line 1387
    if-eq v3, v2, :cond_3e

    .line 1388
    .line 1389
    :cond_3d
    move-wide/from16 v5, p3

    .line 1390
    .line 1391
    goto :goto_1d

    .line 1392
    :cond_3e
    move-wide/from16 v5, p3

    .line 1393
    .line 1394
    move v7, v14

    .line 1395
    goto :goto_1e

    .line 1396
    :goto_1d
    iput-wide v5, v12, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 1397
    .line 1398
    move v7, v15

    .line 1399
    :goto_1e
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1400
    .line 1401
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1402
    .line 1403
    iget-object v13, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 1404
    .line 1405
    monitor-enter v13

    .line 1406
    :try_start_c
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1407
    .line 1408
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1409
    .line 1410
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1411
    .line 1412
    .line 1413
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1414
    .line 1415
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 1416
    .line 1417
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 1418
    .line 1419
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 1420
    .line 1421
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1422
    .line 1423
    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 1424
    .line 1425
    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 1426
    .line 1427
    iput-wide v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 1428
    .line 1429
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1430
    .line 1431
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1432
    .line 1433
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1434
    .line 1435
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1436
    .line 1437
    move-wide v14, v5

    .line 1438
    move-wide/from16 v5, p3

    .line 1439
    .line 1440
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 1441
    .line 1442
    .line 1443
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1444
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1445
    .line 1446
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1447
    .line 1448
    if-eq v2, v3, :cond_47

    .line 1449
    .line 1450
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1451
    .line 1452
    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1453
    .line 1454
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1455
    .line 1456
    if-ne v3, v4, :cond_3f

    .line 1457
    .line 1458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    const-string v4, "Proc state change of "

    .line 1461
    .line 1462
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    const-string v4, " to "

    .line 1471
    .line 1472
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1476
    .line 1477
    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 1478
    .line 1479
    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v4

    .line 1483
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    .line 1485
    .line 1486
    const-string v4, " ("

    .line 1487
    .line 1488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    iget v4, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1492
    .line 1493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1494
    .line 1495
    .line 1496
    const-string v4, "): "

    .line 1497
    .line 1498
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    iget-object v4, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1502
    .line 1503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v3

    .line 1510
    invoke-virtual {v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    :cond_3f
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1514
    .line 1515
    if-ge v3, v11, :cond_40

    .line 1516
    .line 1517
    const/4 v7, 0x1

    .line 1518
    goto :goto_1f

    .line 1519
    :cond_40
    const/4 v7, 0x0

    .line 1520
    :goto_1f
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1521
    .line 1522
    if-ge v3, v11, :cond_41

    .line 1523
    .line 1524
    const/4 v3, 0x1

    .line 1525
    goto :goto_20

    .line 1526
    :cond_41
    const/4 v3, 0x0

    .line 1527
    :goto_20
    if-eqz v7, :cond_42

    .line 1528
    .line 1529
    if-nez v3, :cond_42

    .line 1530
    .line 1531
    iput-wide v14, v12, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 1532
    .line 1533
    iget-object v3, v12, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1534
    .line 1535
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1536
    .line 1537
    iput-wide v14, v3, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 1538
    .line 1539
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1540
    .line 1541
    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1542
    .line 1543
    const-wide/16 v4, 0x0

    .line 1544
    .line 1545
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1546
    .line 1547
    .line 1548
    :cond_42
    move-wide/from16 v3, p5

    .line 1549
    .line 1550
    invoke-virtual {v1, v10, v3, v4}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1551
    .line 1552
    .line 1553
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1554
    .line 1555
    const/4 v6, 0x2

    .line 1556
    if-gt v5, v6, :cond_43

    .line 1557
    .line 1558
    iget v7, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1559
    .line 1560
    if-le v7, v6, :cond_43

    .line 1561
    .line 1562
    iput-wide v14, v12, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 1563
    .line 1564
    :cond_43
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1565
    .line 1566
    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v5

    .line 1570
    if-eqz v5, :cond_44

    .line 1571
    .line 1572
    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v5

    .line 1576
    if-nez v5, :cond_44

    .line 1577
    .line 1578
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 1579
    .line 1580
    const/4 v7, 0x1

    .line 1581
    add-int/2addr v5, v7

    .line 1582
    iput v5, v12, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 1583
    .line 1584
    :cond_44
    iput v6, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1585
    .line 1586
    const/16 v5, 0xe

    .line 1587
    .line 1588
    if-lt v6, v5, :cond_45

    .line 1589
    .line 1590
    const/4 v5, 0x0

    .line 1591
    iput-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 1592
    .line 1593
    :cond_45
    if-nez p2, :cond_46

    .line 1594
    .line 1595
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1596
    .line 1597
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1598
    .line 1599
    iget-object v5, v5, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1600
    .line 1601
    monitor-enter v5

    .line 1602
    :try_start_d
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1603
    .line 1604
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1605
    .line 1606
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 1607
    .line 1608
    .line 1609
    move-result v6

    .line 1610
    invoke-static {v6, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(ILcom/android/server/am/ProcessRecord;)V

    .line 1611
    .line 1612
    .line 1613
    monitor-exit v5

    .line 1614
    goto :goto_23

    .line 1615
    :catchall_0
    move-exception v0

    .line 1616
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1617
    throw v0

    .line 1618
    :cond_46
    const/4 v6, 0x1

    .line 1619
    iput-boolean v6, v12, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 1620
    .line 1621
    goto :goto_23

    .line 1622
    :cond_47
    move-wide/from16 v3, p5

    .line 1623
    .line 1624
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 1625
    .line 1626
    if-eqz v5, :cond_49

    .line 1627
    .line 1628
    const/4 v5, 0x2

    .line 1629
    invoke-virtual {v12, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v5

    .line 1633
    if-eqz v5, :cond_48

    .line 1634
    .line 1635
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1636
    .line 1637
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 1638
    .line 1639
    goto :goto_21

    .line 1640
    :cond_48
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1641
    .line 1642
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 1643
    .line 1644
    :goto_21
    iget-wide v13, v12, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 1645
    .line 1646
    sub-long v13, v3, v13

    .line 1647
    .line 1648
    cmp-long v5, v13, v5

    .line 1649
    .line 1650
    if-lez v5, :cond_4b

    .line 1651
    .line 1652
    invoke-virtual {v1, v10, v3, v4}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1653
    .line 1654
    .line 1655
    goto :goto_23

    .line 1656
    :cond_49
    const/4 v5, 0x2

    .line 1657
    invoke-virtual {v12, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v5

    .line 1661
    if-eqz v5, :cond_4a

    .line 1662
    .line 1663
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1664
    .line 1665
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 1666
    .line 1667
    goto :goto_22

    .line 1668
    :cond_4a
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1669
    .line 1670
    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 1671
    .line 1672
    :goto_22
    iget-wide v13, v12, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 1673
    .line 1674
    sub-long v13, v3, v13

    .line 1675
    .line 1676
    cmp-long v5, v13, v5

    .line 1677
    .line 1678
    if-lez v5, :cond_4b

    .line 1679
    .line 1680
    invoke-virtual {v1, v10, v3, v4}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1681
    .line 1682
    .line 1683
    :cond_4b
    :goto_23
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1684
    .line 1685
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 1686
    .line 1687
    if-eq v5, v6, :cond_4c

    .line 1688
    .line 1689
    iput v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 1690
    .line 1691
    :cond_4c
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 1692
    .line 1693
    iget-boolean v6, v12, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1694
    .line 1695
    if-eq v5, v6, :cond_4d

    .line 1696
    .line 1697
    iput-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1698
    .line 1699
    if-nez v5, :cond_4d

    .line 1700
    .line 1701
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 1702
    .line 1703
    if-eqz v5, :cond_4d

    .line 1704
    .line 1705
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1706
    .line 1707
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1708
    .line 1709
    new-instance v6, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    .line 1710
    .line 1711
    invoke-direct {v6, v1, v10}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1715
    .line 1716
    .line 1717
    :cond_4d
    if-eqz v8, :cond_4e

    .line 1718
    .line 1719
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1720
    .line 1721
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1722
    .line 1723
    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1724
    .line 1725
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1726
    .line 1727
    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v5

    .line 1731
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 1732
    .line 1733
    or-int/2addr v6, v8

    .line 1734
    iput v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 1735
    .line 1736
    iget-boolean v6, v12, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 1737
    .line 1738
    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 1739
    .line 1740
    iget-boolean v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->triggered:Z

    .line 1741
    .line 1742
    if-eqz v6, :cond_4e

    .line 1743
    .line 1744
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1745
    .line 1746
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1747
    .line 1748
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1749
    .line 1750
    const/16 v7, 0x1f

    .line 1751
    .line 1752
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v6

    .line 1756
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1757
    .line 1758
    .line 1759
    const/4 v6, 0x0

    .line 1760
    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->triggered:Z

    .line 1761
    .line 1762
    :cond_4e
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 1763
    .line 1764
    .line 1765
    move-result v5

    .line 1766
    if-eqz v5, :cond_52

    .line 1767
    .line 1768
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 1769
    .line 1770
    if-nez v5, :cond_52

    .line 1771
    .line 1772
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    .line 1773
    .line 1774
    if-eqz v5, :cond_4f

    .line 1775
    .line 1776
    iget-boolean v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    .line 1777
    .line 1778
    if-eqz v5, :cond_52

    .line 1779
    .line 1780
    :cond_4f
    iput-wide v3, v12, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    .line 1781
    .line 1782
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1783
    .line 1784
    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    .line 1785
    .line 1786
    const/16 v5, 0x3a

    .line 1787
    .line 1788
    if-nez v4, :cond_50

    .line 1789
    .line 1790
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1791
    .line 1792
    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1793
    .line 1794
    .line 1795
    move-result v3

    .line 1796
    if-nez v3, :cond_52

    .line 1797
    .line 1798
    :cond_50
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1799
    .line 1800
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1801
    .line 1802
    invoke-virtual {v3, v4}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v3

    .line 1806
    if-eqz v3, :cond_51

    .line 1807
    .line 1808
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1809
    .line 1810
    move-object/from16 v4, v24

    .line 1811
    .line 1812
    iget v4, v4, Lcom/android/server/am/UidRecord;->mUid:I

    .line 1813
    .line 1814
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1815
    .line 1816
    iget-object v7, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1817
    .line 1818
    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1819
    .line 1820
    iget-object v3, v3, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 1821
    .line 1822
    iget v3, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1823
    .line 1824
    long-to-int v7, v7

    .line 1825
    const-string v8, ""

    .line 1826
    .line 1827
    const/4 v11, 0x2

    .line 1828
    move/from16 p2, v11

    .line 1829
    .line 1830
    move/from16 p3, v4

    .line 1831
    .line 1832
    move/from16 p4, v6

    .line 1833
    .line 1834
    move/from16 p5, v3

    .line 1835
    .line 1836
    move/from16 p6, v7

    .line 1837
    .line 1838
    move-object/from16 p7, v8

    .line 1839
    .line 1840
    invoke-static/range {p2 .. p7}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 1841
    .line 1842
    .line 1843
    :cond_51
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1844
    .line 1845
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1846
    .line 1847
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1848
    .line 1849
    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 1850
    .line 1851
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1852
    .line 1853
    .line 1854
    :cond_52
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 1855
    .line 1856
    .line 1857
    move-result v3

    .line 1858
    iput-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    .line 1859
    .line 1860
    iget-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 1861
    .line 1862
    iput-boolean v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    .line 1863
    .line 1864
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1865
    .line 1866
    if-ne v2, v3, :cond_53

    .line 1867
    .line 1868
    iget v3, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 1869
    .line 1870
    if-eq v9, v3, :cond_55

    .line 1871
    .line 1872
    :cond_53
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1873
    .line 1874
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1875
    .line 1876
    invoke-virtual {v3, v4}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v3

    .line 1880
    if-eqz v3, :cond_55

    .line 1881
    .line 1882
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 1883
    .line 1884
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1885
    .line 1886
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1887
    .line 1888
    iget v5, v12, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 1889
    .line 1890
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 1891
    .line 1892
    iget-object v7, v1, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 1893
    .line 1894
    iget v8, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1895
    .line 1896
    iget v7, v7, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 1897
    .line 1898
    invoke-static {v7}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v7

    .line 1902
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v3

    .line 1906
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v4

    .line 1910
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v8

    .line 1914
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v5

    .line 1918
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v2

    .line 1922
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v6

    .line 1926
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v9

    .line 1930
    move-object/from16 p0, v3

    .line 1931
    .line 1932
    move-object/from16 p1, v4

    .line 1933
    .line 1934
    move-object/from16 p2, v8

    .line 1935
    .line 1936
    move-object/from16 p3, v5

    .line 1937
    .line 1938
    move-object/from16 p4, v2

    .line 1939
    .line 1940
    move-object/from16 p5, v6

    .line 1941
    .line 1942
    move-object/from16 p6, v9

    .line 1943
    .line 1944
    move-object/from16 p7, v7

    .line 1945
    .line 1946
    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v2

    .line 1950
    const/16 v3, 0x75a0

    .line 1951
    .line 1952
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1953
    .line 1954
    .line 1955
    const-string/jumbo v2, "procStateChanged"

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v1, v2}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1962
    .line 1963
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    .line 1964
    .line 1965
    if-nez v1, :cond_54

    .line 1966
    .line 1967
    goto :goto_24

    .line 1968
    :cond_54
    int-to-long v1, v1

    .line 1969
    :try_start_e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_9

    .line 1970
    .line 1971
    .line 1972
    :catch_9
    :cond_55
    :goto_24
    return v0

    .line 1973
    :catchall_1
    move-exception v0

    .line 1974
    :try_start_f
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1975
    throw v0
.end method

.method public final assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    .line 12
    .line 13
    const/16 v5, 0x38e

    .line 14
    .line 15
    const/16 v6, 0x3e9

    .line 16
    .line 17
    const/16 v7, 0x384

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    sub-int/2addr v2, v9

    .line 33
    :goto_0
    if-ltz v2, :cond_15

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 42
    .line 43
    iget-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 44
    .line 45
    if-nez v9, :cond_2

    .line 46
    .line 47
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    iget v9, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 52
    .line 53
    if-lt v9, v6, :cond_2

    .line 54
    .line 55
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    .line 59
    iget-boolean v9, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 60
    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    move v9, v7

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget v9, v4, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 66
    .line 67
    if-lt v9, v7, :cond_1

    .line 68
    .line 69
    iget-wide v12, v4, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 70
    .line 71
    iget-wide v14, v3, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    .line 72
    .line 73
    add-long/2addr v12, v14

    .line 74
    cmp-long v9, v12, v10

    .line 75
    .line 76
    if-gez v9, :cond_1

    .line 77
    .line 78
    const/16 v9, 0x3b6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move v9, v5

    .line 82
    :goto_1
    invoke-virtual {v4, v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 86
    .line 87
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget v4, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 98
    .line 99
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 100
    .line 101
    sub-int/2addr v3, v4

    .line 102
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 103
    .line 104
    sub-int v4, v2, v4

    .line 105
    .line 106
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 107
    .line 108
    sub-int/2addr v4, v10

    .line 109
    if-le v4, v3, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move v3, v4

    .line 113
    :goto_2
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 114
    .line 115
    if-lez v10, :cond_5

    .line 116
    .line 117
    add-int/2addr v10, v4

    .line 118
    sub-int/2addr v10, v9

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move v10, v9

    .line 121
    :goto_3
    div-int/2addr v10, v4

    .line 122
    if-ge v10, v9, :cond_6

    .line 123
    .line 124
    move v10, v9

    .line 125
    :cond_6
    add-int/2addr v3, v4

    .line 126
    sub-int/2addr v3, v9

    .line 127
    div-int/2addr v3, v4

    .line 128
    if-ge v3, v9, :cond_7

    .line 129
    .line 130
    move v3, v9

    .line 131
    :cond_7
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 136
    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    :cond_8
    sub-int/2addr v2, v9

    .line 147
    const/4 v4, -0x1

    .line 148
    const/16 v11, 0x389

    .line 149
    .line 150
    const/16 v12, 0x393

    .line 151
    .line 152
    move v9, v8

    .line 153
    move v14, v9

    .line 154
    move v15, v14

    .line 155
    move/from16 v16, v15

    .line 156
    .line 157
    move v13, v12

    .line 158
    move v12, v11

    .line 159
    move v11, v7

    .line 160
    move v7, v5

    .line 161
    move v5, v4

    .line 162
    :goto_4
    if-ltz v2, :cond_15

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v17

    .line 168
    move-object/from16 v8, v17

    .line 169
    .line 170
    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 171
    .line 172
    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 173
    .line 174
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 175
    .line 176
    if-nez v1, :cond_14

    .line 177
    .line 178
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 179
    .line 180
    if-eqz v1, :cond_14

    .line 181
    .line 182
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 183
    .line 184
    move/from16 p0, v2

    .line 185
    .line 186
    const/16 v2, 0x3e9

    .line 187
    .line 188
    if-lt v1, v2, :cond_b

    .line 189
    .line 190
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 191
    .line 192
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 193
    .line 194
    packed-switch v1, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    if-eq v12, v13, :cond_a

    .line 198
    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 200
    .line 201
    if-lt v4, v3, :cond_a

    .line 202
    .line 203
    add-int/lit8 v1, v13, 0xa

    .line 204
    .line 205
    const/16 v4, 0x3e7

    .line 206
    .line 207
    move v12, v13

    .line 208
    if-le v1, v4, :cond_9

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    const/16 v13, 0x3e7

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    const/4 v4, 0x0

    .line 216
    move v13, v1

    .line 217
    :cond_a
    const/4 v1, 0x0

    .line 218
    :goto_5
    invoke-virtual {v6, v12, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 226
    .line 227
    .line 228
    :cond_b
    :goto_6
    move/from16 v18, v3

    .line 229
    .line 230
    move/from16 v19, v4

    .line 231
    .line 232
    const/4 v4, 0x0

    .line 233
    goto/16 :goto_b

    .line 234
    .line 235
    :pswitch_0
    iget v1, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 236
    .line 237
    move/from16 v18, v3

    .line 238
    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    iget v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 242
    .line 243
    move/from16 v19, v4

    .line 244
    .line 245
    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 246
    .line 247
    if-ne v14, v4, :cond_e

    .line 248
    .line 249
    if-ne v15, v1, :cond_e

    .line 250
    .line 251
    if-le v3, v9, :cond_d

    .line 252
    .line 253
    if-ge v11, v7, :cond_c

    .line 254
    .line 255
    const/16 v1, 0x3e7

    .line 256
    .line 257
    if-ge v11, v1, :cond_c

    .line 258
    .line 259
    add-int/lit8 v16, v16, 0x1

    .line 260
    .line 261
    :cond_c
    move v9, v3

    .line 262
    :cond_d
    const/4 v1, 0x1

    .line 263
    goto :goto_8

    .line 264
    :cond_e
    move v15, v1

    .line 265
    move v9, v3

    .line 266
    move v14, v4

    .line 267
    :goto_7
    const/4 v1, 0x0

    .line 268
    goto :goto_8

    .line 269
    :cond_f
    move/from16 v19, v4

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :goto_8
    if-nez v1, :cond_12

    .line 273
    .line 274
    if-eq v11, v7, :cond_12

    .line 275
    .line 276
    add-int/lit8 v5, v5, 0x1

    .line 277
    .line 278
    if-lt v5, v10, :cond_11

    .line 279
    .line 280
    add-int/lit8 v1, v7, 0xa

    .line 281
    .line 282
    const/16 v3, 0x3e7

    .line 283
    .line 284
    if-le v1, v3, :cond_10

    .line 285
    .line 286
    move v1, v3

    .line 287
    :cond_10
    const/4 v5, 0x0

    .line 288
    :goto_9
    const/16 v16, 0x0

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_11
    move v1, v7

    .line 292
    move v7, v11

    .line 293
    goto :goto_9

    .line 294
    :cond_12
    move v1, v7

    .line 295
    move v7, v11

    .line 296
    :goto_a
    add-int v3, v7, v16

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 307
    .line 308
    .line 309
    if-eqz v0, :cond_13

    .line 310
    .line 311
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 312
    .line 313
    if-eqz v2, :cond_13

    .line 314
    .line 315
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 316
    .line 317
    iget-object v3, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iget v6, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    .line 324
    .line 325
    if-ge v3, v6, :cond_13

    .line 326
    .line 327
    invoke-static {v8}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_13

    .line 332
    .line 333
    iget-object v2, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :cond_13
    move v11, v7

    .line 339
    move v7, v1

    .line 340
    goto :goto_b

    .line 341
    :cond_14
    move/from16 p0, v2

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :goto_b
    add-int/lit8 v2, p0, -0x1

    .line 345
    .line 346
    move-object/from16 v1, p1

    .line 347
    .line 348
    move v8, v4

    .line 349
    move/from16 v3, v18

    .line 350
    .line 351
    move/from16 v4, v19

    .line 352
    .line 353
    const/16 v6, 0x3e9

    .line 354
    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :cond_15
    return-void

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    const/4 v7, 0x1

    .line 21
    if-ge v6, v4, :cond_0

    .line 22
    .line 23
    move-object/from16 v8, p1

    .line 24
    .line 25
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 32
    .line 33
    iput-boolean v7, v10, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 34
    .line 35
    invoke-virtual {v3, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    :goto_1
    if-eqz v4, :cond_15

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 59
    .line 60
    if-eqz v8, :cond_1

    .line 61
    .line 62
    iget v9, v8, Lcom/android/server/am/UidRecord;->mUid:I

    .line 63
    .line 64
    invoke-virtual {v2, v9, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 68
    .line 69
    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    sub-int/2addr v9, v7

    .line 76
    :goto_2
    const/16 v10, -0x384

    .line 77
    .line 78
    if-ltz v9, :cond_7

    .line 79
    .line 80
    iget-object v11, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 81
    .line 82
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 87
    .line 88
    const/4 v12, 0x2

    .line 89
    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    iget-object v13, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 94
    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    iget-object v12, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 98
    .line 99
    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    iget-object v12, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 103
    .line 104
    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 105
    .line 106
    :goto_3
    if-eqz v12, :cond_6

    .line 107
    .line 108
    if-eq v12, v4, :cond_6

    .line 109
    .line 110
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 111
    .line 112
    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 113
    .line 114
    if-lt v14, v10, :cond_3

    .line 115
    .line 116
    if-gez v14, :cond_3

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_3
    iget-boolean v10, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 120
    .line 121
    or-int/2addr v6, v10

    .line 122
    if-eqz v10, :cond_4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    const/16 v10, 0x20

    .line 126
    .line 127
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_5

    .line 132
    .line 133
    const v10, 0x8000080

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-eqz v10, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 147
    .line 148
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 152
    .line 153
    iget-object v11, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    sub-int/2addr v11, v7

    .line 160
    :goto_5
    if-ltz v11, :cond_b

    .line 161
    .line 162
    iget-object v12, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    check-cast v12, Lcom/android/server/am/ContentProviderConnection;

    .line 169
    .line 170
    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 171
    .line 172
    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 173
    .line 174
    if-eqz v12, :cond_a

    .line 175
    .line 176
    if-eq v12, v4, :cond_a

    .line 177
    .line 178
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 179
    .line 180
    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 181
    .line 182
    if-lt v14, v10, :cond_8

    .line 183
    .line 184
    if-gez v14, :cond_8

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_8
    iget-boolean v14, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 188
    .line 189
    or-int/2addr v6, v14

    .line 190
    if-eqz v14, :cond_9

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_9
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 197
    .line 198
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, -0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_b
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 202
    .line 203
    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 204
    .line 205
    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 206
    .line 207
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    check-cast v9, Ljava/util/List;

    .line 212
    .line 213
    if-eqz v9, :cond_c

    .line 214
    .line 215
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    goto :goto_7

    .line 220
    :cond_c
    const/4 v11, 0x0

    .line 221
    :goto_7
    sub-int/2addr v11, v7

    .line 222
    :goto_8
    if-ltz v11, :cond_e

    .line 223
    .line 224
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 229
    .line 230
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 231
    .line 232
    iget-boolean v13, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 233
    .line 234
    or-int/2addr v6, v13

    .line 235
    if-eqz v13, :cond_d

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 242
    .line 243
    iput-boolean v7, v12, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 244
    .line 245
    :goto_9
    add-int/lit8 v11, v11, -0x1

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_e
    iget-boolean v9, v4, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 249
    .line 250
    if-eqz v9, :cond_14

    .line 251
    .line 252
    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 253
    .line 254
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    sub-int/2addr v9, v7

    .line 259
    :goto_a
    if-ltz v9, :cond_14

    .line 260
    .line 261
    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 266
    .line 267
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    sub-int/2addr v12, v7

    .line 272
    :goto_b
    if-ltz v12, :cond_13

    .line 273
    .line 274
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    check-cast v13, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    sub-int/2addr v14, v7

    .line 285
    :goto_c
    if-ltz v14, :cond_12

    .line 286
    .line 287
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 292
    .line 293
    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 294
    .line 295
    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 296
    .line 297
    if-eqz v15, :cond_11

    .line 298
    .line 299
    if-eq v15, v4, :cond_11

    .line 300
    .line 301
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 302
    .line 303
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 304
    .line 305
    if-lt v7, v10, :cond_f

    .line 306
    .line 307
    if-gez v7, :cond_f

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_f
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 311
    .line 312
    if-eqz v7, :cond_10

    .line 313
    .line 314
    goto :goto_d

    .line 315
    :cond_10
    invoke-virtual {v3, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    const/4 v7, 0x1

    .line 319
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 320
    .line 321
    :cond_11
    :goto_d
    add-int/lit8 v14, v14, -0x1

    .line 322
    .line 323
    const/4 v7, 0x1

    .line 324
    goto :goto_c

    .line 325
    :cond_12
    add-int/lit8 v12, v12, -0x1

    .line 326
    .line 327
    const/4 v7, 0x1

    .line 328
    goto :goto_b

    .line 329
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 330
    .line 331
    const/4 v7, 0x1

    .line 332
    goto :goto_a

    .line 333
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 338
    .line 339
    const/4 v7, 0x1

    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-lez v0, :cond_16

    .line 347
    .line 348
    const/4 v2, 0x1

    .line 349
    sub-int/2addr v0, v2

    .line 350
    const/4 v2, 0x0

    .line 351
    :goto_e
    if-ge v2, v0, :cond_16

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 358
    .line 359
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 364
    .line 365
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 366
    .line 367
    const/4 v7, 0x0

    .line 368
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 369
    .line 370
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 371
    .line 372
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 373
    .line 374
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 381
    .line 382
    add-int/lit8 v0, v0, -0x1

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_16
    return v6
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    const/4 v8, 0x2

    const/high16 v3, 0x10000

    const/4 v5, -0x1

    .line 1
    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz p10, :cond_1

    .line 2
    iget v13, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 3
    iget v12, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    if-ne v13, v12, :cond_1

    .line 4
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    if-ne v12, v1, :cond_0

    return v11

    .line 5
    :cond_0
    iput-boolean v4, v6, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 6
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v11

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v13

    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v12

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    .line 10
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move/from16 v22, v10

    const-wide v9, 0x7fffffffffffffffL

    .line 11
    iput-wide v9, v1, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 12
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    const/16 v10, 0x13

    if-nez v1, :cond_2

    .line 13
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 14
    iput v0, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 15
    invoke-virtual {v6, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 16
    invoke-virtual {v6, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 17
    iput v10, v6, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    const/16 v0, 0x3e7

    .line 18
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 19
    invoke-virtual {v6, v0, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 20
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 21
    iput v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 22
    iput v11, v6, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v11

    .line 23
    :cond_2
    iput v11, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    const/4 v1, 0x0

    .line 24
    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 25
    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz p10, :cond_3

    if-nez p7, :cond_5

    .line 26
    :cond_3
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 27
    iget-object v9, v15, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 28
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v9, :cond_4

    .line 29
    iget-boolean v9, v9, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v9, :cond_4

    move v9, v4

    goto :goto_0

    :cond_4
    move v9, v11

    .line 30
    :goto_0
    iput-boolean v9, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 31
    :cond_5
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 33
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 34
    iget v10, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/4 v7, 0x3

    if-gtz v10, :cond_14

    if-ne v1, v9, :cond_6

    .line 35
    const-string v1, "Making fixed: "

    .line 36
    invoke-static {v1, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 37
    :cond_6
    const-string/jumbo v1, "fixed"

    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 38
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 39
    iput v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 40
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 41
    invoke-virtual {v6, v1, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 42
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 43
    invoke-virtual {v6, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v1, 0x7f

    .line 44
    iput v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 45
    invoke-virtual {v6, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 46
    iput-boolean v4, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-ne v15, v14, :cond_7

    .line 47
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 48
    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 49
    const-string/jumbo v1, "pers-top-activity"

    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    .line 50
    :cond_7
    iget-boolean v1, v6, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    if-eqz v1, :cond_8

    .line 51
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 52
    const-string/jumbo v1, "pers-top-ui"

    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    .line 53
    :cond_8
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v1, v5, :cond_a

    .line 54
    iget-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 55
    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    move v1, v4

    goto :goto_1

    :cond_9
    move v1, v11

    .line 56
    :goto_1
    iput v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 57
    :cond_a
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v1, v4, :cond_b

    .line 58
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    goto :goto_2

    .line 59
    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 61
    iget-boolean v1, v6, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v1, :cond_c

    .line 62
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 63
    const-string/jumbo v1, "running-transient-launch-animation"

    iput-object v1, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 64
    :cond_c
    :goto_2
    iget-boolean v1, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-nez v1, :cond_10

    .line 65
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v4, :cond_f

    .line 66
    iget-boolean v0, v6, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_d

    goto :goto_3

    .line 67
    :cond_d
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 68
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_e

    goto :goto_4

    :cond_e
    const/4 v10, 0x5

    .line 70
    invoke-virtual {v6, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 71
    invoke-virtual {v6, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_4

    .line 72
    :cond_f
    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 73
    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 74
    :cond_10
    :goto_4
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 75
    iput v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 76
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 77
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 78
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 79
    iput v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 80
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {v6, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 82
    :cond_11
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-lt v0, v13, :cond_13

    .line 83
    iget v0, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ge v0, v12, :cond_12

    goto :goto_5

    :cond_12
    move v4, v11

    :cond_13
    :goto_5
    return v4

    :cond_14
    const/4 v10, 0x5

    .line 84
    iput-boolean v11, v6, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 85
    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    if-eqz p7, :cond_15

    .line 86
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v27

    :goto_6
    move/from16 v28, v13

    goto :goto_7

    :cond_15
    move/from16 v27, v11

    goto :goto_6

    :goto_7
    if-ne v15, v14, :cond_1a

    if-ne v7, v8, :cond_1a

    .line 87
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 88
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    iget v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    if-nez v10, :cond_16

    goto :goto_8

    .line 90
    :cond_16
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v10, :cond_17

    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 91
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 92
    iget-boolean v13, v6, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v13, :cond_17

    .line 93
    :goto_8
    const-string/jumbo v10, "top-activity"

    iput-object v10, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v10, 0x3

    goto :goto_a

    :cond_17
    if-eqz v10, :cond_18

    .line 94
    const-string/jumbo v10, "transient-launch-top-activity"

    iput-object v10, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_9

    .line 95
    :cond_18
    const-string/jumbo v10, "intermediate-top-activity"

    iput-object v10, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :goto_9
    move v10, v8

    :goto_a
    if-ne v1, v9, :cond_19

    .line 96
    const-string v13, "Making top: "

    .line 97
    invoke-static {v13, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_19
    move v3, v11

    goto/16 :goto_15

    .line 98
    :cond_1a
    iget-boolean v10, v6, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v10, :cond_1c

    .line 99
    const-string/jumbo v10, "running-remote-anim"

    iput-object v10, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_1b

    .line 100
    const-string v10, "Making running remote anim: "

    .line 101
    invoke-static {v10, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_1b
    move v8, v7

    move v4, v11

    const/16 v3, 0x64

    const/4 v10, 0x3

    goto/16 :goto_15

    .line 102
    :cond_1c
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v10, :cond_1e

    .line 103
    const-string/jumbo v10, "instrumentation"

    iput-object v10, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v10, 0x10

    or-int/lit8 v27, v27, 0x10

    if-ne v1, v9, :cond_1d

    .line 104
    const-string v10, "Making instrumentation: "

    .line 105
    invoke-static {v10, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_1d
    move v10, v8

    move v3, v11

    move v4, v3

    const/4 v8, 0x4

    goto/16 :goto_15

    .line 106
    :cond_1e
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 107
    iget v13, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v13, v5, :cond_25

    .line 108
    iget-object v13, v6, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 109
    iget-object v5, v6, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v5}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v8

    const/high16 v3, -0x80000000

    if-eqz v8, :cond_22

    .line 110
    invoke-virtual {v13, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v13

    if-ltz v13, :cond_22

    .line 111
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v13

    if-nez v13, :cond_1f

    goto :goto_c

    .line 112
    :cond_1f
    iget v13, v8, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v4, v8, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    if-le v13, v4, :cond_20

    :goto_b
    const/4 v4, 0x2

    goto :goto_d

    .line 113
    :cond_20
    iget-object v4, v8, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_b

    :cond_21
    move v4, v11

    goto :goto_d

    :cond_22
    :goto_c
    move v4, v3

    .line 114
    :goto_d
    aput v4, v10, v11

    if-eq v4, v3, :cond_23

    const/4 v3, 0x1

    goto :goto_e

    :cond_23
    move v3, v11

    .line 115
    :goto_e
    iput v3, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v8, 0x20

    const/4 v10, 0x1

    if-ne v3, v10, :cond_24

    .line 116
    iput v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 117
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_f

    .line 118
    :cond_24
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_f

    :cond_25
    move v10, v4

    .line 119
    :goto_f
    iget v3, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v3, v10, :cond_27

    .line 120
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    aget v10, v3, v11

    .line 121
    const-string/jumbo v3, "broadcast"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_26

    .line 122
    const-string v3, "Making broadcast: "

    .line 123
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_26
    const/16 v3, 0xb

    move v8, v3

    move v3, v11

    move v4, v3

    goto/16 :goto_15

    .line 124
    :cond_27
    iget-object v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 125
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 126
    iget-boolean v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v3, :cond_28

    const/4 v10, 0x2

    goto :goto_10

    :cond_28
    move v10, v11

    .line 127
    :goto_10
    const-string/jumbo v3, "exec-service"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_29

    .line 128
    const-string v3, "Making exec-service: "

    .line 129
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_29
    move v3, v11

    move v4, v3

    const/16 v8, 0xa

    goto/16 :goto_15

    :cond_2a
    if-ne v15, v14, :cond_2c

    .line 130
    const-string/jumbo v3, "top-sleeping"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_2b

    .line 131
    const-string v3, "Making top (sleeping): "

    .line 132
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_2b
    move v8, v7

    move v3, v11

    move v4, v3

    move v10, v4

    goto/16 :goto_15

    .line 133
    :cond_2c
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 134
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 135
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_2d

    :goto_11
    move v3, v11

    goto :goto_12

    .line 137
    :cond_2d
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    .line 139
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 140
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x1

    goto :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_61

    .line 141
    :cond_2f
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_11

    :goto_12
    if-eqz v3, :cond_30

    .line 142
    const-string/jumbo v3, "force-keep-alive"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :goto_13
    move v8, v7

    move v4, v11

    move v10, v4

    const/16 v3, 0x64

    goto :goto_15

    .line 143
    :cond_30
    iget-boolean v3, v15, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v3, :cond_32

    .line 144
    const-string/jumbo v3, "dedicated"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 145
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 146
    iget-boolean v3, v3, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v3, :cond_31

    goto :goto_13

    :cond_31
    move v4, v11

    move v10, v4

    const/16 v3, 0x64

    :goto_14
    const/16 v8, 0x13

    goto :goto_15

    :cond_32
    if-eqz p10, :cond_33

    .line 147
    iget-boolean v3, v6, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-nez v3, :cond_34

    .line 148
    :cond_33
    const-string/jumbo v3, "cch-empty"

    iput-object v3, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_34
    if-ne v1, v9, :cond_35

    .line 149
    const-string v3, "Making empty: "

    .line 150
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_35
    move/from16 v3, p2

    move v4, v11

    move v10, v4

    goto :goto_14

    :goto_15
    if-ne v15, v14, :cond_36

    const/4 v5, 0x1

    goto :goto_16

    :cond_36
    move v5, v11

    :goto_16
    if-nez v5, :cond_4d

    .line 151
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 152
    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 153
    iget v11, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    move/from16 v33, v12

    const/16 v12, -0x2710

    if-eq v11, v12, :cond_37

    const/16 v7, 0x10

    goto/16 :goto_1a

    .line 154
    :cond_37
    iget-object v11, v6, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 155
    iput-object v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 156
    iput v3, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 157
    iput-boolean v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 158
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 159
    iput v8, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 160
    iput v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 161
    iput v9, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 162
    iput v1, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 163
    iput v7, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 164
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 165
    iget-object v4, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 166
    iput-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 167
    iput-object v3, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 168
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 169
    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v4, 0x10000

    and-int v5, v3, v4

    const-wide/16 v7, 0x40

    if-eqz v5, :cond_3d

    .line 170
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v10, "vis-activity"

    const/16 v11, 0x64

    if-le v4, v11, :cond_38

    .line 171
    iput v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 172
    iput-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 173
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v11, :cond_38

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Raise adj to vis-activity: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 175
    :cond_38
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v4, v11, :cond_39

    .line 176
    iput v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 177
    iput-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 178
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v10, :cond_39

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Raise procstate to vis-activity (top): "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 180
    :cond_39
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v10, 0x2

    if-ge v4, v10, :cond_3a

    .line 181
    iput v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 182
    :cond_3a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v4, :cond_3c

    iget-object v4, v5, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 183
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 184
    iget-boolean v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez v4, :cond_3c

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "computeOomAdj onVisibleActivity() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 186
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const/16 v5, 0x2bc

    if-ge v4, v5, :cond_3b

    .line 187
    iput v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    :cond_3b
    const/4 v4, 0x2

    .line 188
    iput v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 189
    const-string/jumbo v4, "transient-launch-visible-activity"

    iput-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 190
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3c
    const/4 v4, 0x1

    .line 191
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 192
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    :goto_17
    const/16 v7, 0x10

    goto/16 :goto_19

    :cond_3d
    const/high16 v4, 0x20000

    and-int/2addr v4, v3

    if-eqz v4, :cond_43

    .line 193
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v10, "pause-activity"

    const/16 v11, 0xc8

    if-le v4, v11, :cond_3e

    .line 194
    iput v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 195
    iput-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 196
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v11, :cond_3e

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Raise adj to pause-activity: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 198
    :cond_3e
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v4, v11, :cond_3f

    .line 199
    iput v11, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 200
    iput-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 201
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v10, :cond_3f

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Raise procstate to pause-activity (top): "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 203
    :cond_3f
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v10, 0x2

    if-ge v4, v10, :cond_40

    .line 204
    iput v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 205
    :cond_40
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v4, :cond_42

    iget-object v4, v5, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 206
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 207
    iget-boolean v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez v4, :cond_42

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "computeOomAdj onPausedActivity() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 209
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const/16 v5, 0x2bc

    if-ge v4, v5, :cond_41

    .line 210
    iput v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    :cond_41
    const/4 v4, 0x2

    .line 211
    iput v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 212
    const-string/jumbo v4, "transient-launch-paused-activity"

    iput-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 213
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_42
    const/4 v4, 0x1

    .line 214
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 v4, 0x0

    .line 215
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto/16 :goto_17

    :cond_43
    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_47

    const/high16 v4, 0x80000

    and-int/2addr v4, v3

    if-eqz v4, :cond_44

    const/4 v4, 0x1

    goto :goto_18

    :cond_44
    const/4 v4, 0x0

    .line 216
    :goto_18
    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v7, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v8, "stop-activity"

    const/16 v10, 0xc8

    if-le v5, v10, :cond_45

    .line 217
    iput v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 218
    iput-object v8, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 219
    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v5, v10, :cond_45

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Raise adj to stop-activity: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_45
    if-nez v4, :cond_46

    .line 221
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_46

    .line 222
    iput v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 223
    iput-object v8, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 224
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v5, :cond_46

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Raise procstate to stop-activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_46
    const/4 v4, 0x1

    .line 226
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 v4, 0x0

    .line 227
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto/16 :goto_17

    .line 228
    :cond_47
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v7, 0x10

    if-le v4, v7, :cond_48

    .line 229
    iput v7, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 230
    const-string/jumbo v4, "cch-act"

    iput-object v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 231
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v4, v5, :cond_48

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Raise procstate to cached activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_48
    const/4 v4, 0x0

    .line 233
    iput-boolean v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    :goto_19
    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x63

    .line 234
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 235
    iget v4, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 236
    iget-boolean v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 237
    iget-boolean v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 238
    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 239
    iget v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 240
    iget-object v5, v13, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    const/16 v5, 0x64

    if-ne v4, v5, :cond_49

    add-int/2addr v4, v3

    .line 241
    iput v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 242
    :cond_49
    :goto_1a
    iget v3, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 243
    iget-boolean v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 244
    iget v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_4b

    .line 245
    iget-object v4, v6, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 246
    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v8, 0x10000

    and-int/2addr v4, v8

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_4a
    const/4 v4, 0x0

    .line 247
    :goto_1b
    iput v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 248
    :cond_4b
    iget v4, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_4c
    const/4 v4, 0x0

    .line 249
    :goto_1c
    iget v8, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 250
    iget v10, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 251
    iget-object v11, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    .line 252
    iput-object v11, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :goto_1d
    move v13, v4

    move v12, v5

    goto :goto_1e

    :cond_4d
    move/from16 v33, v12

    const/16 v7, 0x10

    goto :goto_1d

    :goto_1e
    const/16 v4, 0x12

    if-le v8, v4, :cond_51

    .line 253
    iget v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_4e

    .line 254
    iget-object v5, v6, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 255
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 256
    iget-boolean v5, v5, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 257
    iput v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 258
    :cond_4e
    iget v5, v6, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_4f

    const/4 v5, 0x1

    goto :goto_1f

    :cond_4f
    const/4 v5, 0x0

    :goto_1f
    if-eqz v5, :cond_51

    .line 259
    const-string/jumbo v5, "cch-rec"

    iput-object v5, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_50

    .line 260
    const-string v5, "Raise procstate to cached recent: "

    .line 261
    invoke-static {v5, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_50
    move v8, v4

    .line 262
    :cond_51
    iget-boolean v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 263
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v5

    if-eqz v4, :cond_57

    .line 264
    iget-boolean v11, v2, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez v11, :cond_52

    :goto_20
    move/from16 v24, v10

    :goto_21
    const/4 v7, 0x0

    goto :goto_25

    .line 265
    :cond_52
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v11

    if-eqz v11, :cond_53

    goto :goto_20

    .line 266
    :cond_53
    iget-object v11, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/16 v24, 0x1

    add-int/lit8 v11, v11, -0x1

    :goto_22
    if-ltz v11, :cond_56

    .line 267
    iget-object v7, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 268
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v24

    if-eqz v24, :cond_55

    move/from16 v24, v10

    .line 269
    iget-object v10, v7, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v10, :cond_54

    .line 270
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v34

    cmp-long v7, v34, p5

    if-ltz v7, :cond_54

    goto :goto_21

    :cond_54
    :goto_23
    const/4 v7, -0x1

    goto :goto_24

    :cond_55
    move/from16 v24, v10

    goto :goto_23

    :goto_24
    add-int/2addr v11, v7

    move/from16 v10, v24

    const/16 v7, 0x10

    goto :goto_22

    :cond_56
    move/from16 v24, v10

    const/4 v7, 0x1

    :goto_25
    if-nez v7, :cond_58

    const/4 v7, 0x1

    :goto_26
    const/16 v10, 0xc8

    goto :goto_27

    :cond_57
    move/from16 v24, v10

    :cond_58
    const/4 v7, 0x0

    goto :goto_26

    :goto_27
    const/4 v11, 0x4

    if-gt v3, v10, :cond_5a

    if-le v8, v11, :cond_59

    goto :goto_28

    :cond_59
    const/4 v4, 0x0

    goto :goto_2b

    :cond_5a
    :goto_28
    if-eqz v4, :cond_5b

    if-eqz v5, :cond_5b

    .line 271
    const-string/jumbo v4, "fg-service"

    move v7, v11

    const/16 v5, 0xc8

    const/16 v10, 0x10

    goto :goto_2a

    :cond_5b
    if-eqz v7, :cond_5c

    .line 272
    const-string/jumbo v4, "fg-service-short"

    const/16 v5, 0xe2

    move v7, v11

    :goto_29
    const/4 v10, 0x0

    goto :goto_2a

    .line 273
    :cond_5c
    iget-boolean v4, v6, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-eqz v4, :cond_5d

    .line 274
    const-string/jumbo v4, "has-overlay-ui"

    const/16 v5, 0xc8

    const/4 v7, 0x6

    goto :goto_29

    :cond_5d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_29

    :goto_2a
    if-eqz v4, :cond_5f

    .line 275
    iput-object v4, v6, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_5e

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Raise to "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_5e
    move v3, v5

    move v8, v7

    move v4, v10

    const/16 v24, 0x2

    goto :goto_2b

    :cond_5f
    move v4, v10

    .line 277
    :goto_2b
    iget-boolean v5, v2, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v5, :cond_63

    const/16 v5, 0x32

    if-le v3, v5, :cond_63

    move/from16 v23, v12

    .line 278
    iget-wide v11, v6, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 279
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object v10, v6

    iget-wide v5, v7, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v11, v5

    cmp-long v5, v11, p5

    if-gtz v5, :cond_60

    move-object v5, v10

    .line 280
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v7, 0x2

    if-gt v6, v7, :cond_64

    goto :goto_2c

    :cond_60
    move-object v5, v10

    .line 281
    :goto_2c
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 282
    const-string/jumbo v3, "fg-service-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v3, 0x32

    goto :goto_2d

    .line 283
    :cond_61
    const-string/jumbo v3, "fg-service-short-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v3, 0x33

    :goto_2d
    if-ne v1, v9, :cond_62

    .line 284
    const-string v6, "Raise to recent fg: "

    .line 285
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 286
    :cond_62
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    .line 287
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    goto :goto_2e

    :cond_63
    move-object v5, v6

    move/from16 v23, v12

    .line 288
    :cond_64
    :goto_2e
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v6

    if-eqz v6, :cond_67

    const/16 v6, 0x34

    if-le v3, v6, :cond_67

    .line 289
    iget-wide v10, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 290
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v7, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v10, v6

    cmp-long v6, v10, p5

    if-gtz v6, :cond_65

    .line 291
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v7, 0x2

    if-gt v6, v7, :cond_67

    .line 292
    :cond_65
    const-string/jumbo v3, "top-ej-act"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_66

    .line 293
    const-string v3, "Raise to recent fg for EJ: "

    .line 294
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 295
    :cond_66
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    .line 296
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    const/16 v3, 0x34

    :cond_67
    const/16 v6, 0xc8

    if-gt v3, v6, :cond_68

    const/16 v7, 0x8

    if-le v8, v7, :cond_6a

    .line 297
    :cond_68
    iget-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    if-eqz v7, :cond_6a

    .line 298
    const-string/jumbo v3, "force-imp"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 299
    iput-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-ne v1, v9, :cond_69

    .line 300
    const-string v3, "Raise to force imp: "

    .line 301
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_69
    const/16 v8, 0x8

    const/16 v24, 0x2

    goto :goto_2f

    :cond_6a
    move v6, v3

    .line 302
    :goto_2f
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_6c

    .line 303
    iget-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 304
    iget-object v10, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 305
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, v10, :cond_6b

    const/4 v3, 0x1

    goto :goto_30

    :cond_6b
    const/4 v3, 0x0

    .line 306
    :goto_30
    iput v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 307
    :cond_6c
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_6d

    const/4 v3, 0x1

    goto :goto_31

    :cond_6d
    const/4 v3, 0x0

    :goto_31
    if-eqz v3, :cond_71

    .line 308
    const-string/jumbo v3, "heavy"

    const/16 v10, 0x190

    if-le v6, v10, :cond_6f

    .line 309
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_6e

    .line 310
    const-string v6, "Raise adj to heavy: "

    .line 311
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_6e
    move v6, v10

    const/16 v24, 0x0

    :cond_6f
    const/16 v10, 0xd

    if-le v8, v10, :cond_71

    .line 312
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_70

    .line 313
    const-string v3, "Raise procstate to heavy: "

    .line 314
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_70
    move v8, v10

    .line 315
    :cond_71
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 316
    const-string/jumbo v3, "home"

    const/16 v10, 0x258

    if-le v6, v10, :cond_73

    .line 317
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_72

    .line 318
    const-string v6, "Raise adj to home: "

    .line 319
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 320
    :cond_72
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v11, v6, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    move v6, v10

    const/16 v24, 0x0

    :cond_73
    const/16 v10, 0xe

    if-le v8, v10, :cond_75

    .line 321
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_74

    .line 322
    const-string v3, "Raise procstate to home: "

    .line 323
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_74
    move v8, v10

    .line 324
    :cond_75
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v3

    if-eqz v3, :cond_7c

    const/16 v3, 0xf

    if-lt v8, v3, :cond_77

    .line 325
    iget v10, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-ne v10, v3, :cond_77

    .line 326
    iget-wide v10, v5, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 327
    sget-wide v34, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v10, v10, v34

    cmp-long v3, v10, p5

    if-gtz v3, :cond_77

    .line 328
    const-string/jumbo v3, "previous-expired"

    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_76

    .line 329
    const-string v3, "Expire prev adj: "

    .line 330
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_76
    const/16 v6, 0x384

    const/4 v3, 0x0

    const/16 v8, 0xf

    const/16 v10, 0x2bc

    const/16 v11, 0xf

    goto :goto_34

    .line 331
    :cond_77
    const-string/jumbo v3, "previous"

    const/16 v10, 0x2bc

    if-le v6, v10, :cond_79

    .line 332
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_78

    .line 333
    const-string v6, "Raise adj to prev: "

    .line 334
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_78
    move v6, v10

    const/16 v11, 0xf

    const/16 v24, 0x0

    goto :goto_32

    :cond_79
    const/16 v11, 0xf

    :goto_32
    if-le v8, v11, :cond_7b

    .line 335
    iput-object v3, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_7a

    .line 336
    const-string v3, "Raise procstate to prev: "

    .line 337
    invoke-static {v3, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7a
    move v8, v11

    .line 338
    :cond_7b
    sget v3, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 339
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    :goto_33
    move/from16 v3, v24

    goto :goto_34

    :cond_7c
    const/16 v10, 0x2bc

    const/16 v11, 0xf

    goto :goto_33

    :goto_34
    if-eqz p7, :cond_7d

    .line 340
    iget v12, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 341
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 342
    iget v12, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 343
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 344
    iget v12, v5, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 345
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_7d
    const/4 v12, 0x0

    .line 346
    invoke-virtual {v5, v6, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 347
    iput v8, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 348
    iput-boolean v12, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 349
    iget-object v12, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 350
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v7, 0x80

    invoke-virtual {v12, v7}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 351
    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 352
    iput v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 353
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v12, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BackupRecord;

    if-eqz v7, :cond_82

    .line 354
    iget-object v7, v7, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v15, v7, :cond_82

    .line 355
    const-string v7, "backup"

    const/16 v12, 0x12c

    if-le v6, v12, :cond_80

    const/16 v10, 0x8

    if-le v8, v10, :cond_7e

    const/16 v8, 0x8

    .line 356
    :cond_7e
    iput-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_7f

    .line 357
    const-string v6, "Raise adj to backup: "

    .line 358
    invoke-static {v6, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7f
    move v6, v12

    :cond_80
    const/16 v10, 0x9

    if-le v8, v10, :cond_82

    .line 359
    iput-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_81

    .line 360
    const-string v7, "Raise procstate to backup: "

    .line 361
    invoke-static {v7, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_81
    move v8, v10

    .line 362
    :cond_82
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    .line 363
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    const/4 v7, 0x0

    .line 364
    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 365
    iget-object v7, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    move/from16 v19, v4

    move v12, v7

    move/from16 v4, v27

    :goto_35
    if-ltz v12, :cond_83

    if-gtz v6, :cond_84

    if-eqz v3, :cond_84

    const/4 v7, 0x2

    if-le v8, v7, :cond_83

    goto :goto_36

    :cond_83
    move/from16 v36, v1

    move-object/from16 v39, v2

    move-object v14, v5

    move/from16 v37, v9

    move/from16 v44, v13

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v43, v28

    move/from16 v41, v33

    const/4 v0, 0x0

    const/16 v10, 0x1f4

    const/4 v13, 0x1

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    goto/16 :goto_46

    .line 366
    :cond_84
    :goto_36
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v7

    .line 367
    iget-boolean v11, v7, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v11, :cond_87

    const/4 v11, 0x1

    .line 368
    iput-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 369
    iget-object v11, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 370
    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v10, 0x80

    invoke-virtual {v11, v10}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 371
    const-string/jumbo v10, "started-services"

    const/16 v11, 0xa

    if-le v8, v11, :cond_86

    .line 372
    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_85

    .line 373
    const-string v8, "Raise procstate to started service: "

    .line 374
    invoke-static {v8, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_85
    move v8, v11

    .line 375
    :cond_86
    iget-boolean v11, v7, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v11, :cond_88

    .line 376
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v11, :cond_88

    .line 377
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v11

    if-nez v11, :cond_88

    const/16 v11, 0x1f4

    if-le v6, v11, :cond_87

    .line 378
    const-string/jumbo v10, "cch-started-ui-services"

    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_87
    move-object/from16 v32, v2

    move/from16 v27, v12

    move/from16 v34, v13

    goto :goto_38

    .line 379
    :cond_88
    iget-boolean v11, v7, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v11, :cond_89

    move/from16 v27, v12

    iget-wide v11, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v32, v2

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v34, v13

    iget-wide v13, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v11, v13

    cmp-long v2, p5, v11

    if-gez v2, :cond_8b

    goto :goto_37

    :cond_89
    move-object/from16 v32, v2

    move/from16 v27, v12

    move/from16 v34, v13

    .line 380
    :goto_37
    iget-boolean v2, v15, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v2, :cond_8b

    const/16 v2, 0x1f4

    if-le v6, v2, :cond_8b

    .line 381
    iput-object v10, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v1, v9, :cond_8a

    .line 382
    const-string v2, "Raise adj to started service: "

    .line 383
    invoke-static {v2, v15, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 384
    :cond_8a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 385
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    const/16 v6, 0x1f4

    :cond_8b
    const/16 v10, 0x1f4

    if-le v6, v10, :cond_8c

    .line 386
    const-string/jumbo v2, "cch-started-services"

    iput-object v2, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 387
    :cond_8c
    :goto_38
    iget-boolean v2, v7, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v2, :cond_92

    .line 388
    iget v2, v7, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 389
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v10

    if-eqz v10, :cond_92

    const/16 v12, 0x8

    and-int/lit8 v10, v2, 0x8

    if-eqz v10, :cond_8d

    const/4 v10, 0x1

    goto :goto_39

    :cond_8d
    const/4 v10, 0x0

    :goto_39
    or-int v10, v19, v10

    .line 390
    invoke-static {}, Landroid/media/audio/Flags;->roForegroundAudioControl()Z

    move-result v11

    if-eqz v11, :cond_8e

    or-int/lit8 v10, v10, 0x40

    :cond_8e
    const/4 v11, 0x1

    .line 391
    invoke-virtual {v5, v11}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v13

    if-eqz v13, :cond_91

    and-int/lit8 v11, v2, 0x40

    if-eqz v11, :cond_8f

    const/4 v11, 0x2

    goto :goto_3a

    :cond_8f
    const/4 v11, 0x0

    :goto_3a
    or-int/2addr v10, v11

    const/16 v13, 0x80

    and-int/2addr v2, v13

    if-eqz v2, :cond_90

    const/4 v2, 0x4

    goto :goto_3b

    :cond_90
    const/4 v2, 0x0

    :goto_3b
    or-int/2addr v2, v10

    move/from16 v19, v2

    const/4 v11, 0x6

    goto :goto_3c

    :cond_91
    const/4 v11, 0x6

    const/16 v13, 0x80

    or-int/lit8 v2, v10, 0x6

    move/from16 v19, v2

    goto :goto_3c

    :cond_92
    const/4 v11, 0x6

    const/16 v12, 0x8

    const/16 v13, 0x80

    :goto_3c
    if-nez p10, :cond_93

    move/from16 v36, v1

    move-object v14, v5

    move/from16 v37, v9

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v43, v28

    move-object/from16 v39, v32

    move/from16 v41, v33

    move/from16 v44, v34

    const/4 v0, 0x0

    const/16 v17, 0xa

    const/16 v21, 0x4

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    move/from16 v22, v12

    move/from16 v23, v13

    const/4 v13, 0x1

    goto/16 :goto_45

    :cond_93
    const/4 v14, 0x0

    .line 392
    invoke-virtual {v5, v6, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 393
    iput v8, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 394
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 395
    iput v4, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 396
    iget-object v10, v7, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 397
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    move/from16 v46, v8

    move v8, v2

    move/from16 v2, v46

    :goto_3d
    if-ltz v8, :cond_99

    if-gtz v6, :cond_95

    if-eqz v3, :cond_95

    const/4 v7, 0x2

    if-le v2, v7, :cond_94

    goto :goto_3e

    :cond_94
    move/from16 v36, v1

    move/from16 v37, v9

    move v0, v14

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v43, v28

    move-object/from16 v39, v32

    move/from16 v41, v33

    move/from16 v44, v34

    const/16 v17, 0xa

    const/16 v21, 0x4

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    move-object v14, v5

    move/from16 v22, v12

    move/from16 v23, v13

    const/4 v13, 0x1

    goto/16 :goto_44

    .line 398
    :cond_95
    :goto_3e
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move/from16 v16, v6

    move v6, v14

    .line 399
    :goto_3f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_96

    if-gtz v16, :cond_97

    if-eqz v3, :cond_97

    const/4 v11, 0x2

    if-le v2, v11, :cond_96

    goto :goto_40

    :cond_96
    move/from16 v36, v1

    move/from16 v31, v8

    move/from16 v37, v9

    move-object/from16 v20, v10

    move v0, v14

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v43, v28

    move-object/from16 v39, v32

    move/from16 v41, v33

    move/from16 v44, v34

    const/16 v17, 0xa

    const/16 v21, 0x4

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    move-object v14, v5

    move/from16 v22, v12

    move/from16 v23, v13

    const/4 v13, 0x1

    goto/16 :goto_43

    :cond_97
    const/4 v11, 0x2

    .line 400
    :goto_40
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 401
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v12, v15, :cond_98

    move/from16 v36, v1

    move/from16 v30, v6

    move-object/from16 v29, v7

    move/from16 v31, v8

    move/from16 v37, v9

    move-object/from16 v20, v10

    move v0, v14

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v43, v28

    move-object/from16 v39, v32

    move/from16 v41, v33

    move/from16 v44, v34

    const/16 v17, 0xa

    const/16 v21, 0x4

    const/16 v22, 0x8

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    move-object v14, v5

    move/from16 v23, v13

    :goto_41
    const/4 v13, 0x1

    goto/16 :goto_42

    :cond_98
    const/16 v16, 0x1

    const/16 v24, 0x0

    move v4, v1

    move-object/from16 v1, p0

    move-object/from16 v3, v32

    move-object v2, v11

    move-object v11, v3

    move-object/from16 v3, p1

    move/from16 v36, v4

    move-object v4, v12

    move-object v12, v5

    move/from16 v30, v6

    const/16 v32, -0x1

    move-wide/from16 v5, p5

    move-object/from16 v29, v7

    const/16 v25, 0x10

    const/16 v26, 0x3

    move-object/from16 v7, p3

    move/from16 v31, v8

    move/from16 v8, p4

    move/from16 v37, v9

    move/from16 v9, p7

    move-object/from16 v20, v10

    move/from16 v38, v22

    move/from16 v10, p8

    move-object/from16 v39, v11

    const/16 v17, 0xa

    const/16 v21, 0x4

    move/from16 v11, p9

    move-object/from16 v40, v12

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v41, v33

    const/16 v22, 0x8

    move/from16 v12, p2

    move/from16 v23, v13

    move/from16 v43, v28

    move/from16 v44, v34

    move/from16 v13, v16

    move v0, v14

    move/from16 v14, v24

    .line 402
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object/from16 v14, v40

    .line 403
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 404
    iget v2, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 405
    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 406
    iget v4, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v16, v1

    goto :goto_41

    :goto_42
    add-int/lit8 v6, v30, 0x1

    move-object v5, v14

    move/from16 v27, v18

    move-object/from16 v10, v20

    move/from16 v12, v22

    move/from16 v13, v23

    move-object/from16 v7, v29

    move/from16 v8, v31

    move/from16 v1, v36

    move/from16 v9, v37

    move/from16 v22, v38

    move-object/from16 v32, v39

    move/from16 v33, v41

    move/from16 v23, v42

    move/from16 v28, v43

    move/from16 v34, v44

    move v14, v0

    move-object/from16 v0, p0

    goto/16 :goto_3f

    :goto_43
    add-int/lit8 v8, v31, -0x1

    move v7, v13

    move-object v5, v14

    move/from16 v6, v16

    move/from16 v27, v18

    move-object/from16 v10, v20

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v1, v36

    move/from16 v9, v37

    move/from16 v22, v38

    move-object/from16 v32, v39

    move/from16 v33, v41

    move/from16 v23, v42

    move/from16 v28, v43

    move/from16 v34, v44

    const/4 v11, 0x6

    move v14, v0

    move-object/from16 v0, p0

    goto/16 :goto_3d

    :cond_99
    move/from16 v36, v1

    move/from16 v37, v9

    move v0, v14

    move/from16 v38, v22

    move/from16 v42, v23

    move/from16 v18, v27

    move/from16 v43, v28

    move-object/from16 v39, v32

    move/from16 v41, v33

    move/from16 v44, v34

    const/16 v17, 0xa

    const/16 v21, 0x4

    const/16 v25, 0x10

    const/16 v26, 0x3

    const/16 v32, -0x1

    move-object v14, v5

    move/from16 v22, v12

    move/from16 v23, v13

    move v13, v7

    :goto_44
    move v8, v2

    :goto_45
    add-int/lit8 v12, v18, -0x1

    move-object/from16 v0, p0

    move-object v5, v14

    move/from16 v1, v36

    move/from16 v9, v37

    move/from16 v22, v38

    move-object/from16 v2, v39

    move/from16 v33, v41

    move/from16 v23, v42

    move/from16 v28, v43

    move/from16 v13, v44

    const/16 v11, 0xf

    move-object/from16 v14, p3

    goto/16 :goto_35

    .line 407
    :goto_46
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 408
    iget-object v1, v12, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 409
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    move v11, v1

    move v9, v6

    :goto_47
    if-ltz v11, :cond_a4

    if-gtz v9, :cond_9b

    if-eqz v3, :cond_9b

    const/4 v7, 0x2

    if-le v8, v7, :cond_9a

    goto :goto_48

    :cond_9a
    move-object/from16 v2, p0

    move/from16 v18, v7

    move-object v1, v12

    move/from16 v6, v36

    move/from16 v5, v37

    const/4 v10, 0x6

    move v7, v0

    move-object v0, v14

    goto/16 :goto_53

    :cond_9b
    const/4 v7, 0x2

    .line 410
    :goto_48
    invoke-virtual {v12, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v5

    if-eqz p10, :cond_9e

    .line 411
    invoke-virtual {v14, v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 412
    iput v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 413
    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 414
    iput v4, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 415
    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v13

    move/from16 v46, v9

    move v9, v1

    move/from16 v1, v46

    :goto_49
    if-ltz v9, :cond_9c

    if-gtz v1, :cond_9d

    if-eqz v3, :cond_9d

    if-le v8, v7, :cond_9c

    goto :goto_4a

    :cond_9c
    move-object/from16 v20, v5

    move/from16 v18, v7

    move/from16 v22, v11

    move-object/from16 v45, v12

    move-object v0, v14

    goto :goto_4b

    .line 416
    :cond_9d
    :goto_4a
    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 417
    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v8, v5

    move-wide/from16 v5, p5

    move/from16 v18, v7

    move-object/from16 v7, p3

    move-object/from16 v20, v8

    move/from16 v8, p4

    move/from16 v21, v9

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v22, v11

    move/from16 v11, p9

    move-object/from16 v45, v12

    move/from16 v12, p2

    move/from16 v13, v16

    move-object v0, v14

    move/from16 v14, v17

    .line 418
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 419
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 420
    iget v8, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 421
    iget v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 422
    iget v4, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    add-int/lit8 v9, v21, -0x1

    move-object v14, v0

    move/from16 v7, v18

    move-object/from16 v5, v20

    move/from16 v11, v22

    move-object/from16 v12, v45

    const/4 v0, 0x0

    const/16 v10, 0x1f4

    const/4 v13, 0x1

    goto :goto_49

    :goto_4b
    move v11, v1

    move v1, v8

    :goto_4c
    move v8, v3

    goto :goto_4d

    :cond_9e
    move-object/from16 v20, v5

    move/from16 v18, v7

    move/from16 v22, v11

    move-object/from16 v45, v12

    move-object v0, v14

    move v1, v8

    move v11, v9

    goto :goto_4c

    .line 423
    :goto_4d
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_a3

    if-lez v11, :cond_a0

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v0, v2, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 425
    const-string/jumbo v3, "ext-provider"

    iput-object v3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move-object/from16 v3, v20

    .line 426
    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 427
    iput-object v3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    move/from16 v6, v36

    move/from16 v5, v37

    if-ne v6, v5, :cond_9f

    .line 428
    const-string v3, "Raise adj to external provider: "

    move v7, v2

    move-object/from16 v2, p0

    .line 429
    invoke-static {v3, v15, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    goto :goto_4e

    :cond_9f
    move v7, v2

    move-object/from16 v2, p0

    :goto_4e
    move v11, v7

    move/from16 v8, v18

    :goto_4f
    const/4 v10, 0x6

    goto :goto_50

    :cond_a0
    move-object/from16 v2, p0

    move/from16 v6, v36

    move/from16 v5, v37

    const/4 v7, 0x0

    goto :goto_4f

    :goto_50
    if-le v1, v10, :cond_a2

    .line 430
    iput v10, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-ne v6, v5, :cond_a1

    .line 431
    const-string v1, "Raise procstate to external provider: "

    .line 432
    invoke-static {v1, v15, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_a1
    move v3, v8

    move v8, v10

    move v9, v11

    goto :goto_52

    :cond_a2
    :goto_51
    move v3, v8

    move v9, v11

    move v8, v1

    goto :goto_52

    :cond_a3
    move-object/from16 v2, p0

    move/from16 v6, v36

    move/from16 v5, v37

    const/4 v7, 0x0

    const/4 v10, 0x6

    goto :goto_51

    :goto_52
    add-int/lit8 v11, v22, -0x1

    move-object v14, v0

    move/from16 v37, v5

    move/from16 v36, v6

    move v0, v7

    move-object/from16 v12, v45

    const/16 v10, 0x1f4

    const/4 v13, 0x1

    goto/16 :goto_47

    :cond_a4
    move-object/from16 v2, p0

    move v7, v0

    move-object v0, v14

    move/from16 v6, v36

    move/from16 v5, v37

    const/4 v10, 0x6

    const/16 v18, 0x2

    move-object v1, v12

    .line 433
    :goto_53
    iget-wide v11, v1, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 434
    iget-object v1, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v11, v13

    cmp-long v1, v11, p5

    if-lez v1, :cond_a9

    .line 435
    const-string/jumbo v1, "recent-provider"

    const/16 v11, 0x2bc

    if-le v9, v11, :cond_a6

    .line 436
    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v6, v5, :cond_a5

    .line 437
    const-string v3, "Raise adj to recent provider: "

    .line 438
    invoke-static {v3, v15, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 439
    :cond_a5
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 440
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    move v9, v11

    const/16 v3, 0xf

    move v11, v7

    goto :goto_54

    :cond_a6
    move v11, v3

    const/16 v3, 0xf

    :goto_54
    if-le v8, v3, :cond_a8

    .line 441
    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v6, v5, :cond_a7

    .line 442
    const-string v1, "Raise procstate to recent provider: "

    .line 443
    invoke-static {v1, v15, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 444
    :cond_a7
    iget-object v1, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    .line 445
    invoke-static {}, Lcom/android/server/am/Flags;->followUpOomadjUpdates()Z

    move v8, v3

    :cond_a8
    :goto_55
    const/16 v1, 0x13

    goto :goto_56

    :cond_a9
    move v11, v3

    goto :goto_55

    :goto_56
    if-lt v8, v1, :cond_ac

    move-object/from16 v1, v39

    .line 446
    iget-boolean v3, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz v3, :cond_ab

    .line 447
    const-string/jumbo v3, "cch-client-act"

    iput-object v3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v3, 0x11

    move v8, v3

    :cond_aa
    :goto_57
    const/16 v3, 0x1f4

    goto :goto_58

    .line 448
    :cond_ab
    iget-boolean v3, v1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v3, :cond_aa

    .line 449
    const-string/jumbo v3, "cch-as-act"

    iput-object v3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move/from16 v8, v25

    goto :goto_57

    :cond_ac
    move-object/from16 v1, v39

    goto :goto_57

    :goto_58
    if-ne v9, v3, :cond_b3

    if-eqz p4, :cond_b2

    if-nez p7, :cond_b2

    .line 450
    iget v3, v2, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v5, v2, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v5, v5, 0x3

    if-le v3, v5, :cond_ad

    const/4 v3, 0x1

    goto :goto_59

    :cond_ad
    move v3, v7

    .line 451
    :goto_59
    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 452
    iget v5, v2, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v2, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    if-nez v3, :cond_b1

    .line 453
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 454
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 455
    iget-wide v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    goto :goto_5a

    .line 456
    :cond_ae
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 457
    iget-wide v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 458
    :goto_5a
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v3

    if-eqz v3, :cond_af

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move v5, v11

    goto :goto_5b

    .line 459
    :cond_af
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    move v5, v11

    float-to-double v10, v3

    move-wide/from16 v16, v10

    .line 460
    :goto_5b
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 461
    iget-wide v10, v3, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    long-to-double v10, v10

    mul-double v10, v10, v16

    .line 462
    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_b0

    long-to-double v12, v12

    cmpl-double v3, v12, v10

    if-ltz v3, :cond_b0

    .line 463
    iput-boolean v6, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 464
    iput-boolean v6, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    goto :goto_5c

    .line 465
    :cond_b0
    iget v3, v2, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v3, v6

    iput v3, v2, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_5c

    :cond_b1
    move v5, v11

    .line 466
    iput-boolean v7, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    goto :goto_5c

    :cond_b2
    move v5, v11

    const/4 v6, 0x1

    .line 467
    :goto_5c
    iget-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v3, :cond_b4

    const/16 v9, 0x320

    goto :goto_5d

    :cond_b3
    move v5, v11

    const/4 v6, 0x1

    .line 468
    :cond_b4
    :goto_5d
    iget-boolean v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v1, :cond_b5

    or-int v4, v4, v19

    .line 469
    :cond_b5
    invoke-static {v8, v15}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int/2addr v1, v4

    const/4 v3, 0x5

    if-le v8, v3, :cond_b6

    and-int/lit8 v1, v1, -0x11

    .line 470
    :cond_b6
    iget-boolean v3, v15, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-eqz v3, :cond_b7

    .line 471
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 472
    iget v1, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 473
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 474
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return v7

    .line 475
    :cond_b7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    move v11, v5

    if-eqz v3, :cond_b8

    .line 476
    invoke-static {v11, v8, v0}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v4

    if-eqz v4, :cond_b8

    const/4 v11, 0x6

    .line 477
    :cond_b8
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v4, v44

    .line 478
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v5, v42

    .line 479
    iput-boolean v5, v0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 480
    iget v1, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 481
    iput v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 482
    invoke-static {v15, v9, v11}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    move-result v1

    .line 483
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 484
    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 485
    iput v8, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 486
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 487
    iget-boolean v1, v15, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v1, :cond_ba

    if-eqz v3, :cond_b9

    const/4 v11, 0x6

    goto :goto_5e

    :cond_b9
    move/from16 v11, v18

    .line 488
    :goto_5e
    invoke-virtual {v0, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 489
    :cond_ba
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    move/from16 v2, v43

    if-lt v1, v2, :cond_bc

    .line 490
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    move/from16 v2, v41

    if-lt v1, v2, :cond_bc

    .line 491
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v1, v38

    if-eq v0, v1, :cond_bb

    goto :goto_5f

    :cond_bb
    move v4, v7

    goto :goto_60

    :cond_bc
    :goto_5f
    move v4, v6

    :goto_60
    return v4

    .line 492
    :goto_61
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    move/from16 v15, p13

    .line 10
    .line 11
    iget-boolean v1, v13, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v11

    .line 17
    :cond_0
    iget-object v10, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 18
    .line 19
    iget-object v9, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 20
    .line 21
    if-ne v14, v13, :cond_1

    .line 22
    .line 23
    return v11

    .line 24
    :cond_1
    if-eqz p12, :cond_4

    .line 25
    .line 26
    if-eqz p9, :cond_3

    .line 27
    .line 28
    const/16 v16, 0x1

    .line 29
    .line 30
    const/16 v17, 0x1

    .line 31
    .line 32
    move-object/from16 v1, p0

    .line 33
    .line 34
    move-object/from16 v2, p3

    .line 35
    .line 36
    move/from16 v3, p11

    .line 37
    .line 38
    move-object/from16 v4, p6

    .line 39
    .line 40
    move/from16 v5, p7

    .line 41
    .line 42
    move-wide/from16 v6, p4

    .line 43
    .line 44
    move/from16 v8, p8

    .line 45
    .line 46
    move-object/from16 v18, v9

    .line 47
    .line 48
    move/from16 v9, v16

    .line 49
    .line 50
    move-object/from16 v19, v10

    .line 51
    .line 52
    move/from16 v10, p10

    .line 53
    .line 54
    move v12, v11

    .line 55
    move/from16 v11, v17

    .line 56
    .line 57
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 58
    .line 59
    .line 60
    move-object/from16 v7, v18

    .line 61
    .line 62
    :cond_2
    :goto_0
    move-object/from16 v8, v19

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object/from16 v18, v9

    .line 66
    .line 67
    move-object/from16 v19, v10

    .line 68
    .line 69
    move v12, v11

    .line 70
    move-object/from16 v7, v18

    .line 71
    .line 72
    if-eqz p12, :cond_2

    .line 73
    .line 74
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 75
    .line 76
    invoke-virtual {v7, v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 77
    .line 78
    .line 79
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 80
    .line 81
    iput v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    iget v4, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 85
    .line 86
    iget v5, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 87
    .line 88
    move-object/from16 v1, p0

    .line 89
    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    move-object v3, v7

    .line 93
    move/from16 v6, p8

    .line 94
    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    return v12

    .line 102
    :cond_4
    move-object v7, v9

    .line 103
    move-object v8, v10

    .line 104
    move v12, v11

    .line 105
    :cond_5
    iget v1, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 106
    .line 107
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 108
    .line 109
    iget v3, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 110
    .line 111
    iget v4, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 112
    .line 113
    iget v5, v8, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 114
    .line 115
    iget v6, v8, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 116
    .line 117
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 120
    .line 121
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 122
    .line 123
    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 124
    .line 125
    iget-object v11, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 126
    .line 127
    iget v12, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 128
    .line 129
    move/from16 v17, v9

    .line 130
    .line 131
    const/4 v9, 0x4

    .line 132
    if-ge v12, v9, :cond_6

    .line 133
    .line 134
    const/16 v11, 0x10

    .line 135
    .line 136
    const/16 v12, 0x10

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget v11, v11, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 140
    .line 141
    const/16 v12, 0x10

    .line 142
    .line 143
    and-int/2addr v11, v12

    .line 144
    :goto_2
    or-int/2addr v11, v6

    .line 145
    if-lt v2, v12, :cond_7

    .line 146
    .line 147
    const/16 v2, 0x13

    .line 148
    .line 149
    :cond_7
    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 150
    .line 151
    iget-boolean v12, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 152
    .line 153
    if-eqz v12, :cond_8

    .line 154
    .line 155
    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 156
    .line 157
    invoke-virtual {v12, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 158
    .line 159
    .line 160
    :cond_8
    const/4 v12, 0x3

    .line 161
    if-nez v15, :cond_b

    .line 162
    .line 163
    iget-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 164
    .line 165
    if-nez v9, :cond_a

    .line 166
    .line 167
    iget-boolean v9, v7, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 168
    .line 169
    if-nez v9, :cond_a

    .line 170
    .line 171
    if-le v2, v12, :cond_a

    .line 172
    .line 173
    const/4 v9, 0x4

    .line 174
    if-ne v2, v9, :cond_9

    .line 175
    .line 176
    iget-boolean v9, v7, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 177
    .line 178
    if-nez v9, :cond_9

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    const/4 v9, 0x0

    .line 182
    goto :goto_4

    .line 183
    :cond_a
    :goto_3
    const/4 v9, 0x1

    .line 184
    :goto_4
    iput-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 185
    .line 186
    :cond_b
    if-le v3, v1, :cond_f

    .line 187
    .line 188
    iget-boolean v9, v8, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 189
    .line 190
    if-eqz v9, :cond_c

    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-nez v9, :cond_c

    .line 197
    .line 198
    const/16 v9, 0xc8

    .line 199
    .line 200
    if-le v1, v9, :cond_c

    .line 201
    .line 202
    const-string/jumbo v1, "cch-ui-provider"

    .line 203
    .line 204
    .line 205
    move/from16 v18, v3

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    const/16 v16, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    const/4 v9, 0x0

    .line 212
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {v8, v1, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    if-eqz v16, :cond_d

    .line 221
    .line 222
    const/16 v16, 0x1

    .line 223
    .line 224
    return v16

    .line 225
    :cond_d
    const/16 v16, 0x1

    .line 226
    .line 227
    const-string/jumbo v18, "provider"

    .line 228
    .line 229
    .line 230
    move-object/from16 v20, v18

    .line 231
    .line 232
    move/from16 v18, v1

    .line 233
    .line 234
    move-object/from16 v1, v20

    .line 235
    .line 236
    :goto_5
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 237
    .line 238
    .line 239
    move-result v19

    .line 240
    if-eqz v19, :cond_e

    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 243
    .line 244
    .line 245
    move-result v19

    .line 246
    if-nez v19, :cond_e

    .line 247
    .line 248
    if-eqz v15, :cond_e

    .line 249
    .line 250
    return v16

    .line 251
    :cond_e
    move/from16 v9, v18

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_f
    const/4 v9, 0x0

    .line 255
    const/4 v1, 0x0

    .line 256
    move v9, v3

    .line 257
    :goto_6
    const/4 v12, 0x4

    .line 258
    if-gt v2, v12, :cond_12

    .line 259
    .line 260
    if-nez v1, :cond_10

    .line 261
    .line 262
    const-string/jumbo v1, "provider"

    .line 263
    .line 264
    .line 265
    :cond_10
    const/4 v12, 0x2

    .line 266
    if-ne v2, v12, :cond_11

    .line 267
    .line 268
    const/4 v2, 0x3

    .line 269
    goto :goto_7

    .line 270
    :cond_11
    const/4 v2, 0x5

    .line 271
    goto :goto_7

    .line 272
    :cond_12
    const/4 v12, 0x2

    .line 273
    :goto_7
    if-nez v15, :cond_14

    .line 274
    .line 275
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 276
    .line 277
    move/from16 v19, v3

    .line 278
    .line 279
    move/from16 v18, v6

    .line 280
    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    move-object/from16 v6, p1

    .line 284
    .line 285
    iget-object v3, v6, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 286
    .line 287
    if-eqz v3, :cond_13

    .line 288
    .line 289
    iget-object v3, v6, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 290
    .line 291
    monitor-enter v3

    .line 292
    move/from16 p5, v11

    .line 293
    .line 294
    :try_start_0
    iget-object v11, v6, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 295
    .line 296
    move/from16 p9, v9

    .line 297
    .line 298
    move/from16 p6, v10

    .line 299
    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 301
    .line 302
    .line 303
    move-result-wide v9

    .line 304
    invoke-virtual {v11, v2, v12, v9, v10}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 305
    .line 306
    .line 307
    monitor-exit v3

    .line 308
    goto :goto_8

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    throw v0

    .line 312
    :cond_13
    move/from16 p9, v9

    .line 313
    .line 314
    move/from16 p6, v10

    .line 315
    .line 316
    move/from16 p5, v11

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_14
    move/from16 v19, v3

    .line 320
    .line 321
    move/from16 v18, v6

    .line 322
    .line 323
    move/from16 p9, v9

    .line 324
    .line 325
    move/from16 p6, v10

    .line 326
    .line 327
    move/from16 p5, v11

    .line 328
    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    move-object/from16 v6, p1

    .line 332
    .line 333
    :goto_8
    if-le v4, v2, :cond_17

    .line 334
    .line 335
    if-eqz v15, :cond_15

    .line 336
    .line 337
    iget v3, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 338
    .line 339
    if-le v3, v2, :cond_16

    .line 340
    .line 341
    const/4 v3, 0x1

    .line 342
    return v3

    .line 343
    :cond_15
    iput v2, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 344
    .line 345
    :cond_16
    move v3, v2

    .line 346
    goto :goto_9

    .line 347
    :cond_17
    move v3, v4

    .line 348
    :goto_9
    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 349
    .line 350
    if-le v7, v5, :cond_18

    .line 351
    .line 352
    const/4 v12, 0x2

    .line 353
    goto :goto_a

    .line 354
    :cond_18
    move v12, v5

    .line 355
    :goto_a
    if-eqz v1, :cond_19

    .line 356
    .line 357
    if-nez v15, :cond_19

    .line 358
    .line 359
    iput-object v1, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 360
    .line 361
    const/4 v7, 0x1

    .line 362
    iput v7, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 363
    .line 364
    iput-object v14, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 365
    .line 366
    iput v2, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 367
    .line 368
    iget-object v2, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 369
    .line 370
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 371
    .line 372
    iput-object v2, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 373
    .line 374
    move/from16 v6, p6

    .line 375
    .line 376
    move/from16 v2, v17

    .line 377
    .line 378
    if-ne v6, v2, :cond_19

    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v6, "Raise to "

    .line 383
    .line 384
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, ": "

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, ", due to "

    .line 399
    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, " adj="

    .line 407
    .line 408
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move/from16 v1, p9

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v6, " procState="

    .line 417
    .line 418
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 422
    .line 423
    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :goto_b
    const/4 v2, 0x5

    .line 438
    goto :goto_c

    .line 439
    :cond_19
    move/from16 v1, p9

    .line 440
    .line 441
    goto :goto_b

    .line 442
    :goto_c
    if-le v3, v2, :cond_1a

    .line 443
    .line 444
    and-int/lit8 v11, p5, -0x11

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1a
    move/from16 v11, p5

    .line 448
    .line 449
    :goto_d
    move/from16 v2, v19

    .line 450
    .line 451
    if-eqz v15, :cond_1c

    .line 452
    .line 453
    if-lt v1, v2, :cond_1b

    .line 454
    .line 455
    if-lt v3, v4, :cond_1b

    .line 456
    .line 457
    if-gt v12, v5, :cond_1b

    .line 458
    .line 459
    move/from16 v6, v18

    .line 460
    .line 461
    if-eq v11, v6, :cond_1c

    .line 462
    .line 463
    and-int v7, v11, v6

    .line 464
    .line 465
    if-ne v7, v6, :cond_1c

    .line 466
    .line 467
    :cond_1b
    const/4 v0, 0x1

    .line 468
    return v0

    .line 469
    :cond_1c
    if-ge v1, v2, :cond_1d

    .line 470
    .line 471
    invoke-static {v13, v1, v12}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    :cond_1d
    if-ge v3, v4, :cond_1e

    .line 476
    .line 477
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 478
    .line 479
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 480
    .line 481
    .line 482
    iput v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 483
    .line 484
    :cond_1e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 485
    .line 486
    if-eqz v1, :cond_1f

    .line 487
    .line 488
    invoke-static {v12, v3, v8}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_1f

    .line 493
    .line 494
    const/4 v12, 0x6

    .line 495
    :cond_1f
    if-le v12, v5, :cond_20

    .line 496
    .line 497
    invoke-virtual {v0, v8, v12}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 498
    .line 499
    .line 500
    :cond_20
    iput v11, v8, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 501
    .line 502
    return v16
.end method

.method public final computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 28

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move/from16 v14, p13

    .line 8
    .line 9
    const/16 v10, 0x8

    .line 10
    .line 11
    const/16 v9, 0x20

    .line 12
    .line 13
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v8

    .line 19
    :cond_0
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 20
    .line 21
    move-object/from16 v0, p3

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 24
    .line 25
    if-eqz p12, :cond_3

    .line 26
    .line 27
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 38
    .line 39
    move-object v5, v1

    .line 40
    move-object/from16 v16, v2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object/from16 v16, v0

    .line 44
    .line 45
    move-object v5, v1

    .line 46
    :goto_0
    if-eqz p9, :cond_2

    .line 47
    .line 48
    const/16 v17, 0x1

    .line 49
    .line 50
    const/16 v18, 0x1

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    move-object/from16 v1, v16

    .line 55
    .line 56
    move/from16 v2, p11

    .line 57
    .line 58
    move-object/from16 v3, p6

    .line 59
    .line 60
    move/from16 v4, p7

    .line 61
    .line 62
    move-object v15, v5

    .line 63
    move-wide/from16 v5, p4

    .line 64
    .line 65
    move-object/from16 v19, v7

    .line 66
    .line 67
    move/from16 v7, p8

    .line 68
    .line 69
    move/from16 v8, v17

    .line 70
    .line 71
    move/from16 v9, p10

    .line 72
    .line 73
    move/from16 v10, v18

    .line 74
    .line 75
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 76
    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v15, v5

    .line 81
    move-object/from16 v19, v7

    .line 82
    .line 83
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual {v15, v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 87
    .line 88
    .line 89
    iget v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 90
    .line 91
    iput v0, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 92
    .line 93
    :goto_1
    move-object/from16 v7, v16

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object/from16 v19, v7

    .line 97
    .line 98
    move v6, v8

    .line 99
    move-object v7, v0

    .line 100
    move-object v15, v1

    .line 101
    :goto_2
    iget v8, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 102
    .line 103
    const/16 v0, -0x2710

    .line 104
    .line 105
    if-ne v8, v0, :cond_4

    .line 106
    .line 107
    const-string v0, "OomAdjuster"

    .line 108
    .line 109
    const-string/jumbo v1, "computeServiceHostOomAdj failed, clientAdj is INVALID_ADJ"

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return v6

    .line 116
    :cond_4
    iget v9, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 117
    .line 118
    const/4 v10, 0x2

    .line 119
    if-ge v9, v10, :cond_5

    .line 120
    .line 121
    move-object/from16 v4, v19

    .line 122
    .line 123
    const/16 v16, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move/from16 v16, v6

    .line 127
    .line 128
    move-object/from16 v4, v19

    .line 129
    .line 130
    :goto_3
    iget v3, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 131
    .line 132
    iget v2, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 133
    .line 134
    iget v1, v4, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 135
    .line 136
    iget v0, v4, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 137
    .line 138
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 139
    .line 140
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 141
    .line 142
    iget-object v10, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 143
    .line 144
    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 145
    .line 146
    if-nez v14, :cond_8

    .line 147
    .line 148
    iget-boolean v6, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 149
    .line 150
    if-nez v6, :cond_7

    .line 151
    .line 152
    iget-boolean v6, v15, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 153
    .line 154
    if-nez v6, :cond_7

    .line 155
    .line 156
    const/4 v6, 0x3

    .line 157
    if-le v9, v6, :cond_7

    .line 158
    .line 159
    const/4 v6, 0x4

    .line 160
    if-ne v9, v6, :cond_6

    .line 161
    .line 162
    iget-boolean v6, v15, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 163
    .line 164
    if-nez v6, :cond_6

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    const/4 v6, 0x0

    .line 168
    goto :goto_5

    .line 169
    :cond_7
    :goto_4
    const/4 v6, 0x1

    .line 170
    :goto_5
    iput-boolean v6, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 171
    .line 172
    :cond_8
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 173
    .line 174
    iget-boolean v6, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 175
    .line 176
    if-eqz v6, :cond_9

    .line 177
    .line 178
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 179
    .line 180
    invoke-virtual {v6, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 181
    .line 182
    .line 183
    :cond_9
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 184
    .line 185
    move/from16 v17, v1

    .line 186
    .line 187
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 188
    .line 189
    move/from16 v18, v10

    .line 190
    .line 191
    const/4 v10, 0x4

    .line 192
    if-ge v1, v10, :cond_a

    .line 193
    .line 194
    const/16 v1, 0x10

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_a
    iget v1, v6, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 198
    .line 199
    const/16 v6, 0x10

    .line 200
    .line 201
    and-int/2addr v1, v6

    .line 202
    :goto_6
    or-int/2addr v1, v0

    .line 203
    const/16 v6, 0x20

    .line 204
    .line 205
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    const-string/jumbo v6, "service"

    .line 210
    .line 211
    .line 212
    move-object/from16 p11, v6

    .line 213
    .line 214
    if-eqz v10, :cond_43

    .line 215
    .line 216
    const/16 v10, 0x1000

    .line 217
    .line 218
    invoke-virtual {v12, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 219
    .line 220
    .line 221
    move-result v23

    .line 222
    if-eqz v23, :cond_b

    .line 223
    .line 224
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 225
    .line 226
    or-int/2addr v1, v10

    .line 227
    :cond_b
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 228
    .line 229
    const/16 v6, 0x8

    .line 230
    .line 231
    and-int/2addr v10, v6

    .line 232
    if-eqz v10, :cond_d

    .line 233
    .line 234
    const/4 v10, 0x5

    .line 235
    if-gt v9, v10, :cond_c

    .line 236
    .line 237
    const/high16 v10, 0x20000

    .line 238
    .line 239
    invoke-virtual {v12, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-eqz v10, :cond_d

    .line 244
    .line 245
    :cond_c
    or-int/2addr v1, v6

    .line 246
    :cond_d
    iget v10, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 247
    .line 248
    const/16 v21, 0x20

    .line 249
    .line 250
    and-int/lit8 v22, v10, 0x20

    .line 251
    .line 252
    const/4 v6, 0x6

    .line 253
    if-eqz v22, :cond_f

    .line 254
    .line 255
    if-gt v9, v6, :cond_f

    .line 256
    .line 257
    move-object/from16 v22, v7

    .line 258
    .line 259
    iget-wide v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 260
    .line 261
    const-wide v24, 0x100000000L

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    and-long v6, v6, v24

    .line 267
    .line 268
    const-wide/16 v24, 0x0

    .line 269
    .line 270
    cmp-long v6, v6, v24

    .line 271
    .line 272
    if-eqz v6, :cond_e

    .line 273
    .line 274
    or-int/lit8 v1, v1, 0x20

    .line 275
    .line 276
    :cond_e
    :goto_7
    const/16 v6, 0x40

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_f
    move-object/from16 v22, v7

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :goto_8
    and-int/lit8 v7, v10, 0x40

    .line 283
    .line 284
    if-eqz v7, :cond_10

    .line 285
    .line 286
    iget-boolean v7, v13, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 287
    .line 288
    if-eqz v7, :cond_10

    .line 289
    .line 290
    or-int/2addr v1, v6

    .line 291
    :cond_10
    move v6, v1

    .line 292
    if-eqz p12, :cond_12

    .line 293
    .line 294
    move v7, v0

    .line 295
    move-object/from16 v0, p0

    .line 296
    .line 297
    move/from16 v10, v17

    .line 298
    .line 299
    move-object/from16 v1, p2

    .line 300
    .line 301
    move/from16 p12, v2

    .line 302
    .line 303
    move-object v2, v15

    .line 304
    move/from16 v17, v3

    .line 305
    .line 306
    move/from16 v3, p12

    .line 307
    .line 308
    move/from16 v21, v7

    .line 309
    .line 310
    move-object v7, v4

    .line 311
    move/from16 v4, v17

    .line 312
    .line 313
    move/from16 v26, v5

    .line 314
    .line 315
    move/from16 v24, v10

    .line 316
    .line 317
    const/4 v10, 0x1

    .line 318
    move/from16 v5, p8

    .line 319
    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_11

    .line 325
    .line 326
    const/4 v0, 0x0

    .line 327
    return v0

    .line 328
    :cond_11
    :goto_9
    const/16 v0, 0x10

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_12
    move/from16 v21, v0

    .line 332
    .line 333
    move/from16 p12, v2

    .line 334
    .line 335
    move-object v7, v4

    .line 336
    move/from16 v26, v5

    .line 337
    .line 338
    move/from16 v24, v17

    .line 339
    .line 340
    const/4 v10, 0x1

    .line 341
    move/from16 v17, v3

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :goto_a
    if-lt v9, v0, :cond_13

    .line 345
    .line 346
    const/16 v9, 0x13

    .line 347
    .line 348
    :cond_13
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    const-string/jumbo v0, "cch-bound-ui-services"

    .line 353
    .line 354
    .line 355
    const/4 v2, 0x0

    .line 356
    if-eqz v1, :cond_1a

    .line 357
    .line 358
    const/16 v1, 0x384

    .line 359
    .line 360
    if-ge v8, v1, :cond_14

    .line 361
    .line 362
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 363
    .line 364
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 365
    .line 366
    .line 367
    :cond_14
    iget-boolean v1, v7, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 368
    .line 369
    if-eqz v1, :cond_17

    .line 370
    .line 371
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_17

    .line 376
    .line 377
    move/from16 v3, v17

    .line 378
    .line 379
    if-le v3, v8, :cond_15

    .line 380
    .line 381
    move-object v2, v0

    .line 382
    :cond_15
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_16

    .line 387
    .line 388
    if-eqz v14, :cond_16

    .line 389
    .line 390
    return v10

    .line 391
    :cond_16
    move/from16 v10, p12

    .line 392
    .line 393
    move v8, v3

    .line 394
    goto :goto_c

    .line 395
    :cond_17
    move/from16 v3, v17

    .line 396
    .line 397
    iget-object v1, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 398
    .line 399
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 400
    .line 401
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 402
    .line 403
    iget-object v1, v11, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 404
    .line 405
    iget-wide v10, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    .line 406
    .line 407
    add-long/2addr v4, v10

    .line 408
    cmp-long v1, p4, v4

    .line 409
    .line 410
    if-ltz v1, :cond_19

    .line 411
    .line 412
    if-le v3, v8, :cond_18

    .line 413
    .line 414
    const-string/jumbo v2, "cch-bound-services"

    .line 415
    .line 416
    .line 417
    :cond_18
    move v8, v3

    .line 418
    :cond_19
    :goto_b
    move v10, v9

    .line 419
    goto :goto_c

    .line 420
    :cond_1a
    move/from16 v3, v17

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :goto_c
    const/high16 v1, 0x10000000

    .line 424
    .line 425
    if-le v3, v8, :cond_1b

    .line 426
    .line 427
    iget-boolean v4, v7, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 428
    .line 429
    const/16 v5, 0xc8

    .line 430
    .line 431
    if-eqz v4, :cond_1c

    .line 432
    .line 433
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-nez v4, :cond_1c

    .line 438
    .line 439
    if-le v8, v5, :cond_1c

    .line 440
    .line 441
    const/16 v4, 0x384

    .line 442
    .line 443
    if-lt v3, v4, :cond_1b

    .line 444
    .line 445
    move-object/from16 v4, p0

    .line 446
    .line 447
    move/from16 v8, p12

    .line 448
    .line 449
    :goto_d
    move v5, v3

    .line 450
    move/from16 v2, v24

    .line 451
    .line 452
    const/4 v9, 0x0

    .line 453
    goto/16 :goto_14

    .line 454
    .line 455
    :cond_1b
    move-object/from16 v4, p0

    .line 456
    .line 457
    goto/16 :goto_13

    .line 458
    .line 459
    :cond_1c
    const/16 v0, 0x48

    .line 460
    .line 461
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_1f

    .line 466
    .line 467
    const/16 v0, -0x2bc

    .line 468
    .line 469
    if-lt v8, v0, :cond_1d

    .line 470
    .line 471
    move-object/from16 v4, p0

    .line 472
    .line 473
    goto/16 :goto_11

    .line 474
    .line 475
    :cond_1d
    move-object/from16 v4, p0

    .line 476
    .line 477
    if-nez v14, :cond_1e

    .line 478
    .line 479
    iget v5, v4, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 480
    .line 481
    const/4 v8, 0x0

    .line 482
    invoke-virtual {v12, v8, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 483
    .line 484
    .line 485
    :cond_1e
    move v5, v0

    .line 486
    const/4 v0, 0x2

    .line 487
    const/4 v8, 0x0

    .line 488
    const/4 v9, 0x1

    .line 489
    goto/16 :goto_12

    .line 490
    .line 491
    :cond_1f
    move-object/from16 v4, p0

    .line 492
    .line 493
    const/16 v0, 0x100

    .line 494
    .line 495
    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_20

    .line 500
    .line 501
    if-gt v8, v5, :cond_20

    .line 502
    .line 503
    const/16 v0, 0xfa

    .line 504
    .line 505
    if-lt v3, v0, :cond_21

    .line 506
    .line 507
    :goto_e
    move/from16 v8, p12

    .line 508
    .line 509
    move v5, v0

    .line 510
    :goto_f
    move/from16 v0, v24

    .line 511
    .line 512
    const/4 v9, 0x0

    .line 513
    goto/16 :goto_12

    .line 514
    .line 515
    :cond_20
    const/16 v0, 0x64

    .line 516
    .line 517
    :cond_21
    const/high16 v11, 0x10000

    .line 518
    .line 519
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 520
    .line 521
    .line 522
    move-result v17

    .line 523
    if-eqz v17, :cond_23

    .line 524
    .line 525
    const/4 v9, 0x4

    .line 526
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 527
    .line 528
    .line 529
    move-result v17

    .line 530
    if-eqz v17, :cond_23

    .line 531
    .line 532
    if-ge v8, v5, :cond_23

    .line 533
    .line 534
    if-lt v3, v5, :cond_22

    .line 535
    .line 536
    const/16 v0, 0xc9

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :cond_22
    move v0, v5

    .line 540
    :cond_23
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 541
    .line 542
    .line 543
    move-result v9

    .line 544
    if-eqz v9, :cond_24

    .line 545
    .line 546
    const/4 v9, 0x4

    .line 547
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 548
    .line 549
    .line 550
    move-result v11

    .line 551
    if-eqz v11, :cond_24

    .line 552
    .line 553
    if-ge v8, v5, :cond_24

    .line 554
    .line 555
    const/16 v0, 0xe3

    .line 556
    .line 557
    if-lt v3, v0, :cond_24

    .line 558
    .line 559
    goto :goto_e

    .line 560
    :cond_24
    const/high16 v9, 0x40000000    # 2.0f

    .line 561
    .line 562
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-eqz v9, :cond_26

    .line 567
    .line 568
    if-ge v8, v5, :cond_26

    .line 569
    .line 570
    if-lt v3, v5, :cond_25

    .line 571
    .line 572
    :goto_10
    move/from16 v8, p12

    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_25
    move v0, v5

    .line 576
    :cond_26
    if-lt v8, v5, :cond_27

    .line 577
    .line 578
    :goto_11
    move v5, v8

    .line 579
    move/from16 v0, v24

    .line 580
    .line 581
    const/4 v9, 0x0

    .line 582
    move/from16 v8, p12

    .line 583
    .line 584
    goto :goto_12

    .line 585
    :cond_27
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    if-eqz v5, :cond_28

    .line 590
    .line 591
    const/16 v5, 0x64

    .line 592
    .line 593
    if-gt v8, v5, :cond_29

    .line 594
    .line 595
    if-le v3, v5, :cond_29

    .line 596
    .line 597
    goto :goto_10

    .line 598
    :cond_28
    const/16 v5, 0x64

    .line 599
    .line 600
    :cond_29
    if-le v3, v5, :cond_2a

    .line 601
    .line 602
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    goto :goto_e

    .line 607
    :cond_2a
    move/from16 v8, p12

    .line 608
    .line 609
    move v5, v3

    .line 610
    goto :goto_f

    .line 611
    :goto_12
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 612
    .line 613
    .line 614
    move-result v11

    .line 615
    if-nez v11, :cond_2b

    .line 616
    .line 617
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    .line 618
    .line 619
    .line 620
    move-result v11

    .line 621
    if-eqz v11, :cond_2b

    .line 622
    .line 623
    if-eqz v14, :cond_2b

    .line 624
    .line 625
    const/4 v11, 0x1

    .line 626
    return v11

    .line 627
    :cond_2b
    if-le v3, v5, :cond_2c

    .line 628
    .line 629
    invoke-virtual {v7, v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 630
    .line 631
    .line 632
    move v2, v0

    .line 633
    move-object/from16 v0, p11

    .line 634
    .line 635
    goto :goto_14

    .line 636
    :cond_2c
    move v5, v3

    .line 637
    move-object/from16 v27, v2

    .line 638
    .line 639
    move v2, v0

    .line 640
    move-object/from16 v0, v27

    .line 641
    .line 642
    goto :goto_14

    .line 643
    :goto_13
    move/from16 v8, p12

    .line 644
    .line 645
    move-object v0, v2

    .line 646
    goto/16 :goto_d

    .line 647
    .line 648
    :goto_14
    const v11, 0x800004

    .line 649
    .line 650
    .line 651
    invoke-virtual {v12, v11}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 652
    .line 653
    .line 654
    move-result v11

    .line 655
    if-eqz v11, :cond_36

    .line 656
    .line 657
    iget v11, v15, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 658
    .line 659
    if-le v11, v2, :cond_2d

    .line 660
    .line 661
    const/16 v1, 0x40

    .line 662
    .line 663
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_2e

    .line 668
    .line 669
    move v2, v11

    .line 670
    :cond_2d
    const/4 v1, 0x2

    .line 671
    goto :goto_15

    .line 672
    :cond_2e
    const/4 v1, 0x2

    .line 673
    const/4 v2, 0x2

    .line 674
    :goto_15
    if-ge v10, v1, :cond_32

    .line 675
    .line 676
    const/high16 v1, 0x10000000

    .line 677
    .line 678
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_2f

    .line 683
    .line 684
    const/4 v10, 0x4

    .line 685
    goto :goto_18

    .line 686
    :cond_2f
    const/high16 v1, 0x4000000

    .line 687
    .line 688
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_30

    .line 693
    .line 694
    :goto_16
    const/4 v10, 0x5

    .line 695
    goto :goto_18

    .line 696
    :cond_30
    iget-object v1, v4, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 697
    .line 698
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    const/4 v10, 0x1

    .line 705
    if-ne v1, v10, :cond_31

    .line 706
    .line 707
    const/high16 v1, 0x2000000

    .line 708
    .line 709
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-eqz v1, :cond_31

    .line 714
    .line 715
    goto :goto_16

    .line 716
    :cond_31
    const/4 v10, 0x6

    .line 717
    goto :goto_18

    .line 718
    :cond_32
    if-ne v10, v1, :cond_35

    .line 719
    .line 720
    const/4 v1, 0x0

    .line 721
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 722
    .line 723
    .line 724
    move-result v10

    .line 725
    if-eqz v10, :cond_34

    .line 726
    .line 727
    const/16 v1, 0x1000

    .line 728
    .line 729
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    if-eqz v1, :cond_33

    .line 734
    .line 735
    iget v1, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 736
    .line 737
    :goto_17
    or-int/2addr v6, v1

    .line 738
    :cond_33
    const/4 v10, 0x3

    .line 739
    goto :goto_18

    .line 740
    :cond_34
    iget v1, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 741
    .line 742
    goto :goto_17

    .line 743
    :cond_35
    :goto_18
    move v1, v6

    .line 744
    goto :goto_19

    .line 745
    :cond_36
    const/high16 v1, 0x800000

    .line 746
    .line 747
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_37

    .line 752
    .line 753
    const/16 v1, 0x8

    .line 754
    .line 755
    if-ge v10, v1, :cond_35

    .line 756
    .line 757
    move v10, v1

    .line 758
    goto :goto_18

    .line 759
    :cond_37
    const/4 v1, 0x7

    .line 760
    if-ge v10, v1, :cond_35

    .line 761
    .line 762
    move v1, v6

    .line 763
    const/4 v10, 0x7

    .line 764
    :goto_19
    const/high16 v6, 0x80000

    .line 765
    .line 766
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    if-eqz v6, :cond_39

    .line 771
    .line 772
    if-eqz v16, :cond_39

    .line 773
    .line 774
    if-eqz v14, :cond_38

    .line 775
    .line 776
    move/from16 v6, v24

    .line 777
    .line 778
    const/4 v2, 0x3

    .line 779
    if-ge v6, v2, :cond_3a

    .line 780
    .line 781
    const/4 v11, 0x1

    .line 782
    return v11

    .line 783
    :cond_38
    move/from16 v6, v24

    .line 784
    .line 785
    const/4 v2, 0x3

    .line 786
    const/4 v11, 0x1

    .line 787
    iput-boolean v11, v7, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 788
    .line 789
    goto :goto_1a

    .line 790
    :cond_39
    move/from16 v6, v24

    .line 791
    .line 792
    :cond_3a
    :goto_1a
    if-nez v9, :cond_3b

    .line 793
    .line 794
    if-nez v14, :cond_3b

    .line 795
    .line 796
    iget v9, v4, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 797
    .line 798
    invoke-virtual {v12, v10, v9}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 799
    .line 800
    .line 801
    :cond_3b
    if-le v8, v10, :cond_3f

    .line 802
    .line 803
    if-eqz v14, :cond_3c

    .line 804
    .line 805
    iget v8, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 806
    .line 807
    if-le v8, v10, :cond_3d

    .line 808
    .line 809
    const/4 v8, 0x1

    .line 810
    return v8

    .line 811
    :cond_3c
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 812
    .line 813
    :cond_3d
    if-nez v0, :cond_3e

    .line 814
    .line 815
    move-object/from16 v0, p11

    .line 816
    .line 817
    :cond_3e
    move v8, v10

    .line 818
    :cond_3f
    const/4 v9, 0x7

    .line 819
    if-ge v8, v9, :cond_40

    .line 820
    .line 821
    const/high16 v9, 0x20000000

    .line 822
    .line 823
    invoke-virtual {v12, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 824
    .line 825
    .line 826
    move-result v9

    .line 827
    if-eqz v9, :cond_40

    .line 828
    .line 829
    if-nez v14, :cond_40

    .line 830
    .line 831
    const/4 v9, 0x1

    .line 832
    invoke-virtual {v13, v9}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 833
    .line 834
    .line 835
    :cond_40
    if-eqz v0, :cond_42

    .line 836
    .line 837
    if-nez v14, :cond_42

    .line 838
    .line 839
    iput-object v0, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 840
    .line 841
    const/4 v9, 0x2

    .line 842
    iput v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 843
    .line 844
    move-object/from16 v9, v22

    .line 845
    .line 846
    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 847
    .line 848
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 849
    .line 850
    iget-object v11, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 851
    .line 852
    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 853
    .line 854
    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 855
    .line 856
    iput-object v11, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 857
    .line 858
    move/from16 v15, v18

    .line 859
    .line 860
    move/from16 v11, v26

    .line 861
    .line 862
    move/from16 p4, v1

    .line 863
    .line 864
    if-ne v15, v11, :cond_41

    .line 865
    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    move/from16 p5, v2

    .line 869
    .line 870
    const-string v2, "Raise to "

    .line 871
    .line 872
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v0, ": "

    .line 879
    .line 880
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    const-string v0, ", due to "

    .line 887
    .line 888
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v0, " adj="

    .line 895
    .line 896
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    const-string v0, " procState="

    .line 903
    .line 904
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 908
    .line 909
    invoke-static {v8}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {v4, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    goto :goto_1b

    .line 924
    :cond_41
    move/from16 p5, v2

    .line 925
    .line 926
    goto :goto_1b

    .line 927
    :cond_42
    move/from16 p4, v1

    .line 928
    .line 929
    move/from16 p5, v2

    .line 930
    .line 931
    move/from16 v15, v18

    .line 932
    .line 933
    move/from16 v11, v26

    .line 934
    .line 935
    :goto_1b
    move/from16 v0, p4

    .line 936
    .line 937
    move/from16 v1, p5

    .line 938
    .line 939
    move v2, v8

    .line 940
    move v9, v10

    .line 941
    move v8, v5

    .line 942
    goto :goto_1c

    .line 943
    :cond_43
    move/from16 v21, v0

    .line 944
    .line 945
    move/from16 p12, v2

    .line 946
    .line 947
    move-object v7, v4

    .line 948
    move-object v4, v11

    .line 949
    move/from16 v6, v17

    .line 950
    .line 951
    move/from16 v15, v18

    .line 952
    .line 953
    const/16 v0, 0x384

    .line 954
    .line 955
    move v11, v5

    .line 956
    if-ge v8, v0, :cond_44

    .line 957
    .line 958
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 959
    .line 960
    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)Z

    .line 961
    .line 962
    .line 963
    :cond_44
    move/from16 v2, p12

    .line 964
    .line 965
    move v0, v1

    .line 966
    move v8, v3

    .line 967
    move v1, v6

    .line 968
    :goto_1c
    const/high16 v5, 0x8000000

    .line 969
    .line 970
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 971
    .line 972
    .line 973
    move-result v5

    .line 974
    if-eqz v5, :cond_46

    .line 975
    .line 976
    if-nez v14, :cond_45

    .line 977
    .line 978
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 979
    .line 980
    const/4 v10, 0x1

    .line 981
    iput-boolean v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 982
    .line 983
    :cond_45
    const/16 v5, 0x10

    .line 984
    .line 985
    if-gt v9, v5, :cond_46

    .line 986
    .line 987
    if-le v2, v5, :cond_46

    .line 988
    .line 989
    const-string/jumbo v2, "cch-as-act"

    .line 990
    .line 991
    .line 992
    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 993
    .line 994
    move v10, v5

    .line 995
    goto :goto_1d

    .line 996
    :cond_46
    move v10, v2

    .line 997
    :goto_1d
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 998
    .line 999
    const/16 v5, 0x80

    .line 1000
    .line 1001
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    if-eqz v5, :cond_4b

    .line 1006
    .line 1007
    if-eqz v2, :cond_4b

    .line 1008
    .line 1009
    if-lez v8, :cond_4b

    .line 1010
    .line 1011
    iget-object v5, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1012
    .line 1013
    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    .line 1014
    .line 1015
    if-eqz v5, :cond_4b

    .line 1016
    .line 1017
    const/4 v5, 0x0

    .line 1018
    invoke-virtual {v7, v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v8

    .line 1022
    if-eqz v8, :cond_47

    .line 1023
    .line 1024
    const/4 v9, 0x1

    .line 1025
    return v9

    .line 1026
    :cond_47
    const/4 v8, 0x4

    .line 1027
    const/4 v9, 0x1

    .line 1028
    invoke-virtual {v12, v8}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v16

    .line 1032
    if-eqz v16, :cond_49

    .line 1033
    .line 1034
    const/16 v5, 0x40

    .line 1035
    .line 1036
    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    if-eqz v1, :cond_48

    .line 1041
    .line 1042
    goto :goto_1e

    .line 1043
    :cond_48
    const/4 v8, 0x2

    .line 1044
    goto :goto_1e

    .line 1045
    :cond_49
    move v8, v1

    .line 1046
    :goto_1e
    if-nez v14, :cond_4a

    .line 1047
    .line 1048
    move-object/from16 v1, p11

    .line 1049
    .line 1050
    iput-object v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 1051
    .line 1052
    const/4 v1, 0x2

    .line 1053
    iput v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 1054
    .line 1055
    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 1056
    .line 1057
    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 1058
    .line 1059
    iget-object v1, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1060
    .line 1061
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1062
    .line 1063
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 1064
    .line 1065
    iput-object v1, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 1066
    .line 1067
    if-ne v15, v11, :cond_4a

    .line 1068
    .line 1069
    const-string v1, "Raise to service w/activity: "

    .line 1070
    .line 1071
    invoke-static {v1, v13, v4}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_4a
    move v1, v8

    .line 1075
    const/4 v8, 0x0

    .line 1076
    goto :goto_1f

    .line 1077
    :cond_4b
    const/4 v9, 0x1

    .line 1078
    :goto_1f
    invoke-static {v10, v13}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v2

    .line 1082
    or-int/2addr v0, v2

    .line 1083
    const/4 v2, 0x5

    .line 1084
    if-le v10, v2, :cond_4c

    .line 1085
    .line 1086
    and-int/lit8 v0, v0, -0x11

    .line 1087
    .line 1088
    :cond_4c
    move/from16 v2, p12

    .line 1089
    .line 1090
    if-lt v8, v3, :cond_4e

    .line 1091
    .line 1092
    if-lt v10, v2, :cond_4e

    .line 1093
    .line 1094
    if-gt v1, v6, :cond_4e

    .line 1095
    .line 1096
    move/from16 v5, v21

    .line 1097
    .line 1098
    if-eq v0, v5, :cond_4d

    .line 1099
    .line 1100
    and-int v11, v0, v5

    .line 1101
    .line 1102
    if-ne v11, v5, :cond_4d

    .line 1103
    .line 1104
    goto :goto_20

    .line 1105
    :cond_4d
    const/16 v20, 0x0

    .line 1106
    .line 1107
    goto :goto_21

    .line 1108
    :cond_4e
    :goto_20
    move/from16 v20, v9

    .line 1109
    .line 1110
    :goto_21
    if-eqz v14, :cond_4f

    .line 1111
    .line 1112
    return v20

    .line 1113
    :cond_4f
    if-ge v8, v3, :cond_50

    .line 1114
    .line 1115
    invoke-static {v13, v8, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    .line 1116
    .line 1117
    .line 1118
    move-result v1

    .line 1119
    :cond_50
    if-ge v10, v2, :cond_51

    .line 1120
    .line 1121
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1122
    .line 1123
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1124
    .line 1125
    .line 1126
    iput v10, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 1127
    .line 1128
    :cond_51
    if-le v1, v6, :cond_52

    .line 1129
    .line 1130
    invoke-virtual {v4, v7, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 1131
    .line 1132
    .line 1133
    :cond_52
    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1134
    .line 1135
    return v20
.end method

.method public final dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "  oom_re_ranking_rss_weight="

    .line 7
    .line 8
    const-string v1, "  oom_re_ranking_uses_weight="

    .line 9
    .line 10
    const-string v2, "  oom_re_ranking_lru_weight="

    .line 11
    .line 12
    const-string v3, "  oom_re_ranking_number_to_re_rank="

    .line 13
    .line 14
    const-string v4, "  use_oom_re_ranking="

    .line 15
    .line 16
    const-string v5, "CacheOomRanker settings"

    .line 17
    .line 18
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v5

    .line 24
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v4, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 30
    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    monitor-exit v5

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method

.method public final dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "  compact_proc_state_throttle="

    .line 7
    .line 8
    const-string v1, "  compact_full_delta_rss_throttle_kb="

    .line 9
    .line 10
    const-string v2, "  compact_full_rss_throttle_kb="

    .line 11
    .line 12
    const-string v3, "  compact_statsd_sample_rate="

    .line 13
    .line 14
    const-string v4, "  compact_throttle_max_oom_adj="

    .line 15
    .line 16
    const-string v5, "  compact_throttle_min_oom_adj="

    .line 17
    .line 18
    const-string v6, "  compact_throttle_4="

    .line 19
    .line 20
    const-string v7, "  compact_throttle_3="

    .line 21
    .line 22
    const-string v8, "  compact_throttle_2="

    .line 23
    .line 24
    const-string v9, "  compact_throttle_1="

    .line 25
    .line 26
    const-string v10, "  use_compaction="

    .line 27
    .line 28
    const-string v11, "CachedAppOptimizer settings"

    .line 29
    .line 30
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v11, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v11

    .line 36
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v10, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 42
    .line 43
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-wide v12, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 59
    .line 60
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-wide v12, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 76
    .line 77
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 93
    .line 94
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-wide v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 110
    .line 111
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 127
    .line 128
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 144
    .line 145
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 195
    .line 196
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    new-array v3, v2, [Ljava/lang/Integer;

    .line 215
    .line 216
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v0, " Per-Process Compaction Stats"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-wide/16 v3, 0x0

    .line 250
    .line 251
    move-wide v5, v3

    .line 252
    move-wide v7, v5

    .line 253
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 264
    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v10, "-----"

    .line 271
    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;->processName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v10, "-----"

    .line 281
    .line 282
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-wide v9, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 293
    .line 294
    add-long/2addr v5, v9

    .line 295
    iget-wide v9, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 296
    .line 297
    add-long/2addr v7, v9

    .line 298
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :catchall_0
    move-exception p0

    .line 306
    goto/16 :goto_9

    .line 307
    .line 308
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 309
    .line 310
    .line 311
    const-string v0, " Per-Source Compaction Stats"

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_1

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 337
    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v10, "-----"

    .line 344
    .line 345
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;->sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 349
    .line 350
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v10, "-----"

    .line 354
    .line 355
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 373
    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v1, "Total Compactions Performed by profile: "

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v1, " some, "

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, " full"

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v1, "Total compactions downgraded: "

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 419
    .line 420
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v0, "Total compactions cancelled by reason: "

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_2

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 456
    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v6, "    "

    .line 463
    .line 464
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v6, ": "

    .line 471
    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 476
    .line 477
    invoke-virtual {v6, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto :goto_2

    .line 492
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 493
    .line 494
    .line 495
    const-string v0, " System Compaction Memory Stats"

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    const-string v1, "    Compactions Performed: "

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    const-string v1, "    Total Memory Freed (KB): "

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string v1, "    Avg Mem Freed per Compact (KB): "

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-wide/16 v3, 0x0

    .line 551
    .line 552
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 563
    .line 564
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string v1, "  Tracking last compaction stats for "

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v1, " processes."

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    const-string v0, "Last Compaction per process stats:"

    .line 597
    .line 598
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    .line 602
    .line 603
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_3

    .line 621
    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    check-cast v1, Ljava/util/Map$Entry;

    .line 627
    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 633
    .line 634
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 635
    .line 636
    .line 637
    goto :goto_3

    .line 638
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 639
    .line 640
    .line 641
    const-string v0, "Last 20 Compactions Stats:"

    .line 642
    .line 643
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    .line 647
    .line 648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-eqz v1, :cond_4

    .line 662
    .line 663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 668
    .line 669
    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 670
    .line 671
    .line 672
    goto :goto_4

    .line 673
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 674
    .line 675
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    const-string v1, "  use_freezer="

    .line 682
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v1, "  freeze_statsd_sample_rate="

    .line 704
    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .line 724
    .line 725
    const-string v1, "  freeze_debounce_timeout="

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 731
    .line 732
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    const-string v1, "  freeze_exempt_inst_pkg="

    .line 748
    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    const-string v1, "  freeze_binder_enabled="

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .line 790
    .line 791
    const-string v1, "  freeze_binder_threshold="

    .line 792
    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 797
    .line 798
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .line 812
    .line 813
    const-string v1, "  freeze_binder_divisor="

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 819
    .line 820
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    const-string v1, "  freeze_binder_offset="

    .line 836
    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .line 856
    .line 857
    const-string v1, "  freeze_binder_callback_enabled="

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    const-string v1, "  freeze_binder_callback_throttle="

    .line 880
    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 885
    .line 886
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    const-string v1, "  freeze_binder_async_threshold="

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 907
    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 919
    .line 920
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 921
    .line 922
    .line 923
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 925
    .line 926
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    const-string v4, "  Apps frozen: "

    .line 936
    .line 937
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    move v3, v2

    .line 951
    :goto_5
    if-ge v3, v1, :cond_6

    .line 952
    .line 953
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 954
    .line 955
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 960
    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .line 965
    .line 966
    const-string v6, "    "

    .line 967
    .line 968
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 972
    .line 973
    iget-wide v6, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 974
    .line 975
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    const-string v6, ": "

    .line 979
    .line 980
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 984
    .line 985
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    const-string v6, " "

    .line 989
    .line 990
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 994
    .line 995
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 999
    .line 1000
    iget-boolean v4, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    .line 1001
    .line 1002
    if-eqz v4, :cond_5

    .line 1003
    .line 1004
    const-string v4, " (sticky)"

    .line 1005
    .line 1006
    goto :goto_6

    .line 1007
    :catchall_1
    move-exception p0

    .line 1008
    goto :goto_8

    .line 1009
    :cond_5
    const-string v4, ""

    .line 1010
    .line 1011
    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v4

    .line 1018
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    add-int/lit8 v3, v3, 0x1

    .line 1022
    .line 1023
    goto :goto_5

    .line 1024
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1025
    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v1

    .line 1030
    if-nez v1, :cond_7

    .line 1031
    .line 1032
    const-string v1, "  Pending compactions:"

    .line 1033
    .line 1034
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1038
    .line 1039
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    :goto_7
    if-ge v2, v1, :cond_7

    .line 1044
    .line 1045
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 1046
    .line 1047
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1052
    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    const-string v5, "    pid: "

    .line 1059
    .line 1060
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1064
    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v5, ". name: "

    .line 1069
    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1074
    .line 1075
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    const-string v5, ". hasPendingCompact: "

    .line 1079
    .line 1080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1084
    .line 1085
    iget-boolean v3, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 1086
    .line 1087
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    add-int/lit8 v2, v2, 0x1

    .line 1098
    .line 1099
    goto :goto_7

    .line 1100
    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1101
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1102
    .line 1103
    .line 1104
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1105
    const-string p0, "FCA Feature enable:false"

    .line 1106
    .line 1107
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    return-void

    .line 1111
    :goto_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1113
    .line 1114
    .line 1115
    throw p0

    .line 1116
    :goto_9
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1117
    throw p0
.end method

.method public final enqueuePendingTopAppIfNecessaryLSP()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1
.end method

.method public final evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    move-object/from16 v2, p2

    .line 11
    .line 12
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 13
    .line 14
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 15
    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 19
    .line 20
    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 21
    .line 22
    if-gt v3, v6, :cond_1

    .line 23
    .line 24
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 25
    .line 26
    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 27
    .line 28
    if-gt v1, v3, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return v0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const/4 v10, 0x0

    .line 48
    const/16 v11, 0x384

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x1

    .line 56
    move-object v0, p0

    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    move-object/from16 v3, p1

    .line 60
    .line 61
    move-wide v4, v5

    .line 62
    move-object v6, v7

    .line 63
    move v7, v8

    .line 64
    move v8, v9

    .line 65
    move v9, v12

    .line 66
    move v12, v13

    .line 67
    move v13, v14

    .line 68
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method public getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 4
    .line 5
    return p0
.end method

.method public getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 4
    .line 5
    return p0
.end method

.method public getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 4
    .line 5
    return p0
.end method

.method public getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 4
    .line 5
    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final idleUidsLocked()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 14
    .line 15
    const/16 v3, 0x3a

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    if-gtz v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 33
    .line 34
    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 35
    .line 36
    sub-long v6, v4, v6

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v2, 0x1

    .line 48
    sub-int/2addr v1, v2

    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    move-wide v11, v8

    .line 52
    const/4 v13, 0x0

    .line 53
    :goto_0
    if-ltz v1, :cond_9

    .line 54
    .line 55
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 56
    .line 57
    invoke-virtual {v14, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    move-wide/from16 v16, v11

    .line 62
    .line 63
    iget-wide v10, v14, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 64
    .line 65
    move-wide/from16 v18, v4

    .line 66
    .line 67
    iget-wide v3, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 68
    .line 69
    cmp-long v5, v10, v8

    .line 70
    .line 71
    if-lez v5, :cond_2

    .line 72
    .line 73
    iget-boolean v5, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 74
    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    cmp-long v3, v3, v8

    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-wide/from16 v4, v18

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    cmp-long v3, v10, v6

    .line 86
    .line 87
    if-gtz v3, :cond_5

    .line 88
    .line 89
    iget v3, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 90
    .line 91
    const/16 v4, 0x7567

    .line 92
    .line 93
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 94
    .line 95
    .line 96
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 97
    .line 98
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 99
    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_0
    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 103
    .line 104
    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 105
    .line 106
    move-wide/from16 v4, v18

    .line 107
    .line 108
    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 109
    .line 110
    cmp-long v10, v4, v8

    .line 111
    .line 112
    if-lez v10, :cond_4

    .line 113
    .line 114
    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    .line 115
    .line 116
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 118
    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 121
    .line 122
    iget v10, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 123
    .line 124
    invoke-virtual {v3, v10, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_5
    move-wide/from16 v4, v18

    .line 135
    .line 136
    cmp-long v3, v16, v8

    .line 137
    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    cmp-long v3, v16, v10

    .line 141
    .line 142
    if-lez v3, :cond_7

    .line 143
    .line 144
    :cond_6
    move-wide/from16 v16, v10

    .line 145
    .line 146
    :cond_7
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 147
    .line 148
    iget v10, v14, Lcom/android/server/am/UidRecord;->mUid:I

    .line 149
    .line 150
    invoke-virtual {v3, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    move v13, v2

    .line 157
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 158
    .line 159
    move-wide/from16 v11, v16

    .line 160
    .line 161
    const/16 v3, 0x3a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_9
    move-wide/from16 v16, v11

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 173
    .line 174
    .line 175
    :cond_a
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 178
    .line 179
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    .line 180
    .line 181
    if-eqz v1, :cond_d

    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v10, 0x0

    .line 192
    :goto_3
    if-ge v10, v2, :cond_d

    .line 193
    .line 194
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 195
    .line 196
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 201
    .line 202
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 207
    .line 208
    iget-wide v14, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 209
    .line 210
    sub-long/2addr v6, v14

    .line 211
    cmp-long v3, v6, v8

    .line 212
    .line 213
    if-lez v3, :cond_c

    .line 214
    .line 215
    cmp-long v3, v16, v8

    .line 216
    .line 217
    if-eqz v3, :cond_b

    .line 218
    .line 219
    cmp-long v3, v16, v6

    .line 220
    .line 221
    if-lez v3, :cond_c

    .line 222
    .line 223
    :cond_b
    move-wide/from16 v16, v6

    .line 224
    .line 225
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_d
    cmp-long v1, v16, v8

    .line 229
    .line 230
    if-lez v1, :cond_f

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 233
    .line 234
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 235
    .line 236
    add-long v16, v16, v1

    .line 237
    .line 238
    sub-long v1, v16, v4

    .line 239
    .line 240
    if-eqz v13, :cond_e

    .line 241
    .line 242
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 243
    .line 244
    iget-object v3, v3, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 245
    .line 246
    iget v7, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 247
    .line 248
    long-to-int v8, v1

    .line 249
    const-string v9, ""

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v4, 0x3

    .line 253
    const/4 v5, 0x0

    .line 254
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_e
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 260
    .line 261
    const/16 v3, 0x3a

    .line 262
    .line 263
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    .line 265
    .line 266
    :cond_f
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 16
    .line 17
    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x6

    .line 23
    const/4 v5, 0x0

    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    if-gt v2, v8, :cond_5

    .line 41
    .line 42
    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 43
    .line 44
    cmp-long v2, v8, v6

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 53
    .line 54
    iput-wide p2, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 55
    .line 56
    :cond_2
    move v3, v5

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 61
    .line 62
    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 66
    .line 67
    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 68
    .line 69
    :goto_0
    add-long/2addr v8, v10

    .line 70
    cmp-long v2, p2, v8

    .line 71
    .line 72
    if-lez v2, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-gt v2, v4, :cond_6

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    move v3, v5

    .line 79
    :goto_1
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 80
    .line 81
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 84
    .line 85
    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 86
    .line 87
    :goto_2
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 90
    .line 91
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 95
    .line 96
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 97
    .line 98
    :goto_3
    if-eqz v3, :cond_9

    .line 99
    .line 100
    iget-boolean v8, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 101
    .line 102
    if-eqz v8, :cond_8

    .line 103
    .line 104
    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 105
    .line 106
    sub-long v8, p2, v8

    .line 107
    .line 108
    cmp-long v1, v8, v1

    .line 109
    .line 110
    if-lez v1, :cond_9

    .line 111
    .line 112
    :cond_8
    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 113
    .line 114
    iget-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 117
    .line 118
    iput-wide p2, v1, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 119
    .line 120
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_9

    .line 127
    .line 128
    :goto_4
    array-length p3, p2

    .line 129
    if-ge v5, p3, :cond_9

    .line 130
    .line 131
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 132
    .line 133
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 134
    .line 135
    aget-object v1, p2, v5

    .line 136
    .line 137
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 138
    .line 139
    invoke-virtual {p3, v2, v4, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 146
    .line 147
    if-nez v3, :cond_a

    .line 148
    .line 149
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 150
    .line 151
    iget-object p0, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 154
    .line 155
    iput-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 156
    .line 157
    :cond_a
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWakefulnessChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 3
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 13

    .line 6
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 7
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 8
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v11, 0x40

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 10
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 11
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 13
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v7

    .line 14
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, v6

    move v6, v7

    move v7, v9

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_0

    .line 17
    :cond_0
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_1

    .line 18
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0, v4}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 20
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move v8, p1

    .line 23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    .line 29
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1

    throw v0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v8, 0x40

    .line 14
    .line 15
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v10

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move v2, p1

    .line 48
    move-object v4, v0

    .line 49
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 50
    .line 51
    .line 52
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    .line 76
    throw p1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    iput v10, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 5
    .line 6
    iput v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 9
    .line 10
    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 19
    .line 20
    iget-wide v2, v2, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v4, v2, v4

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    .line 32
    .line 33
    xor-int/2addr v2, v12

    .line 34
    move v13, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 37
    .line 38
    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    cmp-long v2, v2, p3

    .line 42
    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    move v13, v10

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v13, v12

    .line 48
    :goto_0
    if-nez v13, :cond_2

    .line 49
    .line 50
    iget-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 51
    .line 52
    cmp-long v2, v2, p3

    .line 53
    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    const-string v2, "OomAdjuster"

    .line 57
    .line 58
    const-string v3, "Not killing cached processes"

    .line 59
    .line 60
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-wide/16 v2, 0x1388

    .line 64
    .line 65
    add-long v2, p3, v2

    .line 66
    .line 67
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 68
    .line 69
    :cond_2
    const v2, 0x7fffffff

    .line 70
    .line 71
    .line 72
    if-eqz v13, :cond_3

    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 75
    .line 76
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 77
    .line 78
    move v14, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v14, v2

    .line 81
    :goto_1
    if-eqz v13, :cond_4

    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 84
    .line 85
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 86
    .line 87
    sub-int/2addr v2, v14

    .line 88
    :cond_4
    move v15, v2

    .line 89
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 90
    .line 91
    if-eqz v2, :cond_9

    .line 92
    .line 93
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 94
    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    :goto_2
    iput v10, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 111
    .line 112
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 125
    .line 126
    .line 127
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 128
    .line 129
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 130
    .line 131
    if-nez v3, :cond_7

    .line 132
    .line 133
    new-instance v3, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 142
    .line 143
    .line 144
    :goto_4
    iput v10, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 145
    .line 146
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 147
    .line 148
    if-nez v3, :cond_8

    .line 149
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 159
    .line 160
    .line 161
    :cond_9
    :goto_5
    sget-boolean v16, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 162
    .line 163
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    .line 164
    .line 165
    float-to-double v8, v2

    .line 166
    if-eqz v16, :cond_a

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    :goto_6
    move-wide v6, v2

    .line 173
    goto :goto_7

    .line 174
    :cond_a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :goto_7
    sub-int/2addr v1, v12

    .line 178
    move v5, v1

    .line 179
    move v1, v10

    .line 180
    move v2, v1

    .line 181
    move v3, v2

    .line 182
    move/from16 v18, v3

    .line 183
    .line 184
    move/from16 v24, v18

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    :goto_8
    const-wide/32 v25, 0x1b7740

    .line 189
    .line 190
    .line 191
    const-wide/16 v29, 0x3e8

    .line 192
    .line 193
    if-ltz v5, :cond_4b

    .line 194
    .line 195
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v19

    .line 199
    move-object/from16 v10, v19

    .line 200
    .line 201
    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 202
    .line 203
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 204
    .line 205
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 206
    .line 207
    if-nez v4, :cond_4a

    .line 208
    .line 209
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 210
    .line 211
    if-eqz v4, :cond_4a

    .line 212
    .line 213
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 214
    .line 215
    if-eqz v4, :cond_b

    .line 216
    .line 217
    const-string v4, "OomAdjuster"

    .line 218
    .line 219
    move/from16 v20, v1

    .line 220
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    move/from16 v21, v2

    .line 224
    .line 225
    const-string v2, "Excessive Resource Usage detectd task: "

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 231
    .line 232
    invoke-static {v2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, " : "

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_b
    move/from16 v20, v1

    .line 260
    .line 261
    move/from16 v21, v2

    .line 262
    .line 263
    :goto_9
    iget v1, v12, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 264
    .line 265
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 266
    .line 267
    if-ne v1, v2, :cond_c

    .line 268
    .line 269
    const/16 v22, 0x1

    .line 270
    .line 271
    move/from16 v4, v20

    .line 272
    .line 273
    move-object/from16 v1, p0

    .line 274
    .line 275
    move/from16 v39, v21

    .line 276
    .line 277
    move-object v2, v10

    .line 278
    move/from16 v40, v3

    .line 279
    .line 280
    move/from16 v3, p9

    .line 281
    .line 282
    move/from16 v41, v4

    .line 283
    .line 284
    move/from16 v19, v5

    .line 285
    .line 286
    move-wide/from16 v4, p3

    .line 287
    .line 288
    move-wide/from16 v42, v6

    .line 289
    .line 290
    move-wide/from16 v6, p5

    .line 291
    .line 292
    move-wide/from16 v20, v8

    .line 293
    .line 294
    move/from16 v8, p1

    .line 295
    .line 296
    move/from16 v9, v22

    .line 297
    .line 298
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_c
    move/from16 v40, v3

    .line 303
    .line 304
    move/from16 v19, v5

    .line 305
    .line 306
    move-wide/from16 v42, v6

    .line 307
    .line 308
    move/from16 v41, v20

    .line 309
    .line 310
    move/from16 v39, v21

    .line 311
    .line 312
    move-wide/from16 v20, v8

    .line 313
    .line 314
    :goto_a
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    .line 315
    .line 316
    if-eqz v1, :cond_d

    .line 317
    .line 318
    invoke-static {v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 319
    .line 320
    .line 321
    move v5, v13

    .line 322
    move v3, v14

    .line 323
    move/from16 v9, v24

    .line 324
    .line 325
    move/from16 v8, v39

    .line 326
    .line 327
    move/from16 v6, v40

    .line 328
    .line 329
    move/from16 v7, v41

    .line 330
    .line 331
    const/4 v4, 0x0

    .line 332
    goto/16 :goto_28

    .line 333
    .line 334
    :cond_d
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 337
    .line 338
    const/16 v3, 0x11

    .line 339
    .line 340
    const/16 v5, 0x13

    .line 341
    .line 342
    if-eqz v2, :cond_36

    .line 343
    .line 344
    sget-boolean v6, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    .line 345
    .line 346
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 347
    .line 348
    if-eqz v6, :cond_16

    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 354
    .line 355
    if-eqz v6, :cond_16

    .line 356
    .line 357
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 358
    .line 359
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 364
    .line 365
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 366
    .line 367
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 368
    .line 369
    const/16 v4, 0x64

    .line 370
    .line 371
    if-ge v6, v4, :cond_11

    .line 372
    .line 373
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 374
    .line 375
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    if-gt v4, v6, :cond_f

    .line 380
    .line 381
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 382
    .line 383
    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 384
    .line 385
    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-ne v4, v6, :cond_e

    .line 390
    .line 391
    iget v4, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 392
    .line 393
    if-eq v4, v5, :cond_e

    .line 394
    .line 395
    const/4 v2, 0x0

    .line 396
    const/4 v4, 0x1

    .line 397
    goto/16 :goto_13

    .line 398
    .line 399
    :cond_e
    :goto_b
    const/4 v4, 0x1

    .line 400
    :goto_c
    const/4 v6, 0x0

    .line 401
    goto :goto_d

    .line 402
    :cond_f
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 403
    .line 404
    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 405
    .line 406
    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    if-ne v4, v6, :cond_10

    .line 411
    .line 412
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 413
    .line 414
    if-eqz v4, :cond_10

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :cond_10
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 418
    .line 419
    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-ne v4, v6, :cond_14

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_11
    iget-boolean v4, v2, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    .line 427
    .line 428
    if-eqz v4, :cond_14

    .line 429
    .line 430
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 431
    .line 432
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-lt v4, v6, :cond_12

    .line 437
    .line 438
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 439
    .line 440
    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 441
    .line 442
    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-gt v4, v6, :cond_12

    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_12
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 450
    .line 451
    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 452
    .line 453
    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-ne v4, v6, :cond_13

    .line 458
    .line 459
    const/4 v4, 0x0

    .line 460
    const/4 v6, 0x1

    .line 461
    goto :goto_d

    .line 462
    :cond_13
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 463
    .line 464
    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    if-ne v4, v6, :cond_14

    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_14
    const/4 v4, 0x0

    .line 472
    goto :goto_c

    .line 473
    :goto_d
    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 474
    .line 475
    if-eq v7, v3, :cond_15

    .line 476
    .line 477
    goto :goto_e

    .line 478
    :cond_15
    iget v7, v10, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 479
    .line 480
    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 481
    .line 482
    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    if-ne v7, v8, :cond_17

    .line 487
    .line 488
    const/4 v4, 0x1

    .line 489
    goto :goto_e

    .line 490
    :cond_16
    const/4 v4, 0x0

    .line 491
    const/4 v6, 0x0

    .line 492
    :cond_17
    :goto_e
    iget v7, v2, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 493
    .line 494
    const/4 v8, 0x1

    .line 495
    if-eq v7, v8, :cond_18

    .line 496
    .line 497
    iget v2, v2, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 498
    .line 499
    if-ne v2, v8, :cond_19

    .line 500
    .line 501
    :cond_18
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 502
    .line 503
    if-lez v2, :cond_19

    .line 504
    .line 505
    const/4 v7, 0x3

    .line 506
    if-ge v2, v7, :cond_19

    .line 507
    .line 508
    move v6, v8

    .line 509
    :cond_19
    if-eq v4, v8, :cond_1a

    .line 510
    .line 511
    if-eqz v6, :cond_1a

    .line 512
    .line 513
    const/4 v4, 0x2

    .line 514
    :cond_1a
    invoke-static {v10}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_1b

    .line 519
    .line 520
    const/4 v4, 0x2

    .line 521
    :cond_1b
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 522
    .line 523
    const/4 v6, 0x1

    .line 524
    if-ne v2, v6, :cond_1c

    .line 525
    .line 526
    const/16 v31, 0x3

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_1c
    move/from16 v31, v4

    .line 530
    .line 531
    :goto_f
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 532
    .line 533
    if-nez v2, :cond_1d

    .line 534
    .line 535
    const/16 v28, 0x4

    .line 536
    .line 537
    goto :goto_10

    .line 538
    :cond_1d
    move/from16 v28, v31

    .line 539
    .line 540
    :goto_10
    if-ne v2, v6, :cond_1e

    .line 541
    .line 542
    const/16 v27, 0x5

    .line 543
    .line 544
    goto :goto_11

    .line 545
    :cond_1e
    move/from16 v27, v28

    .line 546
    .line 547
    :goto_11
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    .line 548
    .line 549
    if-eqz v2, :cond_20

    .line 550
    .line 551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 552
    .line 553
    .line 554
    move-result-wide v6

    .line 555
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    .line 556
    .line 557
    sub-long/2addr v6, v8

    .line 558
    cmp-long v2, v6, v29

    .line 559
    .line 560
    if-lez v2, :cond_1f

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    .line 564
    .line 565
    goto :goto_12

    .line 566
    :cond_1f
    const/16 v27, 0x6

    .line 567
    .line 568
    :cond_20
    :goto_12
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 569
    .line 570
    const/4 v4, 0x1

    .line 571
    if-ne v2, v4, :cond_21

    .line 572
    .line 573
    const/16 v2, 0x8

    .line 574
    .line 575
    move/from16 v27, v2

    .line 576
    .line 577
    :cond_21
    move/from16 v2, v27

    .line 578
    .line 579
    :goto_13
    if-lez v2, :cond_36

    .line 580
    .line 581
    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 582
    .line 583
    const/16 v7, 0x352

    .line 584
    .line 585
    const-wide/16 v8, -0x1

    .line 586
    .line 587
    if-ne v6, v4, :cond_27

    .line 588
    .line 589
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 590
    .line 591
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 595
    .line 596
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 597
    .line 598
    packed-switch v3, :pswitch_data_0

    .line 599
    .line 600
    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 602
    .line 603
    .line 604
    move-result-wide v3

    .line 605
    iget-wide v5, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 606
    .line 607
    sub-long/2addr v3, v5

    .line 608
    cmp-long v5, v5, v8

    .line 609
    .line 610
    const-string v6, "ActivityManager"

    .line 611
    .line 612
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 613
    .line 614
    if-eqz v5, :cond_23

    .line 615
    .line 616
    const-wide/16 v25, 0xbb8

    .line 617
    .line 618
    cmp-long v5, v3, v25

    .line 619
    .line 620
    if-lez v5, :cond_23

    .line 621
    .line 622
    sget-wide v25, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    .line 623
    .line 624
    const-wide/16 v29, 0x2af8

    .line 625
    .line 626
    cmp-long v5, v25, v29

    .line 627
    .line 628
    if-gtz v5, :cond_23

    .line 629
    .line 630
    iget v2, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 631
    .line 632
    if-le v2, v7, :cond_22

    .line 633
    .line 634
    const-string v2, "AL_Kill : over 3 sec"

    .line 635
    .line 636
    const/16 v5, 0xd

    .line 637
    .line 638
    invoke-virtual {v10, v5, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 639
    .line 640
    .line 641
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 642
    .line 643
    if-eqz v2, :cond_22

    .line 644
    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string v5, "AL_Kill : over 3 sec: "

    .line 648
    .line 649
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    :cond_22
    const/4 v2, 0x0

    .line 663
    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 664
    .line 665
    const-wide/16 v2, -0x1

    .line 666
    .line 667
    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 668
    .line 669
    goto :goto_14

    .line 670
    :cond_23
    iget v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 671
    .line 672
    iget v4, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 673
    .line 674
    if-ge v3, v4, :cond_24

    .line 675
    .line 676
    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    invoke-virtual {v3, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    iget v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 683
    .line 684
    const/4 v4, 0x1

    .line 685
    add-int/2addr v3, v4

    .line 686
    iput v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 687
    .line 688
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 689
    .line 690
    if-eqz v3, :cond_26

    .line 691
    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    const-string v4, "Active App Launch process < 2 : "

    .line 695
    .line 696
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 700
    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v4, ", "

    .line 705
    .line 706
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 710
    .line 711
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    iget v2, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 718
    .line 719
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    iget-wide v4, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 726
    .line 727
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    goto :goto_14

    .line 738
    :cond_24
    iget v2, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 739
    .line 740
    if-le v2, v7, :cond_25

    .line 741
    .line 742
    const-string v2, "AL_Kill : over 1 slots"

    .line 743
    .line 744
    const/16 v3, 0xd

    .line 745
    .line 746
    invoke-virtual {v10, v3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :cond_25
    const/4 v2, 0x0

    .line 750
    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 751
    .line 752
    const-wide/16 v2, -0x1

    .line 753
    .line 754
    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 755
    .line 756
    :cond_26
    :goto_14
    :pswitch_0
    move v5, v13

    .line 757
    move/from16 v44, v14

    .line 758
    .line 759
    move/from16 v9, v24

    .line 760
    .line 761
    move/from16 v8, v39

    .line 762
    .line 763
    move/from16 v6, v40

    .line 764
    .line 765
    move/from16 v7, v41

    .line 766
    .line 767
    const/4 v4, 0x0

    .line 768
    goto/16 :goto_20

    .line 769
    .line 770
    :cond_27
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 771
    .line 772
    if-nez v4, :cond_2d

    .line 773
    .line 774
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 775
    .line 776
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 777
    .line 778
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 782
    .line 783
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 784
    .line 785
    packed-switch v3, :pswitch_data_1

    .line 786
    .line 787
    .line 788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 789
    .line 790
    .line 791
    move-result-wide v3

    .line 792
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 793
    .line 794
    sub-long/2addr v3, v8

    .line 795
    iget-object v6, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 796
    .line 797
    const-string v7, " slots kill a"

    .line 798
    .line 799
    if-eqz v6, :cond_2a

    .line 800
    .line 801
    iget v5, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 802
    .line 803
    if-nez v5, :cond_28

    .line 804
    .line 805
    move v5, v13

    .line 806
    move/from16 v44, v14

    .line 807
    .line 808
    iget-wide v13, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 809
    .line 810
    cmp-long v8, v8, v13

    .line 811
    .line 812
    if-lez v8, :cond_29

    .line 813
    .line 814
    const-wide/16 v8, -0x1

    .line 815
    .line 816
    iput-wide v8, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 817
    .line 818
    const/4 v8, -0x1

    .line 819
    iput v8, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 820
    .line 821
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 822
    .line 823
    iget v9, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 824
    .line 825
    const/16 v13, 0x13

    .line 826
    .line 827
    if-lt v9, v13, :cond_29

    .line 828
    .line 829
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 830
    .line 831
    const/16 v9, 0x352

    .line 832
    .line 833
    if-le v8, v9, :cond_29

    .line 834
    .line 835
    new-instance v8, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    const-string v9, "ML_Kill: over "

    .line 838
    .line 839
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget v9, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    .line 843
    .line 844
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    const/16 v9, 0xd

    .line 855
    .line 856
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto :goto_15

    .line 860
    :cond_28
    move v5, v13

    .line 861
    move/from16 v44, v14

    .line 862
    .line 863
    :cond_29
    :goto_15
    iput-object v10, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 864
    .line 865
    goto :goto_16

    .line 866
    :cond_2a
    move v5, v13

    .line 867
    move/from16 v44, v14

    .line 868
    .line 869
    new-instance v6, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    const-string v8, "app launch time is "

    .line 872
    .line 873
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 877
    .line 878
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v8, " tmp time is "

    .line 882
    .line 883
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v6

    .line 890
    const-string v8, "DynamicHiddenApp_BGProtectManager"

    .line 891
    .line 892
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .line 894
    .line 895
    iput-object v10, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 896
    .line 897
    :goto_16
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 898
    .line 899
    if-nez v6, :cond_2b

    .line 900
    .line 901
    iget-wide v8, v10, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 902
    .line 903
    const-wide/16 v13, -0x1

    .line 904
    .line 905
    cmp-long v6, v8, v13

    .line 906
    .line 907
    if-eqz v6, :cond_2b

    .line 908
    .line 909
    cmp-long v6, v3, v25

    .line 910
    .line 911
    if-lez v6, :cond_2b

    .line 912
    .line 913
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 914
    .line 915
    iget v8, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 916
    .line 917
    const/16 v9, 0x13

    .line 918
    .line 919
    if-lt v8, v9, :cond_2b

    .line 920
    .line 921
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 922
    .line 923
    const/16 v8, 0x352

    .line 924
    .line 925
    if-le v6, v8, :cond_2b

    .line 926
    .line 927
    new-instance v6, Ljava/lang/StringBuilder;

    .line 928
    .line 929
    const-string v8, "ML_Kill: timeout "

    .line 930
    .line 931
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    const/16 v4, 0xd

    .line 945
    .line 946
    invoke-virtual {v10, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 947
    .line 948
    .line 949
    const/4 v4, 0x0

    .line 950
    iput-object v4, v2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 951
    .line 952
    goto :goto_18

    .line 953
    :cond_2b
    :goto_17
    const/4 v4, 0x0

    .line 954
    goto :goto_18

    .line 955
    :pswitch_1
    move v5, v13

    .line 956
    move/from16 v44, v14

    .line 957
    .line 958
    goto :goto_17

    .line 959
    :cond_2c
    :goto_18
    move/from16 v9, v24

    .line 960
    .line 961
    move/from16 v8, v39

    .line 962
    .line 963
    :goto_19
    move/from16 v6, v40

    .line 964
    .line 965
    move/from16 v7, v41

    .line 966
    .line 967
    goto/16 :goto_20

    .line 968
    .line 969
    :cond_2d
    move v5, v13

    .line 970
    move/from16 v44, v14

    .line 971
    .line 972
    const/4 v4, 0x0

    .line 973
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 974
    .line 975
    const/16 v7, 0x10

    .line 976
    .line 977
    if-eq v6, v7, :cond_2f

    .line 978
    .line 979
    if-eq v6, v3, :cond_2f

    .line 980
    .line 981
    const/16 v7, 0x13

    .line 982
    .line 983
    if-eq v6, v7, :cond_2e

    .line 984
    .line 985
    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 986
    .line 987
    const/4 v7, 0x1

    .line 988
    add-int/2addr v6, v7

    .line 989
    iput v6, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 990
    .line 991
    :cond_2e
    :goto_1a
    const/4 v6, 0x2

    .line 992
    goto :goto_1b

    .line 993
    :cond_2f
    const/4 v7, 0x1

    .line 994
    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 995
    .line 996
    add-int/2addr v6, v7

    .line 997
    iput v6, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 998
    .line 999
    goto :goto_1a

    .line 1000
    :goto_1b
    if-ne v2, v6, :cond_2c

    .line 1001
    .line 1002
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1003
    .line 1004
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1008
    .line 1009
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1010
    .line 1011
    const/16 v7, 0x10

    .line 1012
    .line 1013
    if-eq v6, v7, :cond_32

    .line 1014
    .line 1015
    if-eq v6, v3, :cond_32

    .line 1016
    .line 1017
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1018
    .line 1019
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    .line 1021
    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v6

    .line 1026
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1027
    .line 1028
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1029
    .line 1030
    const/16 v8, 0x13

    .line 1031
    .line 1032
    if-ne v3, v8, :cond_30

    .line 1033
    .line 1034
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1035
    .line 1036
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1037
    .line 1038
    move/from16 v8, v39

    .line 1039
    .line 1040
    if-le v8, v2, :cond_31

    .line 1041
    .line 1042
    iget-wide v2, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1043
    .line 1044
    cmp-long v2, v2, p7

    .line 1045
    .line 1046
    if-gez v2, :cond_31

    .line 1047
    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    const-string/jumbo v3, "empty for "

    .line 1051
    .line 1052
    .line 1053
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    iget-wide v13, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1057
    .line 1058
    sub-long/2addr v6, v13

    .line 1059
    div-long v6, v6, v29

    .line 1060
    .line 1061
    const-string/jumbo v3, "s"

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v2, v6, v7, v3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v35

    .line 1068
    const-string/jumbo v36, "empty for too long"

    .line 1069
    .line 1070
    .line 1071
    const/16 v34, 0x4

    .line 1072
    .line 1073
    const/16 v37, 0x1

    .line 1074
    .line 1075
    const/16 v33, 0xd

    .line 1076
    .line 1077
    const/16 v38, 0x1

    .line 1078
    .line 1079
    move-object/from16 v32, v10

    .line 1080
    .line 1081
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_1c

    .line 1085
    :cond_30
    move/from16 v8, v39

    .line 1086
    .line 1087
    :cond_31
    :goto_1c
    move/from16 v9, v24

    .line 1088
    .line 1089
    goto :goto_19

    .line 1090
    :cond_32
    move/from16 v8, v39

    .line 1091
    .line 1092
    move/from16 v6, v40

    .line 1093
    .line 1094
    add-int/lit8 v3, v6, 0x1

    .line 1095
    .line 1096
    if-le v3, v15, :cond_33

    .line 1097
    .line 1098
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 1099
    .line 1100
    const/4 v7, 0x2

    .line 1101
    if-ne v6, v7, :cond_33

    .line 1102
    .line 1103
    const-string v6, "ActivityManager"

    .line 1104
    .line 1105
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    const-string v9, "PWHL_KNOX - "

    .line 1108
    .line 1109
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1113
    .line 1114
    const-string v13, " in Cached"

    .line 1115
    .line 1116
    invoke-static {v7, v9, v13, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 1120
    .line 1121
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1122
    .line 1123
    if-eqz v2, :cond_33

    .line 1124
    .line 1125
    iget v6, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1126
    .line 1127
    iget v7, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1128
    .line 1129
    const-string v9, "Convert from hidden to empty knox"

    .line 1130
    .line 1131
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 1132
    .line 1133
    iget-object v13, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1134
    .line 1135
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1136
    .line 1137
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1138
    .line 1139
    .line 1140
    monitor-enter v13

    .line 1141
    :try_start_0
    iget-object v14, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1142
    .line 1143
    invoke-virtual {v14, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v6

    .line 1147
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1148
    .line 1149
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1150
    .line 1151
    iget-object v7, v2, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    .line 1152
    .line 1153
    iput-object v6, v7, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 1154
    .line 1155
    iput-object v9, v7, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    .line 1156
    .line 1157
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1158
    .line 1159
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1160
    .line 1161
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    .line 1163
    .line 1164
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1166
    .line 1167
    .line 1168
    goto :goto_1d

    .line 1169
    :catchall_0
    move-exception v0

    .line 1170
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1172
    .line 1173
    .line 1174
    throw v0

    .line 1175
    :cond_33
    :goto_1d
    iget v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1176
    .line 1177
    if-eqz v2, :cond_35

    .line 1178
    .line 1179
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1180
    .line 1181
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1182
    .line 1183
    move/from16 v7, v41

    .line 1184
    .line 1185
    if-ne v7, v6, :cond_34

    .line 1186
    .line 1187
    move/from16 v9, v24

    .line 1188
    .line 1189
    if-ne v9, v2, :cond_34

    .line 1190
    .line 1191
    add-int/lit8 v18, v18, 0x1

    .line 1192
    .line 1193
    move v6, v7

    .line 1194
    move/from16 v24, v9

    .line 1195
    .line 1196
    goto :goto_1e

    .line 1197
    :cond_34
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1198
    .line 1199
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1200
    .line 1201
    move/from16 v24, v2

    .line 1202
    .line 1203
    goto :goto_1e

    .line 1204
    :cond_35
    const/4 v6, 0x0

    .line 1205
    const/16 v24, 0x0

    .line 1206
    .line 1207
    :goto_1e
    move v7, v6

    .line 1208
    move v2, v8

    .line 1209
    move v6, v3

    .line 1210
    :goto_1f
    move/from16 v3, v44

    .line 1211
    .line 1212
    goto/16 :goto_25

    .line 1213
    .line 1214
    :cond_36
    move v5, v13

    .line 1215
    move/from16 v44, v14

    .line 1216
    .line 1217
    move/from16 v9, v24

    .line 1218
    .line 1219
    move/from16 v8, v39

    .line 1220
    .line 1221
    move/from16 v6, v40

    .line 1222
    .line 1223
    move/from16 v7, v41

    .line 1224
    .line 1225
    const/4 v4, 0x0

    .line 1226
    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1227
    .line 1228
    const/16 v13, 0x10

    .line 1229
    .line 1230
    if-eq v2, v13, :cond_3e

    .line 1231
    .line 1232
    if-eq v2, v3, :cond_3e

    .line 1233
    .line 1234
    const/16 v3, 0x13

    .line 1235
    .line 1236
    if-eq v2, v3, :cond_37

    .line 1237
    .line 1238
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1239
    .line 1240
    const/4 v3, 0x1

    .line 1241
    add-int/2addr v2, v3

    .line 1242
    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1243
    .line 1244
    goto :goto_20

    .line 1245
    :cond_37
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 1246
    .line 1247
    if-eqz v2, :cond_38

    .line 1248
    .line 1249
    goto :goto_20

    .line 1250
    :cond_38
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1251
    .line 1252
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1253
    .line 1254
    if-le v8, v2, :cond_39

    .line 1255
    .line 1256
    iget-wide v2, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1257
    .line 1258
    cmp-long v2, v2, p7

    .line 1259
    .line 1260
    if-gez v2, :cond_39

    .line 1261
    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    const-string/jumbo v3, "empty for "

    .line 1265
    .line 1266
    .line 1267
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    iget-wide v13, v10, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 1271
    .line 1272
    sub-long v13, p3, v13

    .line 1273
    .line 1274
    div-long v13, v13, v29

    .line 1275
    .line 1276
    const-string/jumbo v3, "s"

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v2, v13, v14, v3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v35

    .line 1283
    const-string/jumbo v36, "empty for too long"

    .line 1284
    .line 1285
    .line 1286
    const/16 v33, 0xd

    .line 1287
    .line 1288
    const/16 v38, 0x1

    .line 1289
    .line 1290
    const/16 v34, 0x4

    .line 1291
    .line 1292
    const/16 v37, 0x1

    .line 1293
    .line 1294
    move-object/from16 v32, v10

    .line 1295
    .line 1296
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1297
    .line 1298
    .line 1299
    :goto_20
    move v2, v8

    .line 1300
    move/from16 v24, v9

    .line 1301
    .line 1302
    goto :goto_1f

    .line 1303
    :cond_39
    add-int/lit8 v2, v8, 0x1

    .line 1304
    .line 1305
    move/from16 v3, v44

    .line 1306
    .line 1307
    if-le v2, v3, :cond_3b

    .line 1308
    .line 1309
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1310
    .line 1311
    iget-object v8, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 1312
    .line 1313
    invoke-virtual {v8, v10}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v8

    .line 1317
    if-eqz v8, :cond_3a

    .line 1318
    .line 1319
    goto :goto_22

    .line 1320
    :cond_3a
    const-string/jumbo v8, "empty #"

    .line 1321
    .line 1322
    .line 1323
    invoke-static {v2, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v35

    .line 1327
    const-string/jumbo v36, "too many empty"

    .line 1328
    .line 1329
    .line 1330
    const/16 v33, 0xd

    .line 1331
    .line 1332
    const/16 v38, 0x1

    .line 1333
    .line 1334
    const/16 v34, 0x3

    .line 1335
    .line 1336
    const/16 v37, 0x1

    .line 1337
    .line 1338
    move-object/from16 v32, v10

    .line 1339
    .line 1340
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1341
    .line 1342
    .line 1343
    goto :goto_22

    .line 1344
    :cond_3b
    if-eqz v16, :cond_3d

    .line 1345
    .line 1346
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1347
    .line 1348
    iget-object v8, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 1349
    .line 1350
    invoke-virtual {v8, v10}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v8

    .line 1354
    if-eqz v8, :cond_3c

    .line 1355
    .line 1356
    goto :goto_22

    .line 1357
    :cond_3c
    move/from16 v24, v9

    .line 1358
    .line 1359
    :goto_21
    move-object/from16 v17, v10

    .line 1360
    .line 1361
    goto/16 :goto_25

    .line 1362
    .line 1363
    :cond_3d
    :goto_22
    move/from16 v24, v9

    .line 1364
    .line 1365
    goto/16 :goto_25

    .line 1366
    .line 1367
    :cond_3e
    move/from16 v3, v44

    .line 1368
    .line 1369
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1370
    .line 1371
    const/4 v13, 0x1

    .line 1372
    add-int/2addr v2, v13

    .line 1373
    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1374
    .line 1375
    add-int/lit8 v2, v6, 0x1

    .line 1376
    .line 1377
    iget v6, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 1378
    .line 1379
    if-eqz v6, :cond_40

    .line 1380
    .line 1381
    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1382
    .line 1383
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1384
    .line 1385
    if-ne v7, v13, :cond_3f

    .line 1386
    .line 1387
    if-ne v9, v6, :cond_3f

    .line 1388
    .line 1389
    add-int/lit8 v18, v18, 0x1

    .line 1390
    .line 1391
    move/from16 v24, v9

    .line 1392
    .line 1393
    goto :goto_23

    .line 1394
    :cond_3f
    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1395
    .line 1396
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1397
    .line 1398
    move/from16 v24, v6

    .line 1399
    .line 1400
    goto :goto_23

    .line 1401
    :cond_40
    const/4 v7, 0x0

    .line 1402
    const/16 v24, 0x0

    .line 1403
    .line 1404
    :goto_23
    sub-int v6, v2, v18

    .line 1405
    .line 1406
    if-le v6, v15, :cond_43

    .line 1407
    .line 1408
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1409
    .line 1410
    const/16 v9, 0x10

    .line 1411
    .line 1412
    if-eq v6, v9, :cond_41

    .line 1413
    .line 1414
    goto :goto_24

    .line 1415
    :cond_41
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 1416
    .line 1417
    .line 1418
    move-result v6

    .line 1419
    if-eqz v6, :cond_42

    .line 1420
    .line 1421
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    .line 1422
    .line 1423
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1424
    .line 1425
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v6

    .line 1429
    if-eqz v6, :cond_42

    .line 1430
    .line 1431
    const-string v6, "GATE"

    .line 1432
    .line 1433
    const-string v9, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    .line 1434
    .line 1435
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    .line 1437
    .line 1438
    :cond_42
    const-string/jumbo v6, "cached #"

    .line 1439
    .line 1440
    .line 1441
    invoke-static {v2, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v35

    .line 1445
    const-string/jumbo v36, "too many cached"

    .line 1446
    .line 1447
    .line 1448
    const/16 v33, 0xd

    .line 1449
    .line 1450
    const/16 v38, 0x1

    .line 1451
    .line 1452
    const/16 v34, 0x2

    .line 1453
    .line 1454
    const/16 v37, 0x1

    .line 1455
    .line 1456
    move-object/from16 v32, v10

    .line 1457
    .line 1458
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1459
    .line 1460
    .line 1461
    goto :goto_24

    .line 1462
    :cond_43
    if-eqz v16, :cond_45

    .line 1463
    .line 1464
    iget v6, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1465
    .line 1466
    const/16 v9, 0x10

    .line 1467
    .line 1468
    if-eq v6, v9, :cond_44

    .line 1469
    .line 1470
    goto :goto_24

    .line 1471
    :cond_44
    move v6, v2

    .line 1472
    move v2, v8

    .line 1473
    goto :goto_21

    .line 1474
    :cond_45
    :goto_24
    move v6, v2

    .line 1475
    move v2, v8

    .line 1476
    :goto_25
    iget-boolean v8, v10, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 1477
    .line 1478
    if-eqz v8, :cond_46

    .line 1479
    .line 1480
    iget v8, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1481
    .line 1482
    packed-switch v8, :pswitch_data_2

    .line 1483
    .line 1484
    .line 1485
    goto :goto_26

    .line 1486
    :pswitch_2
    const-string v8, "OomAdjuster"

    .line 1487
    .line 1488
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    const-string v13, "ERU task kill: "

    .line 1491
    .line 1492
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v13

    .line 1499
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v9

    .line 1506
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    .line 1508
    .line 1509
    const-string v8, "Excessive resource usage"

    .line 1510
    .line 1511
    const/16 v9, 0x9

    .line 1512
    .line 1513
    invoke-virtual {v10, v9, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    :cond_46
    :goto_26
    iget-boolean v8, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 1517
    .line 1518
    if-eqz v8, :cond_47

    .line 1519
    .line 1520
    iget-object v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1521
    .line 1522
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 1523
    .line 1524
    .line 1525
    move-result v8

    .line 1526
    if-gtz v8, :cond_47

    .line 1527
    .line 1528
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 1529
    .line 1530
    if-nez v8, :cond_47

    .line 1531
    .line 1532
    const-string/jumbo v36, "isolated not needed"

    .line 1533
    .line 1534
    .line 1535
    const/16 v33, 0xd

    .line 1536
    .line 1537
    const/16 v38, 0x1

    .line 1538
    .line 1539
    const/16 v34, 0x11

    .line 1540
    .line 1541
    const/16 v37, 0x1

    .line 1542
    .line 1543
    move-object/from16 v32, v10

    .line 1544
    .line 1545
    move-object/from16 v35, v36

    .line 1546
    .line 1547
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1548
    .line 1549
    .line 1550
    goto :goto_27

    .line 1551
    :cond_47
    iget-boolean v8, v10, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 1552
    .line 1553
    if-eqz v8, :cond_48

    .line 1554
    .line 1555
    iget-object v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 1556
    .line 1557
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1558
    .line 1559
    .line 1560
    move-result v1

    .line 1561
    if-gtz v1, :cond_48

    .line 1562
    .line 1563
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1564
    .line 1565
    if-nez v1, :cond_48

    .line 1566
    .line 1567
    const-string/jumbo v36, "sandbox not needed"

    .line 1568
    .line 1569
    .line 1570
    const/16 v33, 0xd

    .line 1571
    .line 1572
    const/16 v38, 0x1

    .line 1573
    .line 1574
    const/16 v34, 0x1c

    .line 1575
    .line 1576
    const/16 v37, 0x1

    .line 1577
    .line 1578
    move-object/from16 v32, v10

    .line 1579
    .line 1580
    move-object/from16 v35, v36

    .line 1581
    .line 1582
    invoke-virtual/range {v32 .. v38}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1583
    .line 1584
    .line 1585
    goto :goto_27

    .line 1586
    :cond_48
    invoke-static {v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1587
    .line 1588
    .line 1589
    :goto_27
    iget v1, v12, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1590
    .line 1591
    const/16 v8, 0xe

    .line 1592
    .line 1593
    if-lt v1, v8, :cond_49

    .line 1594
    .line 1595
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 1596
    .line 1597
    :cond_49
    move v1, v7

    .line 1598
    goto :goto_29

    .line 1599
    :cond_4a
    move/from16 v19, v5

    .line 1600
    .line 1601
    move-wide/from16 v42, v6

    .line 1602
    .line 1603
    move-wide/from16 v20, v8

    .line 1604
    .line 1605
    move v5, v13

    .line 1606
    move/from16 v9, v24

    .line 1607
    .line 1608
    const/4 v4, 0x0

    .line 1609
    move v7, v1

    .line 1610
    move v8, v2

    .line 1611
    move v6, v3

    .line 1612
    move v3, v14

    .line 1613
    :goto_28
    move v1, v7

    .line 1614
    move v2, v8

    .line 1615
    move/from16 v24, v9

    .line 1616
    .line 1617
    :goto_29
    add-int/lit8 v7, v19, -0x1

    .line 1618
    .line 1619
    move v14, v3

    .line 1620
    move v13, v5

    .line 1621
    move v3, v6

    .line 1622
    move v5, v7

    .line 1623
    move-wide/from16 v8, v20

    .line 1624
    .line 1625
    move-wide/from16 v6, v42

    .line 1626
    .line 1627
    const/4 v12, 0x1

    .line 1628
    goto/16 :goto_8

    .line 1629
    .line 1630
    :cond_4b
    move-wide/from16 v42, v6

    .line 1631
    .line 1632
    move-wide/from16 v20, v8

    .line 1633
    .line 1634
    move v5, v13

    .line 1635
    const/4 v4, 0x0

    .line 1636
    const/4 v7, 0x2

    .line 1637
    move v8, v2

    .line 1638
    move v6, v3

    .line 1639
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1640
    .line 1641
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1642
    .line 1643
    .line 1644
    move-result v1

    .line 1645
    if-nez v1, :cond_51

    .line 1646
    .line 1647
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1648
    .line 1649
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1650
    .line 1651
    .line 1652
    move-result v2

    .line 1653
    if-nez v2, :cond_4c

    .line 1654
    .line 1655
    const/4 v7, 0x0

    .line 1656
    goto :goto_2c

    .line 1657
    :cond_4c
    const/16 v3, 0x34

    .line 1658
    .line 1659
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v9

    .line 1663
    const/16 v10, 0xb

    .line 1664
    .line 1665
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1666
    .line 1667
    .line 1668
    const/4 v11, 0x0

    .line 1669
    const/4 v12, 0x0

    .line 1670
    :goto_2a
    if-ge v11, v2, :cond_50

    .line 1671
    .line 1672
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v13

    .line 1676
    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 1677
    .line 1678
    iget v13, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 1679
    .line 1680
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v14

    .line 1684
    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 1685
    .line 1686
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1687
    .line 1688
    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 1689
    .line 1690
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v15

    .line 1694
    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 1695
    .line 1696
    iget v15, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1697
    .line 1698
    if-lez v13, :cond_4d

    .line 1699
    .line 1700
    const/16 v7, 0x3e9

    .line 1701
    .line 1702
    if-ne v14, v7, :cond_4e

    .line 1703
    .line 1704
    :cond_4d
    const/4 v7, 0x0

    .line 1705
    goto :goto_2b

    .line 1706
    :cond_4e
    const/4 v7, 0x3

    .line 1707
    if-lt v12, v7, :cond_4f

    .line 1708
    .line 1709
    invoke-static {v9, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1713
    .line 1714
    .line 1715
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1719
    .line 1720
    .line 1721
    const/4 v12, 0x0

    .line 1722
    :cond_4f
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1729
    .line 1730
    .line 1731
    const/4 v7, 0x0

    .line 1732
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1733
    .line 1734
    .line 1735
    const/4 v13, 0x1

    .line 1736
    add-int/2addr v12, v13

    .line 1737
    :goto_2b
    add-int/lit8 v11, v11, 0x1

    .line 1738
    .line 1739
    const/4 v7, 0x2

    .line 1740
    goto :goto_2a

    .line 1741
    :cond_50
    const/4 v7, 0x0

    .line 1742
    invoke-static {v9, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1743
    .line 1744
    .line 1745
    :goto_2c
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 1746
    .line 1747
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1748
    .line 1749
    .line 1750
    goto :goto_2d

    .line 1751
    :cond_51
    const/4 v7, 0x0

    .line 1752
    :goto_2d
    if-eqz v16, :cond_52

    .line 1753
    .line 1754
    if-eqz v5, :cond_52

    .line 1755
    .line 1756
    move-wide/from16 v2, v42

    .line 1757
    .line 1758
    cmpg-double v1, v2, v20

    .line 1759
    .line 1760
    if-gez v1, :cond_53

    .line 1761
    .line 1762
    if-eqz v17, :cond_53

    .line 1763
    .line 1764
    iget-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1765
    .line 1766
    cmpg-double v1, v2, v4

    .line 1767
    .line 1768
    if-gez v1, :cond_53

    .line 1769
    .line 1770
    const-string/jumbo v21, "swap low and too many cached"

    .line 1771
    .line 1772
    .line 1773
    const/16 v18, 0xd

    .line 1774
    .line 1775
    const/16 v23, 0x1

    .line 1776
    .line 1777
    const/16 v19, 0x2

    .line 1778
    .line 1779
    const/16 v22, 0x1

    .line 1780
    .line 1781
    move-object/from16 v20, v21

    .line 1782
    .line 1783
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1784
    .line 1785
    .line 1786
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1787
    .line 1788
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    .line 1789
    .line 1790
    if-gez v1, :cond_53

    .line 1791
    .line 1792
    iput v6, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1793
    .line 1794
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1795
    .line 1796
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1797
    .line 1798
    .line 1799
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 1800
    .line 1801
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1802
    .line 1803
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1804
    .line 1805
    .line 1806
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 1807
    .line 1808
    goto :goto_2e

    .line 1809
    :cond_52
    move-wide/from16 v2, v42

    .line 1810
    .line 1811
    :cond_53
    :goto_2e
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1812
    .line 1813
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1814
    .line 1815
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1816
    .line 1817
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 1818
    .line 1819
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    .line 1821
    .line 1822
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 1823
    .line 1824
    if-eqz v2, :cond_54

    .line 1825
    .line 1826
    iget-boolean v3, v2, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 1827
    .line 1828
    if-eqz v3, :cond_54

    .line 1829
    .line 1830
    iget-object v3, v2, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 1831
    .line 1832
    monitor-enter v3

    .line 1833
    :try_start_2
    iget v2, v2, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 1834
    .line 1835
    monitor-exit v3

    .line 1836
    goto :goto_30

    .line 1837
    :catchall_1
    move-exception v0

    .line 1838
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1839
    throw v0

    .line 1840
    :cond_54
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1841
    .line 1842
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 1843
    .line 1844
    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    .line 1845
    .line 1846
    if-gt v6, v3, :cond_57

    .line 1847
    .line 1848
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    .line 1849
    .line 1850
    if-gt v8, v2, :cond_57

    .line 1851
    .line 1852
    add-int v3, v6, v8

    .line 1853
    .line 1854
    const/4 v2, 0x3

    .line 1855
    if-gt v3, v2, :cond_55

    .line 1856
    .line 1857
    move v10, v2

    .line 1858
    goto :goto_2f

    .line 1859
    :cond_55
    const/4 v2, 0x5

    .line 1860
    if-gt v3, v2, :cond_56

    .line 1861
    .line 1862
    const/4 v10, 0x2

    .line 1863
    goto :goto_2f

    .line 1864
    :cond_56
    const/4 v10, 0x1

    .line 1865
    :goto_2f
    move v2, v10

    .line 1866
    goto :goto_30

    .line 1867
    :cond_57
    move v2, v7

    .line 1868
    :goto_30
    iget v3, v1, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1869
    .line 1870
    const/4 v4, -0x1

    .line 1871
    if-eq v3, v4, :cond_58

    .line 1872
    .line 1873
    const/4 v4, 0x1

    .line 1874
    goto :goto_31

    .line 1875
    :cond_58
    move v4, v7

    .line 1876
    :goto_31
    if-eqz v4, :cond_59

    .line 1877
    .line 1878
    move v2, v3

    .line 1879
    :cond_59
    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1880
    .line 1881
    if-le v2, v3, :cond_5b

    .line 1882
    .line 1883
    if-nez v4, :cond_5b

    .line 1884
    .line 1885
    iget-boolean v3, v1, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 1886
    .line 1887
    if-eqz v3, :cond_5a

    .line 1888
    .line 1889
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1890
    .line 1891
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1892
    .line 1893
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 1894
    .line 1895
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1896
    .line 1897
    .line 1898
    move-result v3

    .line 1899
    iget v4, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1900
    .line 1901
    if-lt v3, v4, :cond_5b

    .line 1902
    .line 1903
    :cond_5a
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1904
    .line 1905
    :cond_5b
    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1906
    .line 1907
    if-eq v2, v3, :cond_5c

    .line 1908
    .line 1909
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v4

    .line 1913
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v3

    .line 1917
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v3

    .line 1921
    const/16 v4, 0x7562

    .line 1922
    .line 1923
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1924
    .line 1925
    .line 1926
    const/16 v3, 0xf

    .line 1927
    .line 1928
    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1929
    .line 1930
    .line 1931
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    .line 1932
    .line 1933
    iget v4, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1934
    .line 1935
    const/4 v5, 0x4

    .line 1936
    invoke-virtual {v3, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v3

    .line 1940
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1941
    .line 1942
    .line 1943
    :cond_5c
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 1944
    .line 1945
    add-int v4, v6, v8

    .line 1946
    .line 1947
    iget v5, v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 1948
    .line 1949
    if-le v4, v5, :cond_5d

    .line 1950
    .line 1951
    iput v4, v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 1952
    .line 1953
    div-long v4, p3, v29

    .line 1954
    .line 1955
    long-to-int v4, v4

    .line 1956
    iput v4, v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 1957
    .line 1958
    iget-object v3, v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 1959
    .line 1960
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1961
    .line 1962
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1963
    .line 1964
    const/16 v5, 0x4f

    .line 1965
    .line 1966
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1967
    .line 1968
    .line 1969
    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1970
    .line 1971
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1972
    .line 1973
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v4

    .line 1977
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v3

    .line 1981
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1982
    .line 1983
    .line 1984
    :cond_5d
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1985
    .line 1986
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1987
    .line 1988
    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 1989
    .line 1990
    monitor-enter v3

    .line 1991
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1992
    .line 1993
    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1994
    .line 1995
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1996
    .line 1997
    if-eqz v4, :cond_5f

    .line 1998
    .line 1999
    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 2000
    .line 2001
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2002
    .line 2003
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 2004
    .line 2005
    if-nez v4, :cond_5e

    .line 2006
    .line 2007
    goto :goto_32

    .line 2008
    :cond_5e
    move v10, v7

    .line 2009
    goto :goto_33

    .line 2010
    :cond_5f
    :goto_32
    const/4 v10, 0x1

    .line 2011
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2012
    .line 2013
    .line 2014
    move-result-wide v6

    .line 2015
    invoke-virtual {v5, v2, v6, v7, v10}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IJZ)V

    .line 2016
    .line 2017
    .line 2018
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2019
    .line 2020
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2021
    .line 2022
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 2023
    .line 2024
    .line 2025
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2026
    iput v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 2027
    .line 2028
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2029
    .line 2030
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2031
    .line 2032
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 2033
    .line 2034
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2035
    .line 2036
    .line 2037
    move-result v2

    .line 2038
    iput v2, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 2039
    .line 2040
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2041
    .line 2042
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2043
    .line 2044
    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    .line 2045
    .line 2046
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2047
    .line 2048
    .line 2049
    const/4 v3, 0x1

    .line 2050
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 2051
    .line 2052
    .line 2053
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2054
    .line 2055
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 2056
    .line 2057
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2058
    .line 2059
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    .line 2060
    .line 2061
    if-eqz v2, :cond_60

    .line 2062
    .line 2063
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2064
    .line 2065
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities()V

    .line 2066
    .line 2067
    .line 2068
    :cond_60
    move-object/from16 v1, p2

    .line 2069
    .line 2070
    move-wide/from16 v2, p5

    .line 2071
    .line 2072
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 2073
    .line 2074
    .line 2075
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2076
    .line 2077
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2078
    .line 2079
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 2080
    .line 2081
    monitor-enter v1

    .line 2082
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 2083
    .line 2084
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2085
    .line 2086
    .line 2087
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2088
    .line 2089
    .line 2090
    move-result-wide v2

    .line 2091
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2092
    .line 2093
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2094
    .line 2095
    iget-wide v5, v4, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 2096
    .line 2097
    add-long v5, v5, v25

    .line 2098
    .line 2099
    cmp-long v5, v2, v5

    .line 2100
    .line 2101
    if-lez v5, :cond_62

    .line 2102
    .line 2103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2104
    .line 2105
    .line 2106
    move-result-wide v5

    .line 2107
    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2108
    .line 2109
    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 2110
    .line 2111
    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 2112
    .line 2113
    add-long/2addr v7, v9

    .line 2114
    cmp-long v5, v5, v7

    .line 2115
    .line 2116
    if-lez v5, :cond_61

    .line 2117
    .line 2118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2119
    .line 2120
    .line 2121
    move-result-wide v5

    .line 2122
    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2123
    .line 2124
    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 2125
    .line 2126
    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 2127
    .line 2128
    add-long/2addr v7, v9

    .line 2129
    cmp-long v5, v5, v7

    .line 2130
    .line 2131
    if-lez v5, :cond_61

    .line 2132
    .line 2133
    const/4 v5, 0x1

    .line 2134
    iput-boolean v5, v4, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 2135
    .line 2136
    :cond_61
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2137
    .line 2138
    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2139
    .line 2140
    new-instance v6, Lcom/android/server/am/ActivityManagerService$22;

    .line 2141
    .line 2142
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2143
    .line 2144
    const/4 v7, 0x1

    .line 2145
    invoke-direct {v6, v7, v4}, Lcom/android/server/am/ActivityManagerService$22;-><init>(ILjava/lang/Object;)V

    .line 2146
    .line 2147
    .line 2148
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2149
    .line 2150
    .line 2151
    goto :goto_34

    .line 2152
    :catchall_2
    move-exception v0

    .line 2153
    goto :goto_35

    .line 2154
    :cond_62
    :goto_34
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2155
    .line 2156
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2157
    .line 2158
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 2159
    .line 2160
    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2161
    .line 2162
    invoke-virtual {v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 2163
    .line 2164
    .line 2165
    monitor-exit v1

    .line 2166
    return-void

    .line 2167
    :goto_35
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2168
    throw v0

    .line 2169
    :catchall_3
    move-exception v0

    .line 2170
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2171
    throw v0

    .line 2172
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "ActivityManager"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 18
    .line 19
    const/16 v1, 0x46

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public resetInternal()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 10
    .line 11
    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 12
    .line 13
    iget v4, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 14
    .line 15
    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x7

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v5, 0x13

    .line 22
    .line 23
    :goto_1
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v6, :cond_7

    .line 27
    .line 28
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    .line 34
    .line 35
    .line 36
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v8, 0x1

    .line 38
    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    :try_start_1
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 43
    .line 44
    invoke-static {v6, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    goto :goto_6

    .line 50
    :cond_2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 63
    .line 64
    if-nez v6, :cond_3

    .line 65
    .line 66
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 67
    .line 68
    invoke-static {v6, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 73
    .line 74
    const/16 v10, -0xa

    .line 75
    .line 76
    invoke-static {v6, v10}, Landroid/os/Process;->setThreadPriority(II)V

    .line 77
    .line 78
    .line 79
    :goto_2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 92
    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eq v6, v8, :cond_6

    .line 103
    .line 104
    iget-boolean v6, v2, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    :goto_3
    move v1, v0

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    :goto_4
    const/4 v0, 0x3

    .line 112
    move v5, v1

    .line 113
    goto :goto_3

    .line 114
    :goto_5
    const/16 v0, 0x7f

    .line 115
    .line 116
    move v11, v1

    .line 117
    move v1, v0

    .line 118
    move v0, v11

    .line 119
    goto :goto_7

    .line 120
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v8, "Failed to pre-set top priority to "

    .line 123
    .line 124
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v8, " "

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v6, "OomAdjuster"

    .line 143
    .line 144
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_7
    move v1, v7

    .line 148
    :goto_7
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 152
    .line 153
    .line 154
    iput v5, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 155
    .line 156
    iput v1, v2, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 157
    .line 158
    invoke-virtual {v2, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v7, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    iput-object v0, v2, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 166
    .line 167
    iput-boolean v7, v2, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 168
    .line 169
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p1, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    if-le p2, v0, :cond_0

    .line 22
    .line 23
    move p2, v0

    .line 24
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p2, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget v0, p2, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 19
    .line 20
    if-ge v0, p0, :cond_0

    .line 21
    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 25
    .line 26
    if-lt p0, p3, :cond_0

    .line 27
    .line 28
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 29
    .line 30
    if-lt p0, p4, :cond_0

    .line 31
    .line 32
    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 37
    .line 38
    and-int/2addr p1, p0

    .line 39
    if-ne p1, p0, :cond_0

    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    return v1
.end method

.method public final unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 11
    .line 12
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 31
    .line 32
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 p2, 0x0

    .line 45
    :goto_0
    if-ge p2, p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    iget-wide v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 54
    .line 55
    invoke-virtual {v0, p1, v3, v4, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 34
    .line 35
    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 36
    .line 37
    const/16 v4, 0x352

    .line 38
    .line 39
    if-lt v3, v4, :cond_4

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    if-nez p3, :cond_3

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget p3, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 71
    .line 72
    if-ge p3, v4, :cond_5

    .line 73
    .line 74
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_0
    return-void
.end method

.method public final updateOomAdjFollowUpTargetsLocked()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/lit8 v4, v4, -0x1

    .line 24
    .line 25
    move-wide v5, v2

    .line 26
    :goto_0
    if-ltz v4, :cond_4

    .line 27
    .line 28
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 37
    .line 38
    iget-wide v8, v8, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 39
    .line 40
    iget-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 41
    .line 42
    if-eqz v10, :cond_0

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    cmp-long v10, v8, v0

    .line 51
    .line 52
    if-gtz v10, :cond_1

    .line 53
    .line 54
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 60
    .line 61
    iput-wide v2, v7, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    cmp-long v7, v8, v5

    .line 70
    .line 71
    if-gez v7, :cond_2

    .line 72
    .line 73
    move-wide v5, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    cmp-long v7, v8, v2

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    cmp-long v2, v5, v2

    .line 88
    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 92
    .line 93
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    .line 94
    .line 95
    add-long v7, v5, v2

    .line 96
    .line 97
    iget-wide v9, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 98
    .line 99
    cmp-long v4, v7, v9

    .line 100
    .line 101
    if-ltz v4, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    add-long/2addr v0, v2

    .line 105
    cmp-long v2, v5, v0

    .line 106
    .line 107
    if-gez v2, :cond_6

    .line 108
    .line 109
    move-wide v5, v0

    .line 110
    :cond_6
    iput-wide v5, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 115
    .line 116
    const/16 v1, 0x56

    .line 117
    .line 118
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_2
    const/16 v0, 0x17

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v12, p1

    .line 4
    .line 5
    const/4 v13, 0x0

    .line 6
    const/4 v14, 0x1

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    move v15, v14

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v15, v13

    .line 12
    :goto_0
    if-eqz v15, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 17
    .line 18
    move-object v11, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v11, p3

    .line 21
    .line 22
    :goto_1
    if-nez p4, :cond_3

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    move v3, v13

    .line 40
    :goto_2
    if-ge v3, v1, :cond_2

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget v5, v4, Lcom/android/server/am/UidRecord;->mUid:I

    .line 49
    .line 50
    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v10, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move-object/from16 v10, p4

    .line 59
    .line 60
    :goto_3
    iput v12, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 61
    .line 62
    const-wide/16 v8, 0x40

    .line 63
    .line 64
    if-eqz p6, :cond_4

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v16

    .line 82
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v18

    .line 91
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 92
    .line 93
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 94
    .line 95
    sub-long v20, v16, v1

    .line 96
    .line 97
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 102
    .line 103
    add-int/2addr v1, v14

    .line 104
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 105
    .line 106
    if-eqz v15, :cond_5

    .line 107
    .line 108
    iput v13, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 109
    .line 110
    iput v13, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 111
    .line 112
    :cond_5
    iget-object v1, v10, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v1, v14

    .line 119
    :goto_4
    const/16 v2, 0x13

    .line 120
    .line 121
    if-ltz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput v2, v3, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 128
    .line 129
    iput-boolean v13, v3, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 130
    .line 131
    iput v13, v3, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 132
    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    if-nez v15, :cond_8

    .line 137
    .line 138
    if-eqz p5, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    move/from16 v22, v13

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    :goto_5
    move/from16 v22, v14

    .line 145
    .line 146
    :goto_6
    add-int/lit8 v1, v6, -0x1

    .line 147
    .line 148
    move v3, v1

    .line 149
    :goto_7
    const/16 v7, 0x3e9

    .line 150
    .line 151
    if-ltz v3, :cond_a

    .line 152
    .line 153
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 158
    .line 159
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 160
    .line 161
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 162
    .line 163
    iget v5, v4, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 164
    .line 165
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 166
    .line 167
    if-eq v5, v8, :cond_9

    .line 168
    .line 169
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 170
    .line 171
    iput v2, v4, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 172
    .line 173
    invoke-virtual {v4, v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 174
    .line 175
    .line 176
    iput v13, v4, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 179
    .line 180
    .line 181
    iput-boolean v13, v4, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 182
    .line 183
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 184
    .line 185
    const-wide/16 v8, 0x40

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 191
    .line 192
    .line 193
    move v9, v1

    .line 194
    move/from16 v23, v13

    .line 195
    .line 196
    :goto_8
    if-ltz v9, :cond_c

    .line 197
    .line 198
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object v2, v1

    .line 203
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 204
    .line 205
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 206
    .line 207
    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 208
    .line 209
    if-nez v1, :cond_b

    .line 210
    .line 211
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 212
    .line 213
    if-eqz v1, :cond_b

    .line 214
    .line 215
    iput-boolean v13, v8, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 216
    .line 217
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 218
    .line 219
    iput v12, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 220
    .line 221
    const/16 v24, 0x1

    .line 222
    .line 223
    const/16 v3, 0x3e9

    .line 224
    .line 225
    const/16 v25, 0x0

    .line 226
    .line 227
    move-object/from16 v1, p0

    .line 228
    .line 229
    move-object/from16 v4, p2

    .line 230
    .line 231
    move v5, v15

    .line 232
    move v14, v6

    .line 233
    move v13, v7

    .line 234
    move-wide/from16 v6, v16

    .line 235
    .line 236
    move-object v13, v8

    .line 237
    const-wide/16 v26, 0x40

    .line 238
    .line 239
    move/from16 v8, v25

    .line 240
    .line 241
    move/from16 v25, v9

    .line 242
    .line 243
    move/from16 v9, v22

    .line 244
    .line 245
    move-object/from16 v28, v10

    .line 246
    .line 247
    move/from16 v10, p1

    .line 248
    .line 249
    move-object v12, v11

    .line 250
    move/from16 v11, v24

    .line 251
    .line 252
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 253
    .line 254
    .line 255
    iget-boolean v1, v13, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 256
    .line 257
    or-int v23, v23, v1

    .line 258
    .line 259
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 260
    .line 261
    iput v1, v13, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_b
    move v14, v6

    .line 265
    move/from16 v25, v9

    .line 266
    .line 267
    move-object/from16 v28, v10

    .line 268
    .line 269
    move-object v12, v11

    .line 270
    const-wide/16 v26, 0x40

    .line 271
    .line 272
    :goto_9
    add-int/lit8 v9, v25, -0x1

    .line 273
    .line 274
    move-object v11, v12

    .line 275
    move v6, v14

    .line 276
    move-object/from16 v10, v28

    .line 277
    .line 278
    const/16 v7, 0x3e9

    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    const/4 v14, 0x1

    .line 282
    move/from16 v12, p1

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_c
    move v14, v6

    .line 286
    move-object/from16 v28, v10

    .line 287
    .line 288
    move-object v12, v11

    .line 289
    const-wide/16 v26, 0x40

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 292
    .line 293
    iget-object v2, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 294
    .line 295
    monitor-enter v2

    .line 296
    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 297
    .line 298
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 299
    if-eqz v1, :cond_1e

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 302
    .line 303
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 304
    .line 305
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 306
    .line 307
    iget v2, v2, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 308
    .line 309
    iget-object v4, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 310
    .line 311
    monitor-enter v4

    .line 312
    :try_start_1
    iget v5, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 313
    .line 314
    iget v6, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 315
    .line 316
    iget v7, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 317
    .line 318
    iget v8, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 319
    .line 320
    iget-boolean v9, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 321
    .line 322
    iget-wide v10, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 323
    .line 324
    iget-object v13, v1, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 325
    .line 326
    iget-object v15, v1, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 327
    .line 328
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    if-eqz v13, :cond_1e

    .line 330
    .line 331
    if-nez v15, :cond_d

    .line 332
    .line 333
    goto/16 :goto_19

    .line 334
    .line 335
    :cond_d
    move-object/from16 v24, v12

    .line 336
    .line 337
    const/4 v0, 0x0

    .line 338
    const/4 v4, 0x0

    .line 339
    :goto_a
    if-ge v4, v2, :cond_10

    .line 340
    .line 341
    array-length v12, v15

    .line 342
    if-ge v0, v12, :cond_10

    .line 343
    .line 344
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 349
    .line 350
    move/from16 v25, v14

    .line 351
    .line 352
    iget-boolean v14, v12, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 353
    .line 354
    if-nez v14, :cond_e

    .line 355
    .line 356
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 357
    .line 358
    if-eqz v14, :cond_e

    .line 359
    .line 360
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 361
    .line 362
    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 363
    .line 364
    move/from16 p5, v6

    .line 365
    .line 366
    const/16 v6, 0x3e9

    .line 367
    .line 368
    if-lt v14, v6, :cond_f

    .line 369
    .line 370
    aget-object v6, v15, v0

    .line 371
    .line 372
    iput-object v12, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 373
    .line 374
    const/4 v12, 0x0

    .line 375
    iput v12, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 376
    .line 377
    aput v4, v13, v0

    .line 378
    .line 379
    add-int/lit8 v0, v0, 0x1

    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_e
    move/from16 p5, v6

    .line 383
    .line 384
    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 385
    .line 386
    move/from16 v6, p5

    .line 387
    .line 388
    move/from16 v14, v25

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_10
    move/from16 p5, v6

    .line 392
    .line 393
    move/from16 v25, v14

    .line 394
    .line 395
    const/4 v6, 0x0

    .line 396
    :goto_c
    if-ge v4, v2, :cond_13

    .line 397
    .line 398
    if-ge v6, v8, :cond_13

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v12

    .line 404
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 405
    .line 406
    iget-boolean v14, v12, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 407
    .line 408
    if-nez v14, :cond_11

    .line 409
    .line 410
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 411
    .line 412
    if-eqz v14, :cond_11

    .line 413
    .line 414
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 415
    .line 416
    iget v12, v12, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 417
    .line 418
    const/16 v14, 0x3e9

    .line 419
    .line 420
    if-lt v12, v14, :cond_12

    .line 421
    .line 422
    add-int/lit8 v6, v6, 0x1

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_11
    const/16 v14, 0x3e9

    .line 426
    .line 427
    :cond_12
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_13
    if-ge v6, v8, :cond_14

    .line 431
    .line 432
    sub-int/2addr v8, v6

    .line 433
    sub-int/2addr v0, v8

    .line 434
    if-gez v0, :cond_14

    .line 435
    .line 436
    const/4 v0, 0x0

    .line 437
    :cond_14
    if-eqz v9, :cond_19

    .line 438
    .line 439
    move-object v6, v3

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2

    .line 444
    const/4 v4, 0x0

    .line 445
    :goto_e
    if-ge v4, v0, :cond_18

    .line 446
    .line 447
    aget-object v8, v15, v4

    .line 448
    .line 449
    iget-object v12, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 450
    .line 451
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 452
    .line 453
    move-object/from16 v29, v6

    .line 454
    .line 455
    move/from16 p3, v7

    .line 456
    .line 457
    iget-wide v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    .line 458
    .line 459
    sub-long v6, v2, v6

    .line 460
    .line 461
    move-object/from16 v30, v13

    .line 462
    .line 463
    iget-wide v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 464
    .line 465
    const-wide/16 v31, 0x0

    .line 466
    .line 467
    cmp-long v13, v13, v31

    .line 468
    .line 469
    if-eqz v13, :cond_15

    .line 470
    .line 471
    cmp-long v6, v6, v10

    .line 472
    .line 473
    if-gez v6, :cond_15

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_15
    iget-object v6, v1, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    .line 477
    .line 478
    iget v7, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 479
    .line 480
    check-cast v6, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    invoke-static {v7}, Landroid/os/Process;->getRss(I)[J

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    if-eqz v6, :cond_17

    .line 490
    .line 491
    array-length v7, v6

    .line 492
    if-nez v7, :cond_16

    .line 493
    .line 494
    goto :goto_10

    .line 495
    :cond_16
    iget-object v7, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 496
    .line 497
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 498
    .line 499
    const/4 v12, 0x0

    .line 500
    aget-wide v13, v6, v12

    .line 501
    .line 502
    iput-wide v13, v8, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 503
    .line 504
    iput-wide v2, v8, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    .line 505
    .line 506
    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 507
    .line 508
    iput-wide v13, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 509
    .line 510
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 511
    .line 512
    move/from16 v7, p3

    .line 513
    .line 514
    move-object/from16 v6, v29

    .line 515
    .line 516
    move-object/from16 v13, v30

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_17
    :goto_10
    const-string v0, "OomAdjuster"

    .line 520
    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string v2, "Process.getRss returned bad value, not re-ranking: "

    .line 524
    .line 525
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto/16 :goto_1a

    .line 543
    .line 544
    :cond_18
    move-object/from16 v29, v6

    .line 545
    .line 546
    :goto_11
    move/from16 p3, v7

    .line 547
    .line 548
    move-object/from16 v30, v13

    .line 549
    .line 550
    const/4 v2, 0x0

    .line 551
    goto :goto_12

    .line 552
    :cond_19
    move-object/from16 v29, v3

    .line 553
    .line 554
    goto :goto_11

    .line 555
    :goto_12
    cmpl-float v3, v5, v2

    .line 556
    .line 557
    if-lez v3, :cond_1a

    .line 558
    .line 559
    sget-object v3, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 560
    .line 561
    const/4 v4, 0x0

    .line 562
    invoke-static {v15, v4, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v15, v5}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 566
    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_1a
    const/4 v4, 0x0

    .line 570
    :goto_13
    cmpl-float v3, p3, v2

    .line 571
    .line 572
    if-lez v3, :cond_1c

    .line 573
    .line 574
    if-eqz v9, :cond_1b

    .line 575
    .line 576
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 577
    .line 578
    invoke-static {v15, v4, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 579
    .line 580
    .line 581
    :goto_14
    move/from16 v1, p3

    .line 582
    .line 583
    goto :goto_15

    .line 584
    :cond_1b
    iget-object v1, v1, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 585
    .line 586
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 587
    .line 588
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 589
    .line 590
    monitor-enter v1

    .line 591
    :try_start_2
    sget-object v2, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 592
    .line 593
    invoke-static {v15, v4, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 594
    .line 595
    .line 596
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    goto :goto_14

    .line 598
    :goto_15
    invoke-static {v15, v1}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 599
    .line 600
    .line 601
    :cond_1c
    const/4 v1, 0x0

    .line 602
    goto :goto_16

    .line 603
    :catchall_0
    move-exception v0

    .line 604
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    throw v0

    .line 606
    :goto_16
    cmpl-float v1, p5, v1

    .line 607
    .line 608
    if-lez v1, :cond_1d

    .line 609
    .line 610
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 611
    .line 612
    const/4 v12, 0x0

    .line 613
    invoke-static {v15, v12, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 614
    .line 615
    .line 616
    move/from16 v1, p5

    .line 617
    .line 618
    invoke-static {v15, v1}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    .line 619
    .line 620
    .line 621
    goto :goto_17

    .line 622
    :cond_1d
    const/4 v12, 0x0

    .line 623
    :goto_17
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 624
    .line 625
    invoke-static {v15, v12, v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 626
    .line 627
    .line 628
    move v1, v12

    .line 629
    :goto_18
    if-ge v1, v0, :cond_1f

    .line 630
    .line 631
    aget v2, v30, v1

    .line 632
    .line 633
    aget-object v3, v15, v1

    .line 634
    .line 635
    iget-object v3, v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 636
    .line 637
    move-object/from16 v4, v29

    .line 638
    .line 639
    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    aget-object v2, v15, v1

    .line 643
    .line 644
    const/4 v3, 0x0

    .line 645
    iput-object v3, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 646
    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 648
    .line 649
    goto :goto_18

    .line 650
    :catchall_1
    move-exception v0

    .line 651
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 652
    throw v0

    .line 653
    :cond_1e
    :goto_19
    move-object/from16 v24, v12

    .line 654
    .line 655
    move/from16 v25, v14

    .line 656
    .line 657
    :goto_1a
    const/4 v12, 0x0

    .line 658
    :cond_1f
    if-eqz v22, :cond_25

    .line 659
    .line 660
    move v0, v12

    .line 661
    :goto_1b
    if-eqz v23, :cond_25

    .line 662
    .line 663
    const/16 v1, 0xa

    .line 664
    .line 665
    if-ge v0, v1, :cond_25

    .line 666
    .line 667
    add-int/lit8 v0, v0, 0x1

    .line 668
    .line 669
    move v1, v12

    .line 670
    move/from16 v13, v25

    .line 671
    .line 672
    :goto_1c
    if-ge v1, v13, :cond_21

    .line 673
    .line 674
    move-object/from16 v14, v24

    .line 675
    .line 676
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 681
    .line 682
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 683
    .line 684
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 685
    .line 686
    if-nez v4, :cond_20

    .line 687
    .line 688
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 689
    .line 690
    if-eqz v2, :cond_20

    .line 691
    .line 692
    iget-boolean v2, v3, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 693
    .line 694
    if-eqz v2, :cond_20

    .line 695
    .line 696
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 697
    .line 698
    const/4 v15, 0x1

    .line 699
    sub-int/2addr v2, v15

    .line 700
    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 701
    .line 702
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 703
    .line 704
    sub-int/2addr v2, v15

    .line 705
    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 706
    .line 707
    goto :goto_1d

    .line 708
    :cond_20
    const/4 v15, 0x1

    .line 709
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    .line 710
    .line 711
    move-object/from16 v24, v14

    .line 712
    .line 713
    goto :goto_1c

    .line 714
    :cond_21
    move-object/from16 v14, v24

    .line 715
    .line 716
    const/4 v15, 0x1

    .line 717
    move v11, v12

    .line 718
    move/from16 v23, v11

    .line 719
    .line 720
    :goto_1e
    if-ge v11, v13, :cond_24

    .line 721
    .line 722
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    move-object v2, v1

    .line 727
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 728
    .line 729
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 730
    .line 731
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 732
    .line 733
    if-nez v3, :cond_22

    .line 734
    .line 735
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 736
    .line 737
    if-eqz v3, :cond_22

    .line 738
    .line 739
    iget-boolean v1, v1, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 740
    .line 741
    if-eqz v1, :cond_22

    .line 742
    .line 743
    const/4 v5, 0x1

    .line 744
    const/4 v8, 0x1

    .line 745
    const/16 v3, 0x3e9

    .line 746
    .line 747
    const/4 v9, 0x1

    .line 748
    const/16 v22, 0x1

    .line 749
    .line 750
    move-object/from16 v1, p0

    .line 751
    .line 752
    move-object/from16 v4, p2

    .line 753
    .line 754
    move-wide/from16 v6, v16

    .line 755
    .line 756
    move/from16 v10, p1

    .line 757
    .line 758
    move/from16 v24, v11

    .line 759
    .line 760
    move/from16 v11, v22

    .line 761
    .line 762
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_23

    .line 767
    .line 768
    move/from16 v23, v15

    .line 769
    .line 770
    goto :goto_1f

    .line 771
    :cond_22
    move/from16 v24, v11

    .line 772
    .line 773
    :cond_23
    :goto_1f
    add-int/lit8 v11, v24, 0x1

    .line 774
    .line 775
    goto :goto_1e

    .line 776
    :cond_24
    move/from16 v25, v13

    .line 777
    .line 778
    move-object/from16 v24, v14

    .line 779
    .line 780
    goto :goto_1b

    .line 781
    :cond_25
    move-object/from16 v0, p0

    .line 782
    .line 783
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 784
    .line 785
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 786
    .line 787
    .line 788
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 789
    .line 790
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 793
    .line 794
    .line 795
    const/4 v10, 0x1

    .line 796
    move-object/from16 v1, p0

    .line 797
    .line 798
    move/from16 v2, p1

    .line 799
    .line 800
    move-object/from16 v3, v28

    .line 801
    .line 802
    move-wide/from16 v4, v16

    .line 803
    .line 804
    move-wide/from16 v6, v18

    .line 805
    .line 806
    move-wide/from16 v8, v20

    .line 807
    .line 808
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 809
    .line 810
    .line 811
    if-eqz p6, :cond_26

    .line 812
    .line 813
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 814
    .line 815
    .line 816
    :cond_26
    return-void

    .line 817
    :catchall_2
    move-exception v0

    .line 818
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 819
    throw v0
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 26
    .line 27
    return-void
.end method

.method public final updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 8
    .line 9
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    sub-int/2addr v5, v6

    .line 34
    :goto_0
    if-ltz v5, :cond_24

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 41
    .line 42
    const/16 v9, 0x14

    .line 43
    .line 44
    if-eq v8, v9, :cond_23

    .line 45
    .line 46
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 47
    .line 48
    if-ne v10, v8, :cond_1

    .line 49
    .line 50
    iget v8, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 51
    .line 52
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 53
    .line 54
    if-ne v8, v10, :cond_1

    .line 55
    .line 56
    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 57
    .line 58
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 59
    .line 60
    if-ne v8, v10, :cond_1

    .line 61
    .line 62
    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 63
    .line 64
    if-eqz v8, :cond_23

    .line 65
    .line 66
    :cond_1
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 67
    .line 68
    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 69
    .line 70
    invoke-virtual {v8, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 75
    .line 76
    iget v11, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 77
    .line 78
    if-eq v10, v11, :cond_2

    .line 79
    .line 80
    const-string v10, "ActivityManager"

    .line 81
    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v12, "Changes in "

    .line 85
    .line 86
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v12, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 90
    .line 91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v12, " "

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 100
    .line 101
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v12, " to "

    .line 105
    .line 106
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 110
    .line 111
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v12, ", "

    .line 115
    .line 116
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 120
    .line 121
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v12, " to "

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 130
    .line 131
    const-string v13, ""

    .line 132
    .line 133
    invoke-static {v11, v12, v13, v10}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 137
    .line 138
    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const-wide/16 v12, 0x0

    .line 143
    .line 144
    if-eqz v10, :cond_a

    .line 145
    .line 146
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 147
    .line 148
    if-nez v10, :cond_a

    .line 149
    .line 150
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 151
    .line 152
    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_3

    .line 157
    .line 158
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 159
    .line 160
    if-nez v10, :cond_3

    .line 161
    .line 162
    iget-wide v14, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 163
    .line 164
    cmp-long v14, v14, v12

    .line 165
    .line 166
    if-nez v14, :cond_7

    .line 167
    .line 168
    :cond_3
    iput-wide v2, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 169
    .line 170
    if-eqz v8, :cond_4

    .line 171
    .line 172
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 173
    .line 174
    iget v15, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 175
    .line 176
    iget-object v14, v14, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 177
    .line 178
    iget v10, v14, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 179
    .line 180
    long-to-int v11, v2

    .line 181
    iget v14, v14, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 182
    .line 183
    invoke-static {v14}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v20

    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v14, 0xa

    .line 190
    .line 191
    move/from16 v16, v15

    .line 192
    .line 193
    move v15, v14

    .line 194
    move/from16 v18, v10

    .line 195
    .line 196
    move/from16 v19, v11

    .line 197
    .line 198
    invoke-static/range {v15 .. v20}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 202
    .line 203
    iget-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    .line 204
    .line 205
    const/16 v14, 0x3a

    .line 206
    .line 207
    if-nez v11, :cond_5

    .line 208
    .line 209
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 210
    .line 211
    invoke-virtual {v10, v14}, Landroid/os/Handler;->hasMessages(I)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-nez v10, :cond_7

    .line 216
    .line 217
    :cond_5
    if-eqz v8, :cond_6

    .line 218
    .line 219
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 220
    .line 221
    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 222
    .line 223
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 224
    .line 225
    iget-wide v12, v15, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 226
    .line 227
    iget-object v10, v10, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 228
    .line 229
    iget v10, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 230
    .line 231
    long-to-int v12, v12

    .line 232
    const-string v20, ""

    .line 233
    .line 234
    const/4 v15, 0x1

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    move/from16 v16, v11

    .line 238
    .line 239
    move/from16 v18, v10

    .line 240
    .line 241
    move/from16 v19, v12

    .line 242
    .line 243
    invoke-static/range {v15 .. v20}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    .line 248
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 249
    .line 250
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 251
    .line 252
    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    .line 253
    .line 254
    invoke-virtual {v10, v14, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    .line 256
    .line 257
    :cond_7
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 258
    .line 259
    if-eqz v10, :cond_9

    .line 260
    .line 261
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 262
    .line 263
    if-nez v10, :cond_9

    .line 264
    .line 265
    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 266
    .line 267
    if-eq v10, v9, :cond_8

    .line 268
    .line 269
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_8
    const/16 v21, 0x2

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_9
    const/16 v21, 0x0

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_a
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 279
    .line 280
    if-eqz v10, :cond_b

    .line 281
    .line 282
    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 283
    .line 284
    const/16 v11, 0x7566

    .line 285
    .line 286
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 287
    .line 288
    .line 289
    const/4 v10, 0x0

    .line 290
    iput-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 291
    .line 292
    const/4 v11, 0x4

    .line 293
    :goto_1
    const-wide/16 v12, 0x0

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_b
    const/4 v11, 0x0

    .line 297
    goto :goto_1

    .line 298
    :goto_2
    iput-wide v12, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 299
    .line 300
    iput-wide v12, v7, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    .line 301
    .line 302
    if-eqz v8, :cond_c

    .line 303
    .line 304
    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 305
    .line 306
    iget v14, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 307
    .line 308
    iget-object v12, v12, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 309
    .line 310
    iget v15, v12, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 311
    .line 312
    iget v12, v12, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 313
    .line 314
    invoke-static {v12}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v18

    .line 318
    const/16 v13, 0xb

    .line 319
    .line 320
    const/4 v12, 0x0

    .line 321
    const/16 v17, 0x0

    .line 322
    .line 323
    move/from16 v16, v15

    .line 324
    .line 325
    move v15, v12

    .line 326
    invoke-static/range {v13 .. v18}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_c
    move/from16 v21, v11

    .line 330
    .line 331
    :goto_3
    iget v11, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 332
    .line 333
    const/16 v12, 0xb

    .line 334
    .line 335
    if-le v11, v12, :cond_d

    .line 336
    .line 337
    move v13, v6

    .line 338
    goto :goto_4

    .line 339
    :cond_d
    const/4 v13, 0x0

    .line 340
    :goto_4
    iget v14, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 341
    .line 342
    if-le v14, v12, :cond_e

    .line 343
    .line 344
    move v12, v6

    .line 345
    goto :goto_5

    .line 346
    :cond_e
    const/4 v12, 0x0

    .line 347
    :goto_5
    if-ne v13, v12, :cond_f

    .line 348
    .line 349
    if-ne v11, v9, :cond_11

    .line 350
    .line 351
    :cond_f
    if-eqz v12, :cond_10

    .line 352
    .line 353
    const/16 v9, 0x8

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_10
    const/16 v9, 0x10

    .line 357
    .line 358
    :goto_6
    or-int v21, v21, v9

    .line 359
    .line 360
    :cond_11
    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 361
    .line 362
    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 363
    .line 364
    if-eq v9, v12, :cond_12

    .line 365
    .line 366
    or-int/lit8 v21, v21, 0x20

    .line 367
    .line 368
    :cond_12
    const/high16 v13, -0x80000000

    .line 369
    .line 370
    if-eq v11, v14, :cond_13

    .line 371
    .line 372
    or-int v21, v21, v13

    .line 373
    .line 374
    :cond_13
    iget-boolean v15, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 375
    .line 376
    if-eqz v15, :cond_14

    .line 377
    .line 378
    or-int/lit8 v21, v21, 0x40

    .line 379
    .line 380
    :cond_14
    move/from16 v15, v21

    .line 381
    .line 382
    iput v14, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 383
    .line 384
    iput v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 385
    .line 386
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 387
    .line 388
    iput-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 389
    .line 390
    iget-boolean v6, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 391
    .line 392
    iput-boolean v6, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    iput-boolean v6, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 396
    .line 397
    if-eqz v8, :cond_15

    .line 398
    .line 399
    if-ne v14, v11, :cond_16

    .line 400
    .line 401
    if-eq v12, v9, :cond_15

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_15
    move v1, v13

    .line 405
    goto :goto_9

    .line 406
    :cond_16
    :goto_7
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 407
    .line 408
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 409
    .line 410
    iget-object v13, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 411
    .line 412
    iget v1, v13, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 413
    .line 414
    iget v13, v13, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 415
    .line 416
    invoke-static {v13}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v29

    .line 420
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v22

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v23

    .line 428
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v24

    .line 432
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v25

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v26

    .line 440
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v27

    .line 444
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v28

    .line 448
    filled-new-array/range {v22 .. v29}, [Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    const/16 v6, 0x759f

    .line 453
    .line 454
    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 455
    .line 456
    .line 457
    const-string/jumbo v1, "uidStateChanged"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8, v1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 464
    .line 465
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    .line 466
    .line 467
    if-nez v1, :cond_17

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_17
    int-to-long v8, v1

    .line 471
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .line 473
    .line 474
    :catch_0
    :goto_8
    const/high16 v1, -0x80000000

    .line 475
    .line 476
    :goto_9
    and-int/2addr v1, v15

    .line 477
    if-nez v1, :cond_18

    .line 478
    .line 479
    and-int/lit8 v6, v15, 0x20

    .line 480
    .line 481
    if-eqz v6, :cond_1a

    .line 482
    .line 483
    :cond_18
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 484
    .line 485
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 486
    .line 487
    iget v8, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 488
    .line 489
    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 490
    .line 491
    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 492
    .line 493
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 494
    .line 495
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 496
    .line 497
    monitor-enter v6

    .line 498
    :try_start_1
    iget-object v10, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 499
    .line 500
    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-ltz v8, :cond_19

    .line 505
    .line 506
    iget-object v10, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 507
    .line 508
    invoke-virtual {v10, v8, v9}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .line 510
    .line 511
    goto :goto_a

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    goto/16 :goto_e

    .line 514
    .line 515
    :cond_19
    :goto_a
    monitor-exit v6

    .line 516
    :cond_1a
    if-eqz v15, :cond_1b

    .line 517
    .line 518
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 519
    .line 520
    const/4 v8, -0x1

    .line 521
    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 522
    .line 523
    .line 524
    :cond_1b
    if-nez v1, :cond_1c

    .line 525
    .line 526
    and-int/lit8 v1, v15, 0x20

    .line 527
    .line 528
    if-eqz v1, :cond_1d

    .line 529
    .line 530
    :cond_1c
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 531
    .line 532
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 533
    .line 534
    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 535
    .line 536
    iget v9, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 537
    .line 538
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 539
    .line 540
    .line 541
    :cond_1d
    iget-boolean v1, v7, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 542
    .line 543
    if-eqz v1, :cond_23

    .line 544
    .line 545
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 546
    .line 547
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 548
    .line 549
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 550
    .line 551
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 552
    .line 553
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 562
    .line 563
    if-eqz v1, :cond_23

    .line 564
    .line 565
    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 566
    .line 567
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    const/4 v8, 0x1

    .line 572
    sub-int/2addr v6, v8

    .line 573
    const/4 v8, 0x0

    .line 574
    :goto_b
    if-ltz v6, :cond_22

    .line 575
    .line 576
    iget-object v9, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 577
    .line 578
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    check-cast v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 583
    .line 584
    iget v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 585
    .line 586
    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 587
    .line 588
    if-ne v10, v11, :cond_21

    .line 589
    .line 590
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 591
    .line 592
    const/4 v11, 0x2

    .line 593
    if-gt v10, v11, :cond_20

    .line 594
    .line 595
    iget-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 596
    .line 597
    if-nez v10, :cond_1e

    .line 598
    .line 599
    const/4 v10, 0x1

    .line 600
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 601
    .line 602
    move v8, v10

    .line 603
    goto :goto_c

    .line 604
    :cond_1e
    const/4 v10, 0x1

    .line 605
    :goto_c
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    .line 606
    .line 607
    :cond_1f
    const/4 v10, 0x0

    .line 608
    goto :goto_d

    .line 609
    :cond_20
    iget-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 610
    .line 611
    if-eqz v10, :cond_1f

    .line 612
    .line 613
    const/4 v10, 0x0

    .line 614
    iput-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 615
    .line 616
    const/4 v8, 0x1

    .line 617
    goto :goto_d

    .line 618
    :cond_21
    const/4 v10, 0x0

    .line 619
    const/4 v11, 0x2

    .line 620
    :goto_d
    add-int/lit8 v6, v6, -0x1

    .line 621
    .line 622
    goto :goto_b

    .line 623
    :cond_22
    if-eqz v8, :cond_23

    .line 624
    .line 625
    const-wide/16 v8, 0x0

    .line 626
    .line 627
    invoke-static {v1, v8, v9}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 628
    .line 629
    .line 630
    goto :goto_f

    .line 631
    :goto_e
    monitor-exit v6

    .line 632
    throw v0

    .line 633
    :cond_23
    :goto_f
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 634
    .line 635
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 636
    .line 637
    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    .line 638
    .line 639
    invoke-virtual {v1, v6, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    .line 640
    .line 641
    .line 642
    add-int/lit8 v5, v5, -0x1

    .line 643
    .line 644
    move-object/from16 v1, p1

    .line 645
    .line 646
    const/4 v6, 0x1

    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :cond_24
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 650
    .line 651
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 652
    .line 653
    if-eqz v1, :cond_25

    .line 654
    .line 655
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 656
    .line 657
    .line 658
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-lez v1, :cond_26

    .line 663
    .line 664
    const/4 v2, 0x1

    .line 665
    sub-int/2addr v1, v2

    .line 666
    :goto_10
    if-ltz v1, :cond_26

    .line 667
    .line 668
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 669
    .line 670
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 671
    .line 672
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, Lcom/android/server/am/UidRecord;

    .line 677
    .line 678
    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    .line 679
    .line 680
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 681
    .line 682
    .line 683
    add-int/lit8 v1, v1, -0x1

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_26
    return-void
.end method
