.class public final Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 11

    .line 1
    iget-object p2, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 2
    .line 3
    iget p3, p2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 4
    .line 5
    new-array p3, p3, [J

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 8
    .line 9
    iget p2, p2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 10
    .line 11
    new-array p2, p2, [J

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 20
    .line 21
    iget-object p3, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 22
    .line 23
    invoke-direct {p2, p3}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 31
    .line 32
    check-cast p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    add-int/lit8 p2, p2, -0x1

    .line 39
    .line 40
    :goto_0
    sget-object p3, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 41
    .line 42
    const-wide v0, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    if-ltz p2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 52
    .line 53
    check-cast v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 62
    .line 63
    iget-object v4, v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 64
    .line 65
    invoke-virtual {p1, v4, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p3, v4, v3}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    long-to-double v4, v4

    .line 80
    mul-double/2addr v4, v0

    .line 81
    invoke-virtual {p3, v3, v4, v5}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 82
    .line 83
    .line 84
    iget-object p3, v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 87
    .line 88
    invoke-virtual {p1, p3, v0}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 89
    .line 90
    .line 91
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_6

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 111
    .line 112
    check-cast v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    add-int/lit8 v2, v2, -0x1

    .line 119
    .line 120
    :goto_2
    if-ltz v2, :cond_6

    .line 121
    .line 122
    iget-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 125
    .line 126
    check-cast v3, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 135
    .line 136
    check-cast v3, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    .line 144
    :goto_3
    if-ltz v4, :cond_5

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    add-int/lit8 v6, v6, -0x1

    .line 157
    .line 158
    :goto_4
    if-ltz v6, :cond_4

    .line 159
    .line 160
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    iget-object v8, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 171
    .line 172
    iget-object v9, v5, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 173
    .line 174
    invoke-virtual {p1, v7, v9, v8}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_3

    .line 179
    .line 180
    iget-object v8, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 181
    .line 182
    iget v9, p3, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 183
    .line 184
    aget-wide v9, v8, v9

    .line 185
    .line 186
    long-to-double v9, v9

    .line 187
    mul-double/2addr v9, v0

    .line 188
    invoke-virtual {p3, v8, v9, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 189
    .line 190
    .line 191
    iget-object v8, v5, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 192
    .line 193
    iget-object v9, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 194
    .line 195
    invoke-virtual {p1, v7, v8, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 196
    .line 197
    .line 198
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    return-void
.end method
