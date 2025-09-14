.class public final Lcom/android/server/power/stats/CpuPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HOUR_IN_MILLIS:D


# instance fields
.field public mCombinedEnergyConsumerToPowerBracketMap:[[I

.field public final mCpuClusterCount:I

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuScalingStepCount:I

.field public mEnergyConsumerToCombinedEnergyConsumerMap:[I

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerMultiplierForCpuActive:D

.field public final mPowerMultipliersByCluster:[D

.field public final mPowerMultipliersByScalingStep:[D

.field public final mScalingStepToCluster:[I

.field public mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    sput-wide v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    .line 15
    .line 16
    new-array v0, v0, [D

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    iput v1, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuClusterCount:I

    .line 26
    .line 27
    new-array v1, v1, [D

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    move v2, v1

    .line 33
    move v3, v2

    .line 34
    :goto_0
    iget v4, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuClusterCount:I

    .line 35
    .line 36
    sget-wide v5, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    .line 37
    .line 38
    if-ge v2, v4, :cond_1

    .line 39
    .line 40
    aget v4, v0, v2

    .line 41
    .line 42
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    div-double/2addr v8, v5

    .line 49
    aput-wide v8, v7, v2

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    move v8, v1

    .line 56
    :goto_1
    array-length v9, v7

    .line 57
    if-ge v8, v9, :cond_0

    .line 58
    .line 59
    iget-object v9, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    .line 60
    .line 61
    aput v2, v9, v3

    .line 62
    .line 63
    iget-object v9, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 64
    .line 65
    invoke-virtual {p2, v4, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    div-double/2addr v10, v5

    .line 70
    aput-wide v10, v9, v3

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    add-int/lit8 v8, v8, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string p1, "cpu.active"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 83
    .line 84
    .line 85
    move-result-wide p1

    .line 86
    div-double/2addr p1, v5

    .line 87
    iput-wide p1, p0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 22
    .line 23
    invoke-direct {v3}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/CpuPowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 31
    .line 32
    .line 33
    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 34
    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    iput-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 38
    .line 39
    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 40
    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    iput-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 44
    .line 45
    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_c

    .line 49
    .line 50
    new-instance v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 51
    .line 52
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 53
    .line 54
    invoke-direct {v2, v4}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 60
    .line 61
    iget v4, v2, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 62
    .line 63
    if-eqz v4, :cond_c

    .line 64
    .line 65
    iget v2, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 66
    .line 67
    new-array v5, v4, [I

    .line 68
    .line 69
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 70
    .line 71
    new-array v5, v4, [[I

    .line 72
    .line 73
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 74
    .line 75
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    array-length v6, v5

    .line 82
    if-ne v4, v6, :cond_a

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 87
    .line 88
    array-length v4, v5

    .line 89
    new-array v6, v4, [Landroid/util/ArraySet;

    .line 90
    .line 91
    move v7, v3

    .line 92
    move v8, v7

    .line 93
    :goto_1
    array-length v9, v5

    .line 94
    if-ge v7, v9, :cond_3

    .line 95
    .line 96
    iget-object v9, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 97
    .line 98
    aget v10, v5, v7

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    new-instance v10, Landroid/util/ArraySet;

    .line 105
    .line 106
    array-length v11, v9

    .line 107
    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 108
    .line 109
    .line 110
    aput-object v10, v6, v7

    .line 111
    .line 112
    move v10, v3

    .line 113
    :goto_2
    array-length v11, v9

    .line 114
    if-ge v10, v11, :cond_2

    .line 115
    .line 116
    aget-object v11, v6, v7

    .line 117
    .line 118
    add-int/lit8 v12, v8, 0x1

    .line 119
    .line 120
    aget v8, v2, v8

    .line 121
    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    move v8, v12

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    array-length v2, v5

    .line 137
    new-array v5, v2, [Landroid/util/ArraySet;

    .line 138
    .line 139
    move v7, v3

    .line 140
    move v8, v7

    .line 141
    :goto_3
    if-ge v7, v4, :cond_8

    .line 142
    .line 143
    move v9, v3

    .line 144
    :goto_4
    const/4 v10, -0x1

    .line 145
    if-ge v9, v8, :cond_6

    .line 146
    .line 147
    aget-object v11, v5, v9

    .line 148
    .line 149
    aget-object v12, v6, v7

    .line 150
    .line 151
    move v13, v3

    .line 152
    :goto_5
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-ge v13, v14, :cond_5

    .line 157
    .line 158
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-eqz v14, :cond_4

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_6
    move v9, v10

    .line 176
    :goto_6
    if-eq v9, v10, :cond_7

    .line 177
    .line 178
    iget-object v10, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 179
    .line 180
    aput v9, v10, v7

    .line 181
    .line 182
    aget-object v9, v5, v9

    .line 183
    .line 184
    aget-object v10, v6, v7

    .line 185
    .line 186
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_7
    iget-object v9, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 191
    .line 192
    aput v8, v9, v7

    .line 193
    .line 194
    add-int/lit8 v9, v8, 0x1

    .line 195
    .line 196
    aget-object v10, v6, v7

    .line 197
    .line 198
    aput-object v10, v5, v8

    .line 199
    .line 200
    move v8, v9

    .line 201
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 205
    .line 206
    :goto_8
    if-ltz v2, :cond_c

    .line 207
    .line 208
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 209
    .line 210
    aget-object v6, v5, v2

    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    new-array v6, v6, [I

    .line 217
    .line 218
    aput-object v6, v4, v2

    .line 219
    .line 220
    aget-object v4, v5, v2

    .line 221
    .line 222
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    add-int/lit8 v4, v4, -0x1

    .line 227
    .line 228
    :goto_9
    if-ltz v4, :cond_9

    .line 229
    .line 230
    iget-object v6, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 231
    .line 232
    aget-object v6, v6, v2

    .line 233
    .line 234
    aget-object v7, v5, v2

    .line 235
    .line 236
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    check-cast v7, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    aput v7, v6, v4

    .line 247
    .line 248
    add-int/lit8 v4, v4, -0x1

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_a
    new-array v4, v2, [I

    .line 255
    .line 256
    move v5, v3

    .line 257
    :goto_a
    if-ge v5, v2, :cond_b

    .line 258
    .line 259
    aput v5, v4, v5

    .line 260
    .line 261
    add-int/lit8 v5, v5, 0x1

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_b
    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 265
    .line 266
    aput-object v4, v2, v3

    .line 267
    .line 268
    :cond_c
    iget-object v2, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 269
    .line 270
    iget v4, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 271
    .line 272
    const-string v5, ", expected: "

    .line 273
    .line 274
    const-string v6, "CpuPowerStatsProcessor"

    .line 275
    .line 276
    iget v7, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    .line 277
    .line 278
    if-eq v4, v7, :cond_d

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v1, "Mismatched CPU scaling step count in PowerStats: "

    .line 283
    .line 284
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_d
    iget v2, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 305
    .line 306
    iget v4, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCpuClusterCount:I

    .line 307
    .line 308
    if-eq v2, v4, :cond_e

    .line 309
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v1, "Mismatched CPU cluster count in PowerStats: "

    .line 313
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_e
    new-array v2, v7, [J

    .line 335
    .line 336
    new-array v5, v4, [J

    .line 337
    .line 338
    new-array v6, v4, [J

    .line 339
    .line 340
    iget-object v8, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 341
    .line 342
    iget-object v8, v8, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 343
    .line 344
    check-cast v8, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    add-int/lit8 v9, v9, -0x1

    .line 351
    .line 352
    const-wide/16 v12, 0x0

    .line 353
    .line 354
    const-wide/16 v14, 0x0

    .line 355
    .line 356
    :goto_b
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    .line 357
    .line 358
    if-ltz v9, :cond_12

    .line 359
    .line 360
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v16

    .line 364
    move-object/from16 v10, v16

    .line 365
    .line 366
    check-cast v10, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 367
    .line 368
    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 369
    .line 370
    iget-object v10, v10, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 371
    .line 372
    invoke-virtual {v1, v10, v11}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    if-nez v10, :cond_f

    .line 377
    .line 378
    move-object/from16 p3, v8

    .line 379
    .line 380
    goto :goto_e

    .line 381
    :cond_f
    iget-object v10, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 382
    .line 383
    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 384
    .line 385
    iget v10, v10, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 386
    .line 387
    aget-wide v10, v11, v10

    .line 388
    .line 389
    add-long/2addr v14, v10

    .line 390
    const/4 v10, 0x0

    .line 391
    :goto_c
    if-ge v10, v4, :cond_10

    .line 392
    .line 393
    aget-wide v19, v5, v10

    .line 394
    .line 395
    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 396
    .line 397
    move-object/from16 p3, v8

    .line 398
    .line 399
    iget-object v8, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 400
    .line 401
    iget v11, v11, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 402
    .line 403
    add-int/2addr v11, v10

    .line 404
    aget-wide v21, v8, v11

    .line 405
    .line 406
    add-long v19, v19, v21

    .line 407
    .line 408
    aput-wide v19, v5, v10

    .line 409
    .line 410
    add-int/lit8 v10, v10, 0x1

    .line 411
    .line 412
    move-object/from16 v8, p3

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_10
    move-object/from16 p3, v8

    .line 416
    .line 417
    const/4 v8, 0x0

    .line 418
    :goto_d
    if-ge v8, v7, :cond_11

    .line 419
    .line 420
    iget-object v10, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 421
    .line 422
    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 423
    .line 424
    iget v10, v10, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 425
    .line 426
    add-int/2addr v10, v8

    .line 427
    aget-wide v10, v11, v10

    .line 428
    .line 429
    add-long/2addr v12, v10

    .line 430
    aget-wide v19, v2, v8

    .line 431
    .line 432
    add-long v19, v19, v10

    .line 433
    .line 434
    aput-wide v19, v2, v8

    .line 435
    .line 436
    aget v16, v3, v8

    .line 437
    .line 438
    aget-wide v19, v6, v16

    .line 439
    .line 440
    add-long v19, v19, v10

    .line 441
    .line 442
    aput-wide v19, v6, v16

    .line 443
    .line 444
    add-int/lit8 v8, v8, 0x1

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_11
    :goto_e
    add-int/lit8 v9, v9, -0x1

    .line 448
    .line 449
    move-object/from16 v8, p3

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_12
    const-wide/16 v8, 0x0

    .line 453
    .line 454
    cmp-long v10, v12, v8

    .line 455
    .line 456
    if-nez v10, :cond_13

    .line 457
    .line 458
    return-void

    .line 459
    :cond_13
    long-to-double v8, v14

    .line 460
    iget-wide v10, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    .line 461
    .line 462
    mul-double/2addr v10, v8

    .line 463
    new-array v8, v4, [D

    .line 464
    .line 465
    const/4 v9, 0x0

    .line 466
    :goto_f
    if-ge v9, v4, :cond_14

    .line 467
    .line 468
    iget-object v14, v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 469
    .line 470
    aget-wide v14, v14, v9

    .line 471
    .line 472
    aget-wide v0, v5, v9

    .line 473
    .line 474
    long-to-double v0, v0

    .line 475
    mul-double/2addr v14, v0

    .line 476
    aput-wide v14, v8, v9

    .line 477
    .line 478
    add-int/lit8 v9, v9, 0x1

    .line 479
    .line 480
    move-object/from16 v0, p0

    .line 481
    .line 482
    move-object/from16 v1, p1

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_14
    new-array v0, v7, [D

    .line 486
    .line 487
    const/4 v1, 0x0

    .line 488
    :goto_10
    if-ge v1, v7, :cond_16

    .line 489
    .line 490
    aget v4, v3, v1

    .line 491
    .line 492
    aget-wide v14, v2, v1

    .line 493
    .line 494
    long-to-double v14, v14

    .line 495
    mul-double v19, v10, v14

    .line 496
    .line 497
    move-wide/from16 v21, v10

    .line 498
    .line 499
    long-to-double v9, v12

    .line 500
    div-double v19, v19, v9

    .line 501
    .line 502
    aget-wide v9, v6, v4

    .line 503
    .line 504
    const-wide/16 v16, 0x0

    .line 505
    .line 506
    cmp-long v5, v9, v16

    .line 507
    .line 508
    if-eqz v5, :cond_15

    .line 509
    .line 510
    aget-wide v4, v8, v4

    .line 511
    .line 512
    mul-double/2addr v4, v14

    .line 513
    long-to-double v9, v9

    .line 514
    div-double/2addr v4, v9

    .line 515
    add-double v19, v4, v19

    .line 516
    .line 517
    :cond_15
    move-object/from16 v4, p0

    .line 518
    .line 519
    iget-object v5, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 520
    .line 521
    aget-wide v9, v5, v1

    .line 522
    .line 523
    mul-double/2addr v9, v14

    .line 524
    add-double v9, v9, v19

    .line 525
    .line 526
    aput-wide v9, v0, v1

    .line 527
    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 529
    .line 530
    move-wide/from16 v10, v21

    .line 531
    .line 532
    goto :goto_10

    .line 533
    :cond_16
    move-object/from16 v4, p0

    .line 534
    .line 535
    iget-object v1, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 536
    .line 537
    iget v3, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 538
    .line 539
    iget v5, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 540
    .line 541
    iget-object v6, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 542
    .line 543
    iget v1, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 544
    .line 545
    iget-object v7, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 546
    .line 547
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 548
    .line 549
    check-cast v7, Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    add-int/lit8 v8, v8, -0x1

    .line 556
    .line 557
    const/4 v9, 0x0

    .line 558
    :goto_11
    if-ltz v8, :cond_22

    .line 559
    .line 560
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v12

    .line 564
    check-cast v12, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 565
    .line 566
    new-instance v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 567
    .line 568
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 569
    .line 570
    .line 571
    iput-object v13, v12, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 572
    .line 573
    new-array v14, v5, [J

    .line 574
    .line 575
    iput-object v14, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 576
    .line 577
    new-array v14, v5, [D

    .line 578
    .line 579
    iput-object v14, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 580
    .line 581
    iget-object v14, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 582
    .line 583
    iget-object v12, v12, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 584
    .line 585
    move-object/from16 v15, p1

    .line 586
    .line 587
    invoke-virtual {v15, v12, v14}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 588
    .line 589
    .line 590
    const/4 v14, 0x0

    .line 591
    :goto_12
    if-ge v14, v3, :cond_18

    .line 592
    .line 593
    aget-wide v10, v2, v14

    .line 594
    .line 595
    const-wide/16 v16, 0x0

    .line 596
    .line 597
    cmp-long v21, v10, v16

    .line 598
    .line 599
    if-nez v21, :cond_17

    .line 600
    .line 601
    move-object/from16 v16, v2

    .line 602
    .line 603
    move/from16 v21, v3

    .line 604
    .line 605
    move-object/from16 p3, v7

    .line 606
    .line 607
    move/from16 v24, v8

    .line 608
    .line 609
    goto :goto_13

    .line 610
    :cond_17
    move-object/from16 v16, v2

    .line 611
    .line 612
    iget-object v2, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 613
    .line 614
    move/from16 v21, v3

    .line 615
    .line 616
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 617
    .line 618
    iget v2, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 619
    .line 620
    add-int/2addr v2, v14

    .line 621
    aget-wide v2, v3, v2

    .line 622
    .line 623
    aget-wide v22, v0, v14

    .line 624
    .line 625
    move-object/from16 p3, v7

    .line 626
    .line 627
    move/from16 v24, v8

    .line 628
    .line 629
    long-to-double v7, v2

    .line 630
    mul-double v22, v22, v7

    .line 631
    .line 632
    long-to-double v7, v10

    .line 633
    div-double v22, v22, v7

    .line 634
    .line 635
    aget v7, v6, v14

    .line 636
    .line 637
    iget-object v8, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 638
    .line 639
    aget-wide v10, v8, v7

    .line 640
    .line 641
    add-long/2addr v10, v2

    .line 642
    aput-wide v10, v8, v7

    .line 643
    .line 644
    iget-object v2, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 645
    .line 646
    aget-wide v10, v2, v7

    .line 647
    .line 648
    add-double v10, v10, v22

    .line 649
    .line 650
    aput-wide v10, v2, v7

    .line 651
    .line 652
    :goto_13
    add-int/lit8 v14, v14, 0x1

    .line 653
    .line 654
    move-object/from16 v7, p3

    .line 655
    .line 656
    move-object/from16 v2, v16

    .line 657
    .line 658
    move/from16 v3, v21

    .line 659
    .line 660
    move/from16 v8, v24

    .line 661
    .line 662
    goto :goto_12

    .line 663
    :cond_18
    move-object/from16 v16, v2

    .line 664
    .line 665
    move/from16 v21, v3

    .line 666
    .line 667
    move-object/from16 p3, v7

    .line 668
    .line 669
    move/from16 v24, v8

    .line 670
    .line 671
    if-eqz v1, :cond_20

    .line 672
    .line 673
    iget-object v2, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 674
    .line 675
    iget v2, v2, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 676
    .line 677
    if-nez v2, :cond_19

    .line 678
    .line 679
    goto/16 :goto_1a

    .line 680
    .line 681
    :cond_19
    if-nez v9, :cond_1a

    .line 682
    .line 683
    new-array v9, v2, [J

    .line 684
    .line 685
    goto :goto_14

    .line 686
    :cond_1a
    const-wide/16 v7, 0x0

    .line 687
    .line 688
    invoke-static {v9, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 689
    .line 690
    .line 691
    :goto_14
    const/4 v3, 0x0

    .line 692
    :goto_15
    if-ge v3, v2, :cond_1b

    .line 693
    .line 694
    iget-object v7, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 695
    .line 696
    aget v7, v7, v3

    .line 697
    .line 698
    aget-wide v10, v9, v7

    .line 699
    .line 700
    iget-object v8, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 701
    .line 702
    iget-object v14, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 703
    .line 704
    invoke-virtual {v8, v3, v14}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 705
    .line 706
    .line 707
    move-result-wide v22

    .line 708
    add-long v22, v22, v10

    .line 709
    .line 710
    aput-wide v22, v9, v7

    .line 711
    .line 712
    add-int/lit8 v3, v3, 0x1

    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_1b
    iget-object v2, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 716
    .line 717
    array-length v2, v2

    .line 718
    add-int/lit8 v2, v2, -0x1

    .line 719
    .line 720
    :goto_16
    if-ltz v2, :cond_20

    .line 721
    .line 722
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 723
    .line 724
    aget-object v3, v3, v2

    .line 725
    .line 726
    if-nez v3, :cond_1c

    .line 727
    .line 728
    move-object/from16 v25, v0

    .line 729
    .line 730
    const-wide/16 v19, 0x0

    .line 731
    .line 732
    goto :goto_19

    .line 733
    :cond_1c
    aget-wide v7, v9, v2

    .line 734
    .line 735
    long-to-double v7, v7

    .line 736
    const-wide v10, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    mul-double/2addr v7, v10

    .line 742
    array-length v10, v3

    .line 743
    const/4 v11, 0x0

    .line 744
    const-wide/16 v22, 0x0

    .line 745
    .line 746
    :goto_17
    if-ge v11, v10, :cond_1d

    .line 747
    .line 748
    aget v14, v3, v11

    .line 749
    .line 750
    move-object/from16 v25, v0

    .line 751
    .line 752
    iget-object v0, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 753
    .line 754
    aget-wide v26, v0, v14

    .line 755
    .line 756
    add-double v22, v22, v26

    .line 757
    .line 758
    add-int/lit8 v11, v11, 0x1

    .line 759
    .line 760
    move-object/from16 v0, v25

    .line 761
    .line 762
    goto :goto_17

    .line 763
    :cond_1d
    move-object/from16 v25, v0

    .line 764
    .line 765
    const-wide/16 v19, 0x0

    .line 766
    .line 767
    cmpl-double v0, v22, v19

    .line 768
    .line 769
    if-nez v0, :cond_1e

    .line 770
    .line 771
    goto :goto_19

    .line 772
    :cond_1e
    array-length v0, v3

    .line 773
    const/4 v10, 0x0

    .line 774
    :goto_18
    if-ge v10, v0, :cond_1f

    .line 775
    .line 776
    aget v11, v3, v10

    .line 777
    .line 778
    iget-object v14, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 779
    .line 780
    aget-wide v26, v14, v11

    .line 781
    .line 782
    mul-double v26, v26, v7

    .line 783
    .line 784
    div-double v26, v26, v22

    .line 785
    .line 786
    aput-wide v26, v14, v11

    .line 787
    .line 788
    add-int/lit8 v10, v10, 0x1

    .line 789
    .line 790
    goto :goto_18

    .line 791
    :cond_1f
    :goto_19
    add-int/lit8 v2, v2, -0x1

    .line 792
    .line 793
    move-object/from16 v0, v25

    .line 794
    .line 795
    goto :goto_16

    .line 796
    :cond_20
    :goto_1a
    move-object/from16 v25, v0

    .line 797
    .line 798
    const-wide/16 v19, 0x0

    .line 799
    .line 800
    iget-object v0, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 801
    .line 802
    array-length v0, v0

    .line 803
    add-int/lit8 v0, v0, -0x1

    .line 804
    .line 805
    move-wide/from16 v10, v19

    .line 806
    .line 807
    :goto_1b
    if-ltz v0, :cond_21

    .line 808
    .line 809
    iget-object v2, v13, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 810
    .line 811
    aget-wide v2, v2, v0

    .line 812
    .line 813
    add-double/2addr v10, v2

    .line 814
    add-int/lit8 v0, v0, -0x1

    .line 815
    .line 816
    goto :goto_1b

    .line 817
    :cond_21
    iget-object v0, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 818
    .line 819
    iget-object v2, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 820
    .line 821
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 822
    .line 823
    .line 824
    iget-object v0, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 825
    .line 826
    invoke-virtual {v15, v12, v0}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 827
    .line 828
    .line 829
    add-int/lit8 v8, v24, -0x1

    .line 830
    .line 831
    move-object/from16 v7, p3

    .line 832
    .line 833
    move-object/from16 v2, v16

    .line 834
    .line 835
    move/from16 v3, v21

    .line 836
    .line 837
    move-object/from16 v0, v25

    .line 838
    .line 839
    goto/16 :goto_11

    .line 840
    .line 841
    :cond_22
    move-object/from16 v15, p1

    .line 842
    .line 843
    const-wide/16 v19, 0x0

    .line 844
    .line 845
    iget-object v0, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 846
    .line 847
    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 848
    .line 849
    check-cast v0, Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    add-int/lit8 v0, v0, -0x1

    .line 856
    .line 857
    :goto_1c
    if-ltz v0, :cond_25

    .line 858
    .line 859
    iget-object v1, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 860
    .line 861
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 862
    .line 863
    check-cast v1, Ljava/util/ArrayList;

    .line 864
    .line 865
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    check-cast v1, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 870
    .line 871
    new-instance v2, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 872
    .line 873
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 874
    .line 875
    .line 876
    iput-object v2, v1, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 877
    .line 878
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 879
    .line 880
    iget v3, v3, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 881
    .line 882
    new-array v5, v3, [J

    .line 883
    .line 884
    iput-object v5, v2, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 885
    .line 886
    new-array v5, v3, [D

    .line 887
    .line 888
    iput-object v5, v2, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 889
    .line 890
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 891
    .line 892
    check-cast v1, Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    add-int/lit8 v5, v5, -0x1

    .line 899
    .line 900
    :goto_1d
    if-ltz v5, :cond_24

    .line 901
    .line 902
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 907
    .line 908
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v6, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 911
    .line 912
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    const/4 v7, 0x0

    .line 916
    :goto_1e
    if-ge v7, v3, :cond_23

    .line 917
    .line 918
    iget-object v8, v2, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 919
    .line 920
    aget-wide v9, v8, v7

    .line 921
    .line 922
    iget-object v11, v6, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 923
    .line 924
    aget-wide v11, v11, v7

    .line 925
    .line 926
    add-long/2addr v9, v11

    .line 927
    aput-wide v9, v8, v7

    .line 928
    .line 929
    iget-object v8, v2, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 930
    .line 931
    aget-wide v9, v8, v7

    .line 932
    .line 933
    iget-object v11, v6, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 934
    .line 935
    aget-wide v11, v11, v7

    .line 936
    .line 937
    add-double/2addr v9, v11

    .line 938
    aput-wide v9, v8, v7

    .line 939
    .line 940
    add-int/lit8 v7, v7, 0x1

    .line 941
    .line 942
    goto :goto_1e

    .line 943
    :cond_23
    add-int/lit8 v5, v5, -0x1

    .line 944
    .line 945
    goto :goto_1d

    .line 946
    :cond_24
    add-int/lit8 v0, v0, -0x1

    .line 947
    .line 948
    goto :goto_1c

    .line 949
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    .line 950
    .line 951
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v15, v0}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-nez v1, :cond_2c

    .line 962
    .line 963
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 968
    .line 969
    .line 970
    move-result v1

    .line 971
    if-eqz v1, :cond_2c

    .line 972
    .line 973
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    check-cast v1, Ljava/lang/Integer;

    .line 978
    .line 979
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    const/4 v2, 0x0

    .line 984
    :goto_20
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 985
    .line 986
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 987
    .line 988
    check-cast v3, Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 991
    .line 992
    .line 993
    move-result v3

    .line 994
    if-ge v2, v3, :cond_2b

    .line 995
    .line 996
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 997
    .line 998
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 999
    .line 1000
    check-cast v3, Ljava/util/ArrayList;

    .line 1001
    .line 1002
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 1007
    .line 1008
    iget-object v5, v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 1009
    .line 1010
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v5, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 1013
    .line 1014
    const/4 v6, 0x0

    .line 1015
    :goto_21
    iget-object v7, v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 1016
    .line 1017
    check-cast v7, Ljava/util/ArrayList;

    .line 1018
    .line 1019
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1020
    .line 1021
    .line 1022
    move-result v7

    .line 1023
    if-ge v6, v7, :cond_2a

    .line 1024
    .line 1025
    iget-object v7, v3, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 1026
    .line 1027
    check-cast v7, Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v7

    .line 1033
    check-cast v7, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 1034
    .line 1035
    iget-object v8, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 1036
    .line 1037
    iget-object v9, v7, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 1038
    .line 1039
    invoke-virtual {v15, v1, v9, v8}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v8

    .line 1043
    if-nez v8, :cond_26

    .line 1044
    .line 1045
    move/from16 v18, v2

    .line 1046
    .line 1047
    move-object/from16 p3, v3

    .line 1048
    .line 1049
    const-wide/16 v16, 0x0

    .line 1050
    .line 1051
    goto :goto_24

    .line 1052
    :cond_26
    move-wide/from16 v9, v19

    .line 1053
    .line 1054
    const/4 v8, 0x0

    .line 1055
    :goto_22
    iget-object v11, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 1056
    .line 1057
    iget v12, v11, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 1058
    .line 1059
    if-ge v8, v12, :cond_29

    .line 1060
    .line 1061
    iget-object v12, v5, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 1062
    .line 1063
    aget-wide v12, v12, v8

    .line 1064
    .line 1065
    const-wide/16 v16, 0x0

    .line 1066
    .line 1067
    cmp-long v14, v12, v16

    .line 1068
    .line 1069
    if-nez v14, :cond_27

    .line 1070
    .line 1071
    move/from16 v18, v2

    .line 1072
    .line 1073
    move-object/from16 p3, v3

    .line 1074
    .line 1075
    goto :goto_23

    .line 1076
    :cond_27
    iget-object v14, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 1077
    .line 1078
    iget v11, v11, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 1079
    .line 1080
    add-int/2addr v11, v8

    .line 1081
    move/from16 v18, v2

    .line 1082
    .line 1083
    move-object/from16 p3, v3

    .line 1084
    .line 1085
    aget-wide v2, v14, v11

    .line 1086
    .line 1087
    cmp-long v11, v2, v16

    .line 1088
    .line 1089
    if-nez v11, :cond_28

    .line 1090
    .line 1091
    goto :goto_23

    .line 1092
    :cond_28
    iget-object v11, v5, Lcom/android/server/power/stats/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 1093
    .line 1094
    aget-wide v21, v11, v8

    .line 1095
    .line 1096
    long-to-double v2, v2

    .line 1097
    mul-double v21, v21, v2

    .line 1098
    .line 1099
    long-to-double v2, v12

    .line 1100
    div-double v21, v21, v2

    .line 1101
    .line 1102
    add-double v9, v21, v9

    .line 1103
    .line 1104
    :goto_23
    add-int/lit8 v8, v8, 0x1

    .line 1105
    .line 1106
    move-object/from16 v3, p3

    .line 1107
    .line 1108
    move/from16 v2, v18

    .line 1109
    .line 1110
    goto :goto_22

    .line 1111
    :cond_29
    move/from16 v18, v2

    .line 1112
    .line 1113
    move-object/from16 p3, v3

    .line 1114
    .line 1115
    const-wide/16 v16, 0x0

    .line 1116
    .line 1117
    iget-object v2, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 1118
    .line 1119
    invoke-virtual {v11, v2, v9, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v2, v7, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 1123
    .line 1124
    iget-object v3, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 1125
    .line 1126
    invoke-virtual {v15, v1, v2, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 1127
    .line 1128
    .line 1129
    :goto_24
    add-int/lit8 v6, v6, 0x1

    .line 1130
    .line 1131
    move-object/from16 v3, p3

    .line 1132
    .line 1133
    move/from16 v2, v18

    .line 1134
    .line 1135
    goto :goto_21

    .line 1136
    :cond_2a
    move/from16 v18, v2

    .line 1137
    .line 1138
    const-wide/16 v16, 0x0

    .line 1139
    .line 1140
    add-int/lit8 v2, v18, 0x1

    .line 1141
    .line 1142
    goto/16 :goto_20

    .line 1143
    .line 1144
    :cond_2b
    const-wide/16 v16, 0x0

    .line 1145
    .line 1146
    goto/16 :goto_1f

    .line 1147
    .line 1148
    :cond_2c
    iget-object v0, v4, Lcom/android/server/power/stats/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 1149
    .line 1150
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 1151
    .line 1152
    .line 1153
    return-void
.end method
