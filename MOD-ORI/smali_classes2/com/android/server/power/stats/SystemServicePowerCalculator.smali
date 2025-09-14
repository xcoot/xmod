.class public final Lcom/android/server/power/stats/SystemServicePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v3, v1, :cond_1

    .line 28
    .line 29
    aget v5, v0, v3

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    array-length v6, v6

    .line 36
    move v7, v2

    .line 37
    :goto_1
    if-ge v7, v6, :cond_0

    .line 38
    .line 39
    iget-object v8, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 40
    .line 41
    add-int/lit8 v9, v4, 0x1

    .line 42
    .line 43
    new-instance v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 44
    .line 45
    invoke-virtual {p2, v5, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    invoke-direct {v10, v11, v12}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 50
    .line 51
    .line 52
    aput-object v10, v8, v4

    .line 53
    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    move v4, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/16 v4, 0x3e8

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    move-object/from16 v7, p7

    .line 25
    .line 26
    invoke-static {v5, v6, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x2

    .line 31
    const/4 v9, 0x0

    .line 32
    if-ne v7, v8, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    .line 35
    .line 36
    .line 37
    move-result-wide v10

    .line 38
    iget-object v0, v0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    move-object/from16 p2, v0

    .line 56
    .line 57
    move-object/from16 p3, v3

    .line 58
    .line 59
    move-wide/from16 p4, v12

    .line 60
    .line 61
    move-object/from16 p6, v2

    .line 62
    .line 63
    move-object/from16 p7, v8

    .line 64
    .line 65
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const-wide/16 v12, 0x0

    .line 70
    .line 71
    cmpl-double v0, v2, v12

    .line 72
    .line 73
    if-lez v0, :cond_2

    .line 74
    .line 75
    long-to-double v5, v5

    .line 76
    const-wide v12, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double/2addr v5, v12

    .line 82
    mul-double/2addr v5, v10

    .line 83
    div-double v12, v5, v2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    .line 87
    .line 88
    .line 89
    move-result-wide v12

    .line 90
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getTotalPower()D

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 107
    .line 108
    .line 109
    move-result-wide v12

    .line 110
    const/16 v3, 0x11

    .line 111
    .line 112
    neg-double v4, v12

    .line 113
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/4 v4, 0x1

    .line 121
    sub-int/2addr v3, v4

    .line 122
    :goto_1
    const/4 v5, 0x7

    .line 123
    if-ltz v3, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 130
    .line 131
    if-eq v6, v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getProportionalSystemServiceUsage()D

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    mul-double/2addr v10, v12

    .line 142
    invoke-virtual {v6, v5, v10, v11, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 143
    .line 144
    .line 145
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {p1, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v5, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v5, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getSystemServiceTimeAtCpuSpeeds()[J

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    array-length v3, p1

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v4, p0, v3

    .line 22
    .line 23
    aget-wide v5, p1, v3

    .line 24
    .line 25
    const-wide/16 v7, 0x3e8

    .line 26
    .line 27
    div-long/2addr v5, v7

    .line 28
    iget-wide v7, v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 29
    .line 30
    long-to-double v4, v5

    .line 31
    mul-double/2addr v7, v4

    .line 32
    add-double/2addr v0, v7

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-wide v0
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x7

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method
