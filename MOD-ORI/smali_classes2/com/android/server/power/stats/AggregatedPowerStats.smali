.class public final Lcom/android/server/power/stats/AggregatedPowerStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClockUpdates:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

.field public mDurationMs:J

.field public final mGenericPowerComponent:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

.field public final mPowerComponentStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseArray;

    .line 16
    .line 17
    check-cast p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 42
    .line 43
    iget v4, v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 44
    .line 45
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 54
    .line 55
    invoke-direct {v4, p0, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 56
    .line 57
    .line 58
    iget v2, v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 59
    .line 60
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 67
    .line 68
    const/4 p2, -0x1

    .line 69
    invoke-direct {p1, p2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 70
    .line 71
    .line 72
    filled-new-array {v0, v3}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    filled-new-array {v0, v3, v1}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 88
    .line 89
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 93
    .line 94
    new-instance v7, Landroid/os/PersistableBundle;

    .line 95
    .line 96
    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v2, -0x1

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    move-object v1, p1

    .line 105
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final addClockUpdate(JJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, v0, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 7
    .line 8
    iput-wide p3, v0, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 11
    .line 12
    check-cast p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 p2, 0x64

    .line 19
    .line 20
    if-ge p1, p2, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 23
    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "Too many clock updates. Replacing the previous update with "

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo p2, "yyyy-MM-dd-HH-mm-ss"

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "AggregatedPowerStats"

    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 57
    .line 58
    move-object p1, p0

    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    add-int/lit8 p1, p1, -0x1

    .line 66
    .line 67
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 12
    .line 13
    if-nez v1, :cond_8

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 30
    .line 31
    iput-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 34
    .line 35
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 36
    .line 37
    array-length v4, v3

    .line 38
    iget-object v5, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 39
    .line 40
    array-length v6, v5

    .line 41
    const-wide/16 v7, 0x0

    .line 42
    .line 43
    if-ne v4, v6, :cond_1

    .line 44
    .line 45
    array-length v4, v5

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2, v7, v8}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "State configurations have different lengths: "

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 79
    .line 80
    array-length v4, v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, " vs "

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    array-length v4, v5

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v4, "AggregatePowerStats"

    .line 98
    .line 99
    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    add-int/lit8 v3, v3, -0x1

    .line 109
    .line 110
    :goto_1
    if-ltz v3, :cond_5

    .line 111
    .line 112
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    iget-object v5, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 125
    .line 126
    iget-object v6, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 127
    .line 128
    if-nez v6, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    new-instance v9, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 132
    .line 133
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    array-length v10, v6

    .line 137
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([II)[I

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iput-object v6, v9, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 142
    .line 143
    iget-object v6, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 144
    .line 145
    if-eqz v6, :cond_4

    .line 146
    .line 147
    invoke-virtual {v2, v9, v7, v8}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 148
    .line 149
    .line 150
    iget-object v6, v9, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 151
    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    iget-object v5, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 155
    .line 156
    iget-object v6, v6, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 157
    .line 158
    iget-object v5, v5, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 159
    .line 160
    invoke-virtual {v6, v5}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v5, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 164
    .line 165
    invoke-virtual {v5, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    iget-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 172
    .line 173
    if-nez v1, :cond_7

    .line 174
    .line 175
    iget-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 178
    .line 179
    if-nez v1, :cond_6

    .line 180
    .line 181
    sget-object v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$1;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 189
    .line 190
    :goto_3
    iput-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 191
    .line 192
    :cond_7
    iget-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 193
    .line 194
    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/power/stats/PowerStatsProcessor;->start(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    move-object v1, v2

    .line 203
    :cond_8
    iget-object p0, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 204
    .line 205
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 11
    .line 12
    check-cast v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_1

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 21
    .line 22
    check-cast v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    .line 32
    .line 33
    const-string v6, "GMT"

    .line 34
    .line 35
    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    .line 36
    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    iget-wide v1, v5, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 41
    .line 42
    const-string v8, "Start time: "

    .line 43
    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v8, v5, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 48
    .line 49
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 50
    .line 51
    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 63
    .line 64
    .line 65
    new-instance v6, Ljava/util/Date;

    .line 66
    .line 67
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " ("

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, ") duration: "

    .line 86
    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-wide v5, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 91
    .line 92
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    .line 101
    .line 102
    const-string v8, "Clock update:  "

    .line 103
    .line 104
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v8, v5, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 108
    .line 109
    sub-long/2addr v8, v1

    .line 110
    const/16 v10, 0x16

    .line 111
    .line 112
    invoke-static {v8, v9, v0, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 113
    .line 114
    .line 115
    const-string v8, " "

    .line 116
    .line 117
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-wide v8, v5, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 121
    .line 122
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 123
    .line 124
    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    .line 137
    .line 138
    new-instance v6, Ljava/util/Date;

    .line 139
    .line 140
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    .line 158
    .line 159
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_1
    const-string v0, "Device"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    .line 170
    .line 171
    move v0, v3

    .line 172
    :goto_2
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-ge v0, v1, :cond_2

    .line 179
    .line 180
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 187
    .line 188
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 195
    .line 196
    .line 197
    new-instance v0, Ljava/util/HashSet;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 200
    .line 201
    .line 202
    move v1, v3

    .line 203
    :goto_3
    iget-object v2, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-ge v1, v2, :cond_3

    .line 210
    .line 211
    iget-object v2, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    new-array v1, v1, [Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, [Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    array-length v1, v0

    .line 241
    move v2, v3

    .line 242
    :goto_4
    if-ge v2, v1, :cond_6

    .line 243
    .line 244
    aget-object v4, v0, v2

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 258
    .line 259
    .line 260
    move v5, v3

    .line 261
    :goto_5
    iget-object v6, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 262
    .line 263
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-ge v5, v6, :cond_5

    .line 268
    .line 269
    iget-object v6, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 270
    .line 271
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    check-cast v6, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 276
    .line 277
    iget-object v7, v6, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 278
    .line 279
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    check-cast v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 284
    .line 285
    if-eqz v7, :cond_4

    .line 286
    .line 287
    iget-object v7, v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 288
    .line 289
    if-eqz v7, :cond_4

    .line 290
    .line 291
    iget-object v6, v6, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 292
    .line 293
    iget-object v8, v6, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v9, 0x0

    .line 296
    invoke-virtual {v6}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 301
    .line 302
    .line 303
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    add-int/lit8 v2, v2, 0x1

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_6
    return-void
.end method

.method public final reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 31
    .line 32
    iput-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 33
    .line 34
    iput-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 35
    .line 36
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    :goto_1
    if-ltz v3, :cond_0

    .line 50
    .line 51
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 58
    .line 59
    iput-object v2, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 60
    .line 61
    add-int/lit8 v3, v3, -0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public final setDeviceState(IIJ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_6

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 26
    .line 27
    aput p2, v2, p1

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 30
    .line 31
    aget-object v3, v2, p1

    .line 32
    .line 33
    iget-boolean v3, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/MultiStateStats;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    :goto_1
    if-ltz v3, :cond_2

    .line 53
    .line 54
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/server/power/stats/MultiStateStats;

    .line 61
    .line 62
    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    aget-object v2, v2, p1

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 73
    .line 74
    invoke-static {v3, v2}, Lcom/android/server/power/stats/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v4, -0x1

    .line 79
    if-eq v2, v4, :cond_5

    .line 80
    .line 81
    aget-object v3, v3, v2

    .line 82
    .line 83
    iget-boolean v3, v3, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    add-int/lit8 v3, v3, -0x1

    .line 94
    .line 95
    :goto_2
    if-ltz v3, :cond_5

    .line 96
    .line 97
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 104
    .line 105
    iget-object v5, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 106
    .line 107
    if-nez v5, :cond_3

    .line 108
    .line 109
    invoke-virtual {v1, v4, p3, p4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v5, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 113
    .line 114
    aput p2, v5, v2

    .line 115
    .line 116
    iget-object v4, v4, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-virtual {v4, v2, p2, p3, p4}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 121
    .line 122
    .line 123
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    return-void
.end method

.method public final setUidState(IIJ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    iget-boolean v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v4, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v2, p3, p4}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 40
    .line 41
    aput p2, v1, v3

    .line 42
    .line 43
    iget-object v1, v2, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/MultiStateStats;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/android/server/power/stats/MultiStateStats;->setState(IIJ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

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
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
