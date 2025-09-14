.class public final Lcom/android/server/cpu/CpuInfoReader$CpuInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final avgTimeInStateCpuFreqKHz:J

.field public final cpuCore:I

.field public final cpusetCategories:I

.field public final curCpuFreqKHz:J

.field public final isOnline:Z

.field public final latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

.field public final mNormalizedAvailableCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method public constructor <init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 12
    iput p2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 13
    iput-boolean p3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 14
    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 15
    iput-wide p6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 16
    iput-wide p8, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 17
    iput-object p12, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 18
    iput-wide p10, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method

.method public constructor <init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 14

    move-object v13, p0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v12, p10

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 2
    iget-boolean v0, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v3, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 4
    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    add-long/2addr v3, v7

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v0, "CpuMonitorService"

    const-string v3, "Total CPU time millis is 0. This shouldn\'t happen unless stats are polled too frequently"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    long-to-double v3, v3

    long-to-double v5, v5

    sub-double v5, v3, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    div-double/2addr v5, v3

    .line 6
    iget-wide v3, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 7
    iget-wide v3, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    :cond_2
    long-to-double v0, v3

    mul-double/2addr v5, v0

    .line 8
    iget-wide v0, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    long-to-double v0, v0

    div-double/2addr v5, v0

    sub-double v2, v7, v5

    mul-double/2addr v2, v0

    div-double/2addr v2, v7

    double-to-long v1, v2

    .line 9
    :goto_0
    iput-wide v1, v13, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 40
    .line 41
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 42
    .line 43
    cmp-long v1, v3, v5

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 48
    .line 49
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 50
    .line 51
    cmp-long v1, v3, v5

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 66
    .line 67
    iget-wide p0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 68
    .line 69
    cmp-long p0, v3, p0

    .line 70
    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v2

    .line 75
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-wide v4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 20
    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-wide v5, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 26
    .line 27
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-wide v6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 32
    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-wide v7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 38
    .line 39
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-object v7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 44
    .line 45
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CpuInfo{ cpuCore = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", cpusetCategories = ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "], isOnline = "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const-string v1, "Yes"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "No"

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", curCpuFreqKHz = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 50
    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    cmp-long v5, v1, v3

    .line 54
    .line 55
    const-string/jumbo v6, "missing"

    .line 56
    .line 57
    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    move-object v1, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", maxCpuFreqKHz = "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 75
    .line 76
    cmp-long v5, v1, v3

    .line 77
    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    move-object v1, v6

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 95
    .line 96
    cmp-long v3, v1, v3

    .line 97
    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", latestCpuUsageStats = "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", mNormalizedAvailableCpuFreqKHz = "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 124
    .line 125
    const-string p0, " }"

    .line 126
    .line 127
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method
