.class public final Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAverageFrozenTimeInSeconds:I

.field public mBinderProxySnapshot:I

.field public mCachedAppFrozenDurations:[J

.field public mCachedAppHighWatermark:I

.field public mCachedInKb:I

.field public mEarliestFrozenTimestamp:J

.field public mFreeInKb:I

.field public mKernelInKb:I

.field public mLatestFrozenTimestamp:J

.field public mLongestFrozenTimeInSeconds:I

.field public mMeanFrozenTimeInSeconds:I

.field public mNumOfFrozenApps:I

.field public mShortestFrozenTimeInSeconds:I

.field public mTotalFrozenDurations:J

.field public mUptimeInSeconds:I

.field public mZramInKb:I

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 6
    return-void
.end method


# virtual methods
.method public final updateCachedAppsSnapshot(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    .line 15
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 20
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 22
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 26
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    .line 34
    if-eqz v3, :cond_0

    .line 36
    array-length v3, v3

    .line 37
    if-ge v3, v2, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_2

    .line 43
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 45
    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 49
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v2

    .line 55
    new-array v2, v2, [J

    .line 57
    iput-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 61
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 65
    new-instance v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;

    .line 67
    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;J)V

    .line 70
    const/4 v4, 0x1

    .line 71
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 74
    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 76
    if-lez v2, :cond_2

    .line 78
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    .line 80
    sub-long v3, p1, v3

    .line 82
    const-wide/16 v5, 0x3e8

    .line 84
    div-long/2addr v3, v5

    .line 85
    long-to-int v3, v3

    .line 86
    iput v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    .line 88
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    .line 90
    sub-long/2addr p1, v3

    .line 91
    div-long/2addr p1, v5

    .line 92
    long-to-int p1, p1

    .line 93
    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    .line 95
    iget-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    .line 97
    int-to-long v3, v2

    .line 98
    div-long/2addr p1, v3

    .line 99
    div-long/2addr p1, v5

    .line 100
    long-to-int p1, p1

    .line 101
    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    .line 103
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    .line 105
    div-int/lit8 p2, v2, 0x2

    .line 107
    invoke-static {p1, v1, v2, p2}, Lcom/android/internal/util/QuickSelect;->select([JIII)J

    .line 110
    move-result-wide p1

    .line 111
    div-long/2addr p1, v5

    .line 112
    long-to-int p1, p1

    .line 113
    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    .line 115
    :cond_2
    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 117
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 126
    move-result p2

    .line 127
    :goto_1
    if-ge v1, p2, :cond_4

    .line 129
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 132
    move-result v2

    .line 133
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 135
    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 137
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 139
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 141
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_3

    .line 147
    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 149
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 152
    move-result v3

    .line 153
    add-int/2addr v2, v3

    .line 154
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 156
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    .line 161
    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 170
    move-result-wide v1

    .line 171
    long-to-int p2, v1

    .line 172
    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    .line 177
    move-result-wide v1

    .line 178
    long-to-int p2, v1

    .line 179
    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 184
    move-result-wide v1

    .line 185
    long-to-int p2, v1

    .line 186
    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    .line 191
    move-result-wide p1

    .line 192
    long-to-int p1, p1

    .line 193
    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 199
    return-void

    .line 200
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 204
    throw p0
.end method
