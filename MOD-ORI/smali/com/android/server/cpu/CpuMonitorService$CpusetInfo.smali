.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final cpuset:I

.field public mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

.field public final mSnapshotsByUptime:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 5
    .line 6
    new-instance p1, Landroid/util/LongSparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V
    .locals 6

    .line 1
    iget v0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 5
    .line 6
    if-eq v2, v1, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "CpuMonitorService"

    .line 20
    .line 21
    const-string p2, "Provided invalid expectedCpuset %d"

    .line 22
    .line 23
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    and-int/2addr v0, v3

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    and-int/2addr v0, v1

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 45
    .line 46
    invoke-direct {v0, p1, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;-><init>(J)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 50
    .line 51
    invoke-virtual {v2, p1, p2, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lez v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 70
    .line 71
    iget-wide v4, v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 72
    .line 73
    sub-long/2addr p1, v4

    .line 74
    sget-wide v4, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    .line 75
    .line 76
    cmp-long p1, p1, v4

    .line 77
    .line 78
    if-lez p1, :cond_2

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-boolean p0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 86
    .line 87
    iget-wide p1, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 88
    .line 89
    if-nez p0, :cond_3

    .line 90
    .line 91
    iget p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    .line 92
    .line 93
    add-int/2addr p0, v1

    .line 94
    iput p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    .line 95
    .line 96
    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    .line 97
    .line 98
    add-long/2addr v1, p1

    .line 99
    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    .line 103
    .line 104
    add-int/2addr p0, v1

    .line 105
    iput p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    .line 106
    .line 107
    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 108
    .line 109
    iget-wide v3, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 110
    .line 111
    add-long/2addr v1, v3

    .line 112
    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 113
    .line 114
    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    .line 115
    .line 116
    add-long/2addr v1, p1

    .line 117
    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void
.end method

.method public final populateLatestCpuAvailabilityInfo(JJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    sub-int/2addr v1, v4

    .line 19
    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 24
    .line 25
    iget-wide v9, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 26
    .line 27
    cmp-long v3, v9, p1

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 37
    .line 38
    if-eq v1, v4, :cond_2

    .line 39
    .line 40
    if-eq v1, v5, :cond_1

    .line 41
    .line 42
    const-string v3, "Invalid cpuset: "

    .line 43
    .line 44
    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v1, "CPUSET_BACKGROUND"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "CPUSET_ALL"

    .line 53
    .line 54
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v3, "CpuMonitorService"

    .line 59
    .line 60
    const-string v4, "Skipping stale CPU availability information for cpuset %s"

    .line 61
    .line 62
    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iput-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    iget-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-wide v2, v2, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 73
    .line 74
    cmp-long v2, v2, v9

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    sub-long v2, p1, p3

    .line 80
    .line 81
    new-instance v13, Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iget-object v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-int/2addr v1, v4

    .line 94
    const-wide/16 v11, 0x0

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const-wide v14, 0x7fffffffffffffffL

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    move-wide/from16 v16, v14

    .line 103
    .line 104
    move-wide v14, v11

    .line 105
    :goto_1
    if-ltz v1, :cond_7

    .line 106
    .line 107
    iget-object v6, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 108
    .line 109
    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 114
    .line 115
    move-wide/from16 v18, v9

    .line 116
    .line 117
    iget-wide v8, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 118
    .line 119
    cmp-long v10, v8, v2

    .line 120
    .line 121
    if-gtz v10, :cond_6

    .line 122
    .line 123
    move-wide/from16 v16, v8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    move-wide/from16 v16, v8

    .line 129
    .line 130
    iget-wide v8, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 131
    .line 132
    add-long/2addr v11, v8

    .line 133
    iget-wide v8, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    .line 134
    .line 135
    add-long/2addr v14, v8

    .line 136
    add-int/lit8 v1, v1, -0x1

    .line 137
    .line 138
    move-wide/from16 v9, v18

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    move-wide/from16 v18, v9

    .line 142
    .line 143
    :goto_2
    cmp-long v1, v16, v2

    .line 144
    .line 145
    if-gtz v1, :cond_9

    .line 146
    .line 147
    if-ge v4, v5, :cond_8

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    long-to-double v1, v11

    .line 151
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 152
    .line 153
    mul-double/2addr v1, v3

    .line 154
    long-to-double v3, v14

    .line 155
    div-double/2addr v1, v3

    .line 156
    double-to-int v1, v1

    .line 157
    :goto_3
    move v8, v1

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    :goto_4
    const/4 v1, -0x1

    .line 160
    goto :goto_3

    .line 161
    :goto_5
    iget v6, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 162
    .line 163
    move-object v5, v13

    .line 164
    move-wide/from16 v9, v18

    .line 165
    .line 166
    move-wide/from16 v11, p3

    .line 167
    .line 168
    invoke-direct/range {v5 .. v12}, Lcom/android/server/cpu/CpuAvailabilityInfo;-><init>(IIIJJ)V

    .line 169
    .line 170
    .line 171
    iput-object v13, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 172
    .line 173
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CpusetInfo{cpuset = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 10
    .line 11
    if-eq v2, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v2, v1, :cond_0

    .line 15
    .line 16
    const-string v1, "Invalid cpuset: "

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "CPUSET_BACKGROUND"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "CPUSET_ALL"

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mSnapshotsByUptime = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", mLatestCpuAvailabilityInfo = "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 p0, 0x7d

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
