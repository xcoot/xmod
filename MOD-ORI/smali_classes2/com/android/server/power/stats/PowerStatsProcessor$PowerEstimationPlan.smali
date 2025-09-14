.class public final Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final combinedDeviceStateEstimations:Ljava/util/List;

.field public final deviceStateEstimations:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

.field public final uidStateEstimates:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 10

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
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/MultiStateStats$States;)[[I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    array-length v1, v0

    .line 36
    const/4 v2, 0x0

    .line 37
    move v3, v2

    .line 38
    :goto_0
    if-ge v3, v1, :cond_0

    .line 39
    .line 40
    aget-object v4, v0, v3

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 43
    .line 44
    new-instance v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 45
    .line 46
    invoke-direct {v6, p1, v4}, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;-><init>([Lcom/android/server/power/stats/MultiStateStats$States;[I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v1, 0x2

    .line 66
    new-array v3, v1, [Lcom/android/server/power/stats/MultiStateStats$States;

    .line 67
    .line 68
    move v4, v2

    .line 69
    :goto_1
    const/4 v5, -0x1

    .line 70
    if-ge v4, v1, :cond_3

    .line 71
    .line 72
    aget-object v6, v0, v4

    .line 73
    .line 74
    iget-boolean v7, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 75
    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v6, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1, v6}, Lcom/android/server/power/stats/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eq v6, v5, :cond_2

    .line 86
    .line 87
    aget-object v5, p1, v6

    .line 88
    .line 89
    iget-boolean v5, v5, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    aget-object v5, v0, v4

    .line 94
    .line 95
    aput-object v5, v3, v4

    .line 96
    .line 97
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-array p1, v1, [I

    .line 101
    .line 102
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/MultiStateStats$States;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const/4 v1, 0x3

    .line 116
    new-array v3, v1, [Lcom/android/server/power/stats/MultiStateStats$States;

    .line 117
    .line 118
    new-array v4, v1, [Lcom/android/server/power/stats/MultiStateStats$States;

    .line 119
    .line 120
    move v6, v2

    .line 121
    :goto_3
    if-ge v6, v1, :cond_6

    .line 122
    .line 123
    aget-object v7, p1, v6

    .line 124
    .line 125
    iget-boolean v8, v7, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 126
    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    iget-object v7, v7, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0, v7}, Lcom/android/server/power/stats/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eq v7, v5, :cond_5

    .line 137
    .line 138
    aget-object v7, v0, v7

    .line 139
    .line 140
    iget-boolean v7, v7, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 141
    .line 142
    if-eqz v7, :cond_5

    .line 143
    .line 144
    aget-object v7, p1, v6

    .line 145
    .line 146
    aput-object v7, v3, v6

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    aget-object v7, p1, v6

    .line 150
    .line 151
    aput-object v7, v4, v6

    .line 152
    .line 153
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/MultiStateStats$States;)[[I

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    array-length v0, p1

    .line 161
    move v1, v2

    .line 162
    :goto_5
    if-ge v1, v0, :cond_b

    .line 163
    .line 164
    aget-object v5, p1, v1

    .line 165
    .line 166
    invoke-virtual {p0, v3, v5}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/MultiStateStats$States;[I)Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-nez v6, :cond_7

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v7, "Mismatch in UID and combined device states: "

    .line 175
    .line 176
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v5}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const-string v6, "PowerStatsProcessor"

    .line 191
    .line 192
    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_7
    move v7, v2

    .line 197
    :goto_6
    iget-object v8, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-ge v7, v8, :cond_9

    .line 204
    .line 205
    iget-object v8, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 212
    .line 213
    iget-object v9, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 214
    .line 215
    if-ne v9, v6, :cond_8

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    const/4 v8, 0x0

    .line 222
    :goto_7
    if-nez v8, :cond_a

    .line 223
    .line 224
    new-instance v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 225
    .line 226
    invoke-direct {v8, v6, v4}, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;-><init>(Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/MultiStateStats$States;)V

    .line 227
    .line 228
    .line 229
    iget-object v6, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_a
    iget-object v6, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 235
    .line 236
    new-instance v7, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 237
    .line 238
    invoke-direct {v7, v5}, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;-><init>([I)V

    .line 239
    .line 240
    .line 241
    check-cast v6, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_b
    return-void
.end method


# virtual methods
.method public final combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/MultiStateStats$States;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt p4, v0, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, p3}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iget-object p4, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 16
    .line 17
    check-cast p4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-ge v1, p4, :cond_1

    .line 24
    .line 25
    iget-object p4, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 26
    .line 27
    check-cast p4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    check-cast p4, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 34
    .line 35
    iget-object v0, p4, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p4, 0x0

    .line 48
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/MultiStateStats$States;[I)Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    new-instance p1, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 55
    .line 56
    invoke-direct {p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;-><init>([Lcom/android/server/power/stats/MultiStateStats$States;[I)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 60
    .line 61
    check-cast p0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p0, p1, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 67
    .line 68
    check-cast p0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    aget-object v0, p1, p4

    .line 75
    .line 76
    iget-boolean v0, v0, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    :goto_2
    aget-object v0, p1, p4

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 83
    .line 84
    array-length v0, v0

    .line 85
    if-ge v1, v0, :cond_5

    .line 86
    .line 87
    aput v1, p3, p4

    .line 88
    .line 89
    add-int/lit8 v0, p4, 0x1

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/MultiStateStats$States;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/MultiStateStats$States;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 100
    .line 101
    .line 102
    :cond_5
    return-void
.end method

.method public final getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/MultiStateStats$States;[I)Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p2, v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final resetIntermediates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 15
    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 23
    .line 24
    iput-object v1, v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :goto_1
    if-ltz v0, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 42
    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 50
    .line 51
    iput-object v1, v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 57
    .line 58
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    :goto_2
    if-ltz v0, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 69
    .line 70
    check-cast v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 79
    .line 80
    check-cast v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    :goto_3
    if-ltz v2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, -0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Step 1. Compute device-wide power estimates for state combinations:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "\n"

    .line 21
    .line 22
    const-string v4, "    "

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, "Step 2. Combine device-wide estimates that are untracked per UID:\n"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 50
    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    move v5, v2

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 70
    .line 71
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 72
    .line 73
    check-cast v7, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v8, 0x1

    .line 80
    if-gt v7, v8, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v5, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, ": "

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move v5, v2

    .line 97
    :goto_2
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 98
    .line 99
    check-cast v7, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ge v5, v7, :cond_3

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    const-string v7, " + "

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 115
    .line 116
    check-cast v7, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 123
    .line 124
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move v5, v8

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    if-nez v5, :cond_5

    .line 138
    .line 139
    const-string v1, "    N/A\n"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_5
    const-string v1, "Step 3. Proportionally distribute power estimates to UIDs:\n"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 150
    .line 151
    check-cast p0, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 173
    .line 174
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v5, "\n        among: "

    .line 180
    .line 181
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move v5, v2

    .line 185
    :goto_4
    iget-object v6, v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 186
    .line 187
    check-cast v6, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-ge v5, v6, :cond_7

    .line 194
    .line 195
    iget-object v6, v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 196
    .line 197
    check-cast v6, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 204
    .line 205
    if-eqz v5, :cond_6

    .line 206
    .line 207
    const-string v7, ", "

    .line 208
    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    :cond_6
    iget-object v7, v1, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 213
    .line 214
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 215
    .line 216
    invoke-static {v7, v6}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    add-int/lit8 v5, v5, 0x1

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0
.end method
