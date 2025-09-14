.class public final Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

.field public final mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

.field public final mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

.field public final mDeviceStates:[I

.field public mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPowerStatsTimestamp:J

.field public mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

.field public final mStateStats:Landroid/util/SparseArray;

.field public mStateStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

.field public mStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

.field public final mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

.field public final mUidStats:Landroid/util/SparseArray;

.field public mUidStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

.field public mZeroArray:[J

.field public final powerComponentId:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStats;Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 21
    .line 22
    iget p1, p2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    new-array p1, p1, [I

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 42
    .line 43
    const-wide/16 p1, -0x1

    .line 44
    .line 45
    iput-wide p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 46
    .line 47
    return-void
.end method

.method public static dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v10, v0, [Z

    .line 3
    .line 4
    const/4 v11, 0x0

    .line 5
    aput-boolean v0, v10, v11

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    iget-object v1, v0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 9
    .line 10
    iget v2, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mDimensionCount:I

    .line 11
    .line 12
    new-array v3, v2, [J

    .line 13
    .line 14
    new-instance v12, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    iget-object v13, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 17
    .line 18
    move-object v1, v12

    .line 19
    move-object v2, p1

    .line 20
    move-object v4, v10

    .line 21
    move-object v5, p0

    .line 22
    move-object/from16 v6, p2

    .line 23
    .line 24
    move-object v7, v13

    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    move-object/from16 v9, p4

    .line 28
    .line 29
    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 30
    .line 31
    .line 32
    array-length v0, v13

    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    invoke-static {v12, v13, v0, v11}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 36
    .line 37
    .line 38
    aget-boolean v0, v10, v11

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    :goto_0
    if-ltz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/power/stats/MultiStateStats;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createStateStats(I)Lcom/android/server/power/stats/MultiStateStats;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, [J

    .line 49
    .line 50
    iget-object v4, v3, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 51
    .line 52
    invoke-virtual {v4, v2, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, v3, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 61
    .line 62
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 65
    .line 66
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 70
    .line 71
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int/2addr v0, v1

    .line 78
    :goto_1
    if-ltz v0, :cond_4

    .line 79
    .line 80
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 91
    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v3, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 98
    .line 99
    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, [J

    .line 106
    .line 107
    iget-object v5, v3, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 108
    .line 109
    invoke-virtual {v5, v4, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    .line 110
    .line 111
    .line 112
    iput-boolean v1, v3, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 113
    .line 114
    iput-boolean v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 115
    .line 116
    add-int/lit8 v0, v0, -0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sub-int/2addr p1, v1

    .line 126
    :goto_2
    if-ltz p1, :cond_8

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 135
    .line 136
    iget-boolean v2, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 137
    .line 138
    if-nez v2, :cond_7

    .line 139
    .line 140
    iget-object v2, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 141
    .line 142
    if-eqz v2, :cond_7

    .line 143
    .line 144
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mZeroArray:[J

    .line 145
    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    array-length v3, v3

    .line 149
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 150
    .line 151
    iget v4, v4, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 152
    .line 153
    if-eq v3, v4, :cond_6

    .line 154
    .line 155
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 156
    .line 157
    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 158
    .line 159
    new-array v3, v3, [J

    .line 160
    .line 161
    iput-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mZeroArray:[J

    .line 162
    .line 163
    :cond_6
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mZeroArray:[J

    .line 164
    .line 165
    iget-object v4, v2, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 166
    .line 167
    invoke-virtual {v4, v3, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    .line 168
    .line 169
    .line 170
    iput-boolean v1, v2, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 171
    .line 172
    :cond_7
    const/4 v2, 0x0

    .line 173
    iput-boolean v2, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 174
    .line 175
    add-int/lit8 p1, p1, -0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 179
    .line 180
    return-void
.end method

.method public final collectUids(Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final createDeviceStats(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/android/server/power/stats/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/MultiStateStats$States;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats;

    .line 24
    .line 25
    iget v3, v0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mDimensionCount:I

    .line 26
    .line 27
    invoke-direct {v2, v0, v3}, Lcom/android/server/power/stats/MultiStateStats;-><init>(Lcom/android/server/power/stats/MultiStateStats$Factory;I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 33
    .line 34
    const-wide/16 v4, -0x1

    .line 35
    .line 36
    cmp-long v0, v2, v4

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    move-wide p1, v2

    .line 41
    :cond_2
    cmp-long v0, p1, v4

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    array-length v2, v1

    .line 47
    if-ge v0, v2, :cond_4

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 50
    .line 51
    aget v2, v2, v0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 54
    .line 55
    invoke-virtual {v3, v0, v2, p1, p2}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/lit8 v3, v3, -0x1

    .line 65
    .line 66
    :goto_1
    if-ltz v3, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/android/server/power/stats/MultiStateStats;

    .line 75
    .line 76
    invoke-virtual {v4, v0, v2, p1, p2}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, -0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    return-void
.end method

.method public final createStateStats(I)Lcom/android/server/power/stats/MultiStateStats;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/MultiStateStats$States;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/power/stats/MultiStateStats;

    .line 25
    .line 26
    iget v2, v0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mDimensionCount:I

    .line 27
    .line 28
    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/MultiStateStats;-><init>(Lcom/android/server/power/stats/MultiStateStats$Factory;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    iget-object p1, v1, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object v1
.end method

.method public final createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/android/server/power/stats/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/MultiStateStats$States;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats;

    .line 24
    .line 25
    iget v3, v0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mDimensionCount:I

    .line 26
    .line 27
    invoke-direct {v2, v0, v3}, Lcom/android/server/power/stats/MultiStateStats;-><init>(Lcom/android/server/power/stats/MultiStateStats$Factory;I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 33
    .line 34
    const-wide/16 v4, -0x1

    .line 35
    .line 36
    cmp-long p0, v2, v4

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    move-wide p2, v2

    .line 41
    :cond_2
    cmp-long p0, p2, v4

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_0
    array-length v0, v1

    .line 47
    if-ge p0, v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 52
    .line 53
    aget v2, v2, p0

    .line 54
    .line 55
    invoke-virtual {v0, p0, v2, p2, p3}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p0, p0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public final dumpDevice(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, " states"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v2, v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/android/server/power/stats/MultiStateStats;

    .line 77
    .line 78
    invoke-static {p1, v4, v0, v3, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public final getDeviceStats([I[J)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Invalid number of tracked states: "

    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    array-length p1, p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " expected: "

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    array-length p1, v1

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final getUidStats(I)Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, v1, v2

    .line 7
    iget-boolean v4, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    if-eqz v4, :cond_0

    .line 8
    iget-object v3, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    invoke-static {v4, v3}, Lcom/android/server/power/stats/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 10
    aget-object v4, v4, v3

    .line 11
    iget-boolean v4, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    if-eqz v4, :cond_0

    .line 12
    iget-object v4, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v5, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v3, v5, v3

    aput v3, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public final getUidStats(I[I[J)Z
    .locals 3

    .line 14
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    if-eqz p0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid number of tracked states: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDeviceStats([I[J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setUidStats(I[I[J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p1, p0, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v3, v2, [I

    .line 27
    .line 28
    add-int/lit8 v4, v2, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v4, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aput v5, v3, v4

    .line 39
    .line 40
    add-int/lit8 v4, v4, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_1
    if-ge v4, v2, :cond_2

    .line 48
    .line 49
    aget v5, v3, v4

    .line 50
    .line 51
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 59
    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v6, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 76
    .line 77
    iget-object v7, v6, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-virtual {v6}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v1, v5, v7, v8, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
