.class public final Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastMobileUidStats:Landroid/net/NetworkStats;

.field public final mLock:Ljava/lang/Object;

.field public final mMobileDataStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mUidPreviousState:Landroid/util/SparseIntArray;

.field public final mUidStats:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/app/usage/NetworkStatsManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/net/NetworkStats;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/selinux/RateLimiter;

    .line 22
    .line 23
    const-wide/16 v1, 0x1

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 33
    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 49
    .line 50
    const-string v0, "MobileDataStatsHandler"

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method public static isEmpty(Landroid/net/NetworkStats;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    cmp-long v3, v3, v1

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    cmp-long v3, v3, v1

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-wide v3, v1

    .line 46
    move-wide v5, v3

    .line 47
    :goto_1
    add-long/2addr v3, v5

    .line 48
    cmp-long p0, v3, v1

    .line 49
    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    :goto_2
    return p0
.end method


# virtual methods
.method public final getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 9
    .line 10
    invoke-direct {v1, p1, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 14
    .line 15
    check-cast p1, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 24
    .line 25
    check-cast p0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 35
    .line 36
    check-cast p1, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v0, 0xbb8

    .line 43
    .line 44
    if-ge p1, v0, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 54
    .line 55
    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 56
    .line 57
    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 58
    .line 59
    iput-wide v2, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 62
    .line 63
    check-cast p0, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method public final pullDataBytesTransfer(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransferLocked(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final pullDataBytesTransferLocked(Ljava/util/List;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 30
    .line 31
    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 40
    .line 41
    cmp-long v2, v2, v4

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget-wide v2, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 46
    .line 47
    cmp-long v2, v2, v4

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    iget-wide v1, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    .line 52
    .line 53
    cmp-long v1, v1, v4

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 69
    .line 70
    iget v4, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 77
    .line 78
    iget v0, v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    .line 79
    .line 80
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-wide v6, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 85
    .line 86
    iget-wide v8, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 87
    .line 88
    iget-wide v10, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    .line 89
    .line 90
    iget-wide v12, v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 91
    .line 92
    const/16 v3, 0x27dc

    .line 93
    .line 94
    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJJ)Landroid/util/StatsEvent;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public final updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    invoke-virtual {v0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    cmp-long v2, v2, v4

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    .line 81
    .line 82
    add-long/2addr v5, v3

    .line 83
    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 90
    .line 91
    add-long/2addr v5, v3

    .line 92
    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 99
    .line 100
    add-long/2addr v5, v3

    .line 101
    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    iget-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 108
    .line 109
    add-long/2addr v5, v3

    .line 110
    iput-wide v5, v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    monitor-exit p1

    .line 114
    goto :goto_2

    .line 115
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_4
    :goto_2
    return-void
.end method
