.class public final Lcom/android/server/power/stats/CpuPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mNumCpuClusters:I

.field public final mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    .line 3
    .line 4
    sput-object v0, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    iput v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 14
    .line 15
    const-string v2, "cpu.active"

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    new-array v1, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    move v2, v1

    .line 33
    :goto_0
    array-length v3, v0

    .line 34
    if-ge v2, v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 37
    .line 38
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 39
    .line 40
    aget v5, v0, v2

    .line 41
    .line 42
    invoke-virtual {p2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 47
    .line 48
    .line 49
    aput-object v4, v3, v2

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    new-array v2, v2, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    .line 62
    iget v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    .line 63
    .line 64
    new-array v2, v2, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 65
    .line 66
    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 67
    .line 68
    move v2, v1

    .line 69
    move v3, v2

    .line 70
    :goto_1
    array-length v4, v0

    .line 71
    if-ge v2, v4, :cond_2

    .line 72
    .line 73
    aget v4, v0, v2

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 80
    .line 81
    array-length v7, v5

    .line 82
    new-array v7, v7, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 83
    .line 84
    aput-object v7, v6, v2

    .line 85
    .line 86
    move v6, v1

    .line 87
    :goto_2
    array-length v7, v5

    .line 88
    if-ge v6, v7, :cond_1

    .line 89
    .line 90
    new-instance v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 91
    .line 92
    invoke-virtual {p2, v4, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    invoke-direct {v7, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 97
    .line 98
    .line 99
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 100
    .line 101
    aget-object v8, v8, v2

    .line 102
    .line 103
    aput-object v7, v8, v6

    .line 104
    .line 105
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 106
    .line 107
    add-int/lit8 v9, v3, 0x1

    .line 108
    .line 109
    aput-object v7, v8, v3

    .line 110
    .line 111
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    move v3, v9

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 39

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p7

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 8
    .line 9
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v6, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    move-object v10, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v10, 0x0

    .line 26
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v12, 0x1

    .line 35
    sub-int/2addr v1, v12

    .line 36
    move v15, v1

    .line 37
    const/4 v2, 0x0

    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    :goto_1
    const/4 v3, 0x0

    .line 41
    const/4 v1, 0x2

    .line 42
    const-wide v16, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    if-ltz v15, :cond_16

    .line 48
    .line 49
    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v18

    .line 53
    move-object/from16 v9, v18

    .line 54
    .line 55
    check-cast v9, Landroid/os/UidBatteryConsumer$Builder;

    .line 56
    .line 57
    sget-object v13, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 58
    .line 59
    if-ne v0, v13, :cond_1

    .line 60
    .line 61
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_1
    move-object v13, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 v13, 0x0

    .line 74
    :goto_2
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    move-object/from16 v18, v13

    .line 79
    .line 80
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    .line 81
    .line 82
    .line 83
    move-result-wide v12

    .line 84
    invoke-static {v12, v13, v8}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v19

    .line 92
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v21

    .line 96
    add-long v21, v21, v19

    .line 97
    .line 98
    const-wide/16 v19, 0x3e8

    .line 99
    .line 100
    div-long v21, v21, v19

    .line 101
    .line 102
    if-eq v0, v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    .line 109
    .line 110
    .line 111
    move-result-object v19

    .line 112
    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    .line 113
    .line 114
    .line 115
    move-result-object v20

    .line 116
    move-object/from16 v23, v11

    .line 117
    .line 118
    move v11, v0

    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move v7, v1

    .line 122
    move-object v1, v14

    .line 123
    move-object/from16 v24, v2

    .line 124
    .line 125
    move v7, v3

    .line 126
    move-wide v2, v12

    .line 127
    move-wide v12, v4

    .line 128
    move-object/from16 v4, v19

    .line 129
    .line 130
    move-object/from16 v5, v20

    .line 131
    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    move-wide v4, v12

    .line 137
    :goto_3
    move-wide v12, v0

    .line 138
    goto :goto_4

    .line 139
    :cond_3
    move-object/from16 v24, v2

    .line 140
    .line 141
    move v7, v3

    .line 142
    move-object/from16 v23, v11

    .line 143
    .line 144
    move v11, v0

    .line 145
    long-to-double v0, v12

    .line 146
    mul-double v0, v0, v16

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :goto_4
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    move v2, v7

    .line 158
    const/4 v3, 0x0

    .line 159
    const-wide/16 v25, 0x0

    .line 160
    .line 161
    const-wide/16 v27, 0x0

    .line 162
    .line 163
    :goto_5
    if-ge v2, v1, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v29

    .line 169
    move-object/from16 v7, v29

    .line 170
    .line 171
    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v29

    .line 177
    move-object/from16 v30, v0

    .line 178
    .line 179
    move-object/from16 v0, v29

    .line 180
    .line 181
    check-cast v0, Ljava/lang/String;

    .line 182
    .line 183
    move/from16 v29, v1

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v31

    .line 190
    add-long v25, v31, v25

    .line 191
    .line 192
    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v31

    .line 196
    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v33

    .line 200
    add-long v33, v33, v31

    .line 201
    .line 202
    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    .line 203
    .line 204
    .line 205
    move-result-wide v31

    .line 206
    move-wide/from16 v35, v4

    .line 207
    .line 208
    add-long v4, v31, v33

    .line 209
    .line 210
    if-eqz v3, :cond_5

    .line 211
    .line 212
    const-string v1, "*"

    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_4

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_4
    long-to-double v4, v4

    .line 222
    cmpg-double v7, v27, v4

    .line 223
    .line 224
    if-gez v7, :cond_6

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_6

    .line 231
    .line 232
    move-object v3, v0

    .line 233
    move-wide/from16 v27, v4

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_5
    :goto_6
    long-to-double v3, v4

    .line 237
    move-wide/from16 v27, v3

    .line 238
    .line 239
    move-object v3, v0

    .line 240
    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    move/from16 v1, v29

    .line 243
    .line 244
    move-object/from16 v0, v30

    .line 245
    .line 246
    move-wide/from16 v4, v35

    .line 247
    .line 248
    const/4 v7, 0x0

    .line 249
    goto :goto_5

    .line 250
    :cond_7
    move-wide/from16 v35, v4

    .line 251
    .line 252
    cmp-long v0, v25, v21

    .line 253
    .line 254
    if-lez v0, :cond_8

    .line 255
    .line 256
    move-wide/from16 v0, v25

    .line 257
    .line 258
    :goto_8
    const/4 v2, 0x1

    .line 259
    goto :goto_9

    .line 260
    :cond_8
    move-wide/from16 v0, v21

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :goto_9
    invoke-virtual {v9, v2, v12, v13, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    .line 268
    .line 269
    invoke-virtual {v4, v2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    if-eqz v18, :cond_14

    .line 285
    .line 286
    if-eq v11, v2, :cond_d

    .line 287
    .line 288
    const/4 v0, 0x2

    .line 289
    if-eq v11, v0, :cond_9

    .line 290
    .line 291
    :goto_a
    move-object/from16 v19, v10

    .line 292
    .line 293
    move-object/from16 v2, v24

    .line 294
    .line 295
    move-wide/from16 v37, v35

    .line 296
    .line 297
    const-wide/16 v20, 0x0

    .line 298
    .line 299
    goto/16 :goto_12

    .line 300
    .line 301
    :cond_9
    move-object/from16 v7, v18

    .line 302
    .line 303
    array-length v0, v7

    .line 304
    const/4 v3, 0x0

    .line 305
    :goto_b
    if-ge v3, v0, :cond_c

    .line 306
    .line 307
    aget-object v1, v7, v3

    .line 308
    .line 309
    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 310
    .line 311
    if-nez v2, :cond_a

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    const-wide/16 v18, 0x0

    .line 315
    .line 316
    goto :goto_c

    .line 317
    :cond_a
    invoke-virtual {v14, v2}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    const-wide/16 v18, 0x0

    .line 322
    .line 323
    cmp-long v2, v4, v18

    .line 324
    .line 325
    if-eqz v2, :cond_b

    .line 326
    .line 327
    long-to-double v4, v4

    .line 328
    mul-double v4, v4, v16

    .line 329
    .line 330
    const/4 v2, 0x2

    .line 331
    invoke-virtual {v9, v1, v4, v5, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 332
    .line 333
    .line 334
    goto :goto_c

    .line 335
    :cond_b
    const/4 v2, 0x2

    .line 336
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 337
    .line 338
    goto :goto_b

    .line 339
    :cond_c
    move-object/from16 v18, v7

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_d
    move-object/from16 v7, v18

    .line 343
    .line 344
    move-object/from16 v0, v24

    .line 345
    .line 346
    if-nez v0, :cond_e

    .line 347
    .line 348
    const/4 v0, 0x5

    .line 349
    new-array v2, v0, [D

    .line 350
    .line 351
    move-object v11, v2

    .line 352
    const-wide/16 v4, 0x0

    .line 353
    .line 354
    goto :goto_d

    .line 355
    :cond_e
    const-wide/16 v4, 0x0

    .line 356
    .line 357
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 358
    .line 359
    .line 360
    move-object v11, v0

    .line 361
    :goto_d
    const/4 v2, 0x0

    .line 362
    :goto_e
    const/4 v0, 0x7

    .line 363
    if-ge v2, v0, :cond_11

    .line 364
    .line 365
    invoke-static {v2}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    .line 366
    .line 367
    .line 368
    move-result v16

    .line 369
    if-nez v16, :cond_10

    .line 370
    .line 371
    :cond_f
    move/from16 v22, v2

    .line 372
    .line 373
    move-wide/from16 v20, v4

    .line 374
    .line 375
    move-wide/from16 v37, v35

    .line 376
    .line 377
    goto :goto_f

    .line 378
    :cond_10
    invoke-virtual {v14, v10, v2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_f

    .line 383
    .line 384
    aget-wide v17, v11, v16

    .line 385
    .line 386
    const/16 v19, 0x0

    .line 387
    .line 388
    const-wide/16 v20, 0x0

    .line 389
    .line 390
    move-object/from16 v0, p0

    .line 391
    .line 392
    move-object v1, v14

    .line 393
    move/from16 v22, v2

    .line 394
    .line 395
    move-wide/from16 v2, v20

    .line 396
    .line 397
    move-wide/from16 v20, v4

    .line 398
    .line 399
    move-wide/from16 v37, v35

    .line 400
    .line 401
    move-object/from16 v4, v19

    .line 402
    .line 403
    move-object v5, v10

    .line 404
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    .line 405
    .line 406
    .line 407
    move-result-wide v0

    .line 408
    add-double v17, v17, v0

    .line 409
    .line 410
    aput-wide v17, v11, v16

    .line 411
    .line 412
    :goto_f
    add-int/lit8 v2, v22, 0x1

    .line 413
    .line 414
    move-wide/from16 v4, v20

    .line 415
    .line 416
    move-wide/from16 v35, v37

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_11
    move-wide/from16 v20, v4

    .line 420
    .line 421
    move-wide/from16 v37, v35

    .line 422
    .line 423
    array-length v0, v7

    .line 424
    const/4 v3, 0x0

    .line 425
    :goto_10
    if-ge v3, v0, :cond_13

    .line 426
    .line 427
    aget-object v1, v7, v3

    .line 428
    .line 429
    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 430
    .line 431
    if-nez v2, :cond_12

    .line 432
    .line 433
    move-object/from16 v18, v7

    .line 434
    .line 435
    move-object/from16 v19, v10

    .line 436
    .line 437
    move-object/from16 p4, v11

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_12
    invoke-virtual {v14, v2}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    .line 441
    .line 442
    .line 443
    move-result-wide v4

    .line 444
    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 445
    .line 446
    aget-wide v16, v11, v2

    .line 447
    .line 448
    iget-object v2, v6, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 449
    .line 450
    move-object/from16 v18, v7

    .line 451
    .line 452
    iget-wide v6, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 453
    .line 454
    move-object/from16 v19, v10

    .line 455
    .line 456
    move-object/from16 p4, v11

    .line 457
    .line 458
    long-to-double v10, v4

    .line 459
    mul-double/2addr v6, v10

    .line 460
    add-double v6, v6, v16

    .line 461
    .line 462
    const/4 v2, 0x1

    .line 463
    invoke-virtual {v9, v1, v6, v7, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 468
    .line 469
    invoke-virtual {v6, v1, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 470
    .line 471
    .line 472
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 473
    .line 474
    move-object/from16 v6, p0

    .line 475
    .line 476
    move-object/from16 v11, p4

    .line 477
    .line 478
    move-object/from16 v7, v18

    .line 479
    .line 480
    move-object/from16 v10, v19

    .line 481
    .line 482
    goto :goto_10

    .line 483
    :cond_13
    move-object/from16 v18, v7

    .line 484
    .line 485
    move-object/from16 v19, v10

    .line 486
    .line 487
    move-object/from16 p4, v11

    .line 488
    .line 489
    move-object/from16 v2, p4

    .line 490
    .line 491
    goto :goto_12

    .line 492
    :cond_14
    move-object/from16 v19, v10

    .line 493
    .line 494
    move-object/from16 v0, v24

    .line 495
    .line 496
    move-wide/from16 v37, v35

    .line 497
    .line 498
    const-wide/16 v20, 0x0

    .line 499
    .line 500
    move-object v2, v0

    .line 501
    :goto_12
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-nez v0, :cond_15

    .line 506
    .line 507
    move-wide/from16 v0, v37

    .line 508
    .line 509
    add-double v4, v0, v12

    .line 510
    .line 511
    goto :goto_13

    .line 512
    :cond_15
    move-wide/from16 v0, v37

    .line 513
    .line 514
    move-wide v4, v0

    .line 515
    :goto_13
    add-int/lit8 v15, v15, -0x1

    .line 516
    .line 517
    move-object/from16 v6, p0

    .line 518
    .line 519
    move-object/from16 v7, p1

    .line 520
    .line 521
    move-object/from16 v0, v18

    .line 522
    .line 523
    move-object/from16 v10, v19

    .line 524
    .line 525
    move-object/from16 v11, v23

    .line 526
    .line 527
    const/4 v12, 0x1

    .line 528
    goto/16 :goto_1

    .line 529
    .line 530
    :cond_16
    move v2, v1

    .line 531
    move-wide v0, v4

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuEnergyConsumptionUC()J

    .line 533
    .line 534
    .line 535
    move-result-wide v3

    .line 536
    invoke-static {v3, v4, v8}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    move v7, v2

    .line 541
    const/4 v6, 0x1

    .line 542
    move-object/from16 v2, p1

    .line 543
    .line 544
    invoke-virtual {v2, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    invoke-virtual {v8, v6, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 549
    .line 550
    .line 551
    const/4 v8, 0x0

    .line 552
    invoke-virtual {v2, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    if-ne v5, v7, :cond_17

    .line 557
    .line 558
    long-to-double v0, v3

    .line 559
    mul-double v0, v0, v16

    .line 560
    .line 561
    :cond_17
    invoke-virtual {v2, v6, v0, v1, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 562
    .line 563
    .line 564
    return-void
.end method

.method public final calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 8
    .line 9
    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 10
    .line 11
    move-wide/from16 v5, p2

    .line 12
    .line 13
    long-to-double v5, v5

    .line 14
    mul-double/2addr v3, v5

    .line 15
    const-string v5, " actual # "

    .line 16
    .line 17
    const-string v6, "UID "

    .line 18
    .line 19
    const-string v7, "CpuPowerCalculator"

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    array-length v9, v1

    .line 25
    iget v10, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    .line 26
    .line 27
    if-ne v9, v10, :cond_0

    .line 28
    .line 29
    move v9, v8

    .line 30
    :goto_0
    if-ge v9, v10, :cond_1

    .line 31
    .line 32
    iget-object v11, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 33
    .line 34
    aget-object v11, v11, v9

    .line 35
    .line 36
    aget-wide v12, v1, v9

    .line 37
    .line 38
    iget-wide v14, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 39
    .line 40
    long-to-double v11, v12

    .line 41
    mul-double/2addr v14, v11

    .line 42
    add-double/2addr v3, v14

    .line 43
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v11, " CPU cluster # mismatch: Power Profile # "

    .line 59
    .line 60
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    array-length v1, v1

    .line 70
    invoke-static {v9, v1, v7}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    if-eqz v2, :cond_3

    .line 74
    .line 75
    array-length v1, v2

    .line 76
    iget-object v0, v0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 77
    .line 78
    array-length v9, v0

    .line 79
    if-ne v1, v9, :cond_2

    .line 80
    .line 81
    :goto_1
    array-length v1, v2

    .line 82
    if-ge v8, v1, :cond_3

    .line 83
    .line 84
    aget-object v1, v0, v8

    .line 85
    .line 86
    aget-wide v5, v2, v8

    .line 87
    .line 88
    iget-wide v9, v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 89
    .line 90
    long-to-double v5, v5

    .line 91
    mul-double/2addr v9, v5

    .line 92
    add-double/2addr v3, v9

    .line 93
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, " CPU freq # mismatch: Power Profile # "

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    array-length v0, v0

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    array-length v0, v2

    .line 121
    invoke-static {v1, v0, v7}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    return-wide v3
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method
