.class public final synthetic Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final processUidStats(I[J)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-array v2, v0, [J

    .line 23
    .line 24
    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 27
    .line 28
    iget v2, v2, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 29
    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v2, 0x1

    .line 40
    sub-int/2addr v0, v2

    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_0
    if-ltz v0, :cond_2

    .line 44
    .line 45
    aget-wide v5, p2, v0

    .line 46
    .line 47
    iget-object v7, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 48
    .line 49
    aget-wide v7, v7, v0

    .line 50
    .line 51
    sub-long/2addr v5, v7

    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    cmp-long v7, v5, v7

    .line 59
    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    move v4, v2

    .line 63
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 64
    .line 65
    iget-object v8, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 66
    .line 67
    iget v7, v7, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 68
    .line 69
    add-int/2addr v7, v0

    .line 70
    aput-wide v5, v8, v7

    .line 71
    .line 72
    iget-object v5, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 73
    .line 74
    aget-wide v6, p2, v0

    .line 75
    .line 76
    aput-wide v6, v5, v0

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz v4, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    :goto_1
    iget-object p2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 101
    .line 102
    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, [J

    .line 109
    .line 110
    if-nez p2, :cond_4

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 115
    .line 116
    iget-object p2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    :goto_2
    array-length p0, p2

    .line 123
    if-ge v3, p0, :cond_5

    .line 124
    .line 125
    aget-wide p0, p2, v3

    .line 126
    .line 127
    iget-object v0, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 128
    .line 129
    aget-wide v4, v0, v3

    .line 130
    .line 131
    add-long/2addr p0, v4

    .line 132
    aput-wide p0, p2, v3

    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    :goto_3
    return-void
.end method
