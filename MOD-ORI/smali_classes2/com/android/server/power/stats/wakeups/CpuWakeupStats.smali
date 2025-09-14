.class public final Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final WAKEUP_WRITE_DELAY_MS:J


# instance fields
.field final mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

.field public final mHandler:Landroid/os/Handler;

.field public final mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

.field public final mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

.field public final mReusableUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field final mWakeupAttribution:Landroid/util/LongSparseArray;

.field final mWakeupEvents:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    .line 10
    .line 11
    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 12
    .line 13
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    .line 14
    .line 15
    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 16
    .line 17
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    .line 18
    .line 19
    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 22
    .line 23
    new-instance v0, Landroid/util/LongSparseArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 29
    .line 30
    new-instance v0, Landroid/util/LongSparseArray;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 36
    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    new-instance v0, Landroid/util/SparseIntArray;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 51
    .line 52
    sget-object v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->sInstanceMap:Landroid/util/LongSparseArray;

    .line 53
    .line 54
    const-class v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->sInstanceMap:Landroid/util/LongSparseArray;

    .line 58
    .line 59
    const v2, 0x1170010

    .line 60
    .line 61
    .line 62
    int-to-long v3, v2

    .line 63
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ltz v5, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 74
    .line 75
    monitor-exit v0

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 91
    .line 92
    .line 93
    const-class p1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 94
    .line 95
    monitor-enter p1

    .line 96
    :try_start_1
    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    move-object p1, v0

    .line 101
    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 102
    .line 103
    new-instance p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 104
    .line 105
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p1, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 114
    .line 115
    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    .line 116
    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    throw p0

    .line 121
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    throw p0
.end method

.method public static subsystemToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const-string p0, "N/A"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "Cellular_data"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "Sensor"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "Sound_trigger"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "Wifi"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "Alarm"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const-string p0, "Unknown"

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 5
    .line 6
    iget-wide v2, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 22
    .line 23
    iget-wide v3, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 32
    .line 33
    iget-wide v2, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ge v4, v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-wide v6, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 47
    .line 48
    sub-long v8, v6, v2

    .line 49
    .line 50
    add-long v10, v6, v2

    .line 51
    .line 52
    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 53
    .line 54
    move v7, v5

    .line 55
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->removeBetween(IJJ)Landroid/util/SparseIntArray;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_2
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final declared-synchronized attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    sub-long v3, p2, v0

    .line 9
    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 15
    .line 16
    add-long/2addr p2, v0

    .line 17
    invoke-virtual {v3, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :goto_0
    const/4 p3, 0x0

    .line 22
    if-gt v2, p2, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 41
    .line 42
    iget-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 43
    .line 44
    invoke-virtual {p2, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/util/SparseArray;

    .line 49
    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    new-instance p2, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 58
    .line 59
    iget-wide v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_4

    .line 67
    :cond_0
    :goto_1
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/util/SparseIntArray;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_1
    :goto_2
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ge p3, p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    add-int/lit8 p3, p3, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    :goto_3
    monitor-exit p0

    .line 104
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    monitor-exit p0

    .line 110
    return p3

    .line 111
    :goto_4
    monitor-exit p0

    .line 112
    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 11

    .line 1
    const-string v0, "Current proc-state map ("

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "CPU wakeup stats:"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 29
    .line 30
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "):"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    move v1, v0

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v1, v2, :cond_1

    .line 74
    .line 75
    if-lez v1, :cond_0

    .line 76
    .line 77
    const-string v2, ", "

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, ":"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 135
    .line 136
    .line 137
    new-instance v1, Landroid/util/SparseLongArray;

    .line 138
    .line 139
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "Wakeup events:"

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/lit8 v2, v2, -0x1

    .line 157
    .line 158
    :goto_2
    if-ltz v2, :cond_8

    .line 159
    .line 160
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 161
    .line 162
    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 167
    .line 168
    .line 169
    const-string v3, ":"

    .line 170
    .line 171
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 178
    .line 179
    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 184
    .line 185
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const-string v4, "Attribution: "

    .line 189
    .line 190
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 194
    .line 195
    iget-wide v5, v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 196
    .line 197
    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Landroid/util/SparseArray;

    .line 202
    .line 203
    if-nez v3, :cond_2

    .line 204
    .line 205
    const-string v3, "N/A"

    .line 206
    .line 207
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_5

    .line 211
    .line 212
    :cond_2
    move v4, v0

    .line 213
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-ge v4, v5, :cond_7

    .line 218
    .line 219
    if-lez v4, :cond_3

    .line 220
    .line 221
    const-string v5, ", "

    .line 222
    .line 223
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-static {v0, v0}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 235
    .line 236
    .line 237
    move-result-wide v5

    .line 238
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    add-int/lit8 v5, v5, 0x1

    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    invoke-static {v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v6, " ["

    .line 260
    .line 261
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Landroid/util/SparseIntArray;

    .line 269
    .line 270
    if-eqz v6, :cond_6

    .line 271
    .line 272
    move v8, v0

    .line 273
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    if-ge v8, v9, :cond_5

    .line 278
    .line 279
    if-lez v8, :cond_4

    .line 280
    .line 281
    const-string v9, ", "

    .line 282
    .line 283
    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_4
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 291
    .line 292
    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v10, " "

    .line 299
    .line 300
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    invoke-static {v10}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    add-int/lit8 v8, v8, 0x1

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 325
    .line 326
    :cond_6
    const-string v6, "]"

    .line 327
    .line 328
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-static {v7, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 336
    .line 337
    .line 338
    move-result-wide v7

    .line 339
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 340
    .line 341
    .line 342
    add-int/lit8 v4, v4, 0x1

    .line 343
    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 347
    .line 348
    .line 349
    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    .line 351
    .line 352
    add-int/lit8 v2, v2, -0x1

    .line 353
    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 357
    .line 358
    .line 359
    const-string p2, "Attribution stats:"

    .line 360
    .line 361
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 365
    .line 366
    .line 367
    :goto_6
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    if-ge v0, p2, :cond_9

    .line 372
    .line 373
    new-instance p2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string p3, "Subsystem "

    .line 379
    .line 380
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 384
    .line 385
    .line 386
    move-result p3

    .line 387
    invoke-static {p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p3

    .line 391
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string p2, ": "

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide p2

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v3, "/"

    .line 423
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    .line 428
    .line 429
    .line 430
    move-result p2

    .line 431
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    add-int/lit8 v0, v0, 0x1

    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string p3, "Total: "

    .line 450
    .line 451
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 455
    .line 456
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    .line 457
    .line 458
    .line 459
    move-result p3

    .line 460
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .line 478
    .line 479
    monitor-exit p0

    .line 480
    return-void

    .line 481
    :goto_7
    monitor-exit p0

    .line 482
    throw p1
.end method

.method public final declared-synchronized noteWakeupTimeAndReason(JJLjava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 3
    .line 4
    move-object v0, p5

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 8
    .line 9
    .line 10
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 16
    .line 17
    invoke-virtual {p4, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    .line 21
    .line 22
    .line 23
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 24
    .line 25
    iget-wide p4, p4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 28
    .line 29
    sub-long/2addr p1, p4

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    :goto_0
    if-ltz p4, :cond_1

    .line 35
    .line 36
    iget-object p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 37
    .line 38
    invoke-virtual {p5, p4}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p4, p4, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 47
    .line 48
    invoke-virtual {p4, p1, p2}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    :goto_1
    if-ltz p1, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    invoke-direct {p2, p0, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    .line 67
    .line 68
    .line 69
    sget-wide p3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    .line 70
    .line 71
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit p0

    .line 77
    throw p1
.end method

.method public final varargs declared-synchronized noteWakingActivity(J[II)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p3

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    aget v2, p3, v0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 35
    .line 36
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-nez p3, :cond_2

    .line 41
    .line 42
    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->recordActivity(IJLandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public final declared-synchronized systemServicesReady()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 3
    .line 4
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, "battery_stats"

    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method
