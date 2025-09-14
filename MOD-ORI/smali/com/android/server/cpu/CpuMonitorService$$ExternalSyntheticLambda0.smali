.class public final synthetic Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/cpu/CpuMonitorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/cpu/CpuMonitorService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/cpu/CpuMonitorService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v0, "CpuMonitorService"

    .line 26
    .line 27
    const-string v1, "Failed to read CPU info from device"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    .line 36
    .line 37
    .line 38
    monitor-exit v3

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v3

    .line 47
    const/4 v4, 0x0

    .line 48
    move v5, v4

    .line 49
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ge v5, v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 60
    .line 61
    move v7, v4

    .line 62
    :goto_1
    iget-object v8, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-ge v7, v8, :cond_1

    .line 69
    .line 70
    iget-object v8, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    .line 77
    .line 78
    invoke-virtual {v8, v0, v1, v6}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    goto :goto_7

    .line 86
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v2, v4

    .line 90
    :goto_2
    iget-object v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-ge v2, v5, :cond_3

    .line 97
    .line 98
    iget-object v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    .line 105
    .line 106
    iget-wide v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    .line 107
    .line 108
    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->populateLatestCpuAvailabilityInfo(JJ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5}, Lcom/android/server/cpu/CpuMonitorService;->checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    iget-wide v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 118
    .line 119
    const-wide/16 v7, 0x0

    .line 120
    .line 121
    cmp-long v2, v5, v7

    .line 122
    .line 123
    if-lez v2, :cond_6

    .line 124
    .line 125
    :goto_3
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-ge v4, v2, :cond_5

    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-lez v2, :cond_4

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    :goto_4
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 150
    .line 151
    iget-object v4, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    iget-wide v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 154
    .line 155
    add-long/2addr v0, v5

    .line 156
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    .line 161
    .line 162
    .line 163
    :goto_5
    monitor-exit v3

    .line 164
    :goto_6
    return-void

    .line 165
    :goto_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    throw p0
.end method
