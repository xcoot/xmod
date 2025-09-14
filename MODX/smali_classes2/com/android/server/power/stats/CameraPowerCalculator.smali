.class public final Lcom/android/server/power/stats/CameraPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 5
    .line 6
    const-string v1, "camera.avg"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/4 v7, 0x1

    .line 18
    sub-int/2addr v6, v7

    .line 19
    :goto_0
    if-ltz v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    .line 26
    .line 27
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getCameraEnergyConsumptionUC()J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    invoke-static {v10, v11, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    iget-object v13, v0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 48
    .line 49
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v9, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v14

    .line 56
    const/4 v9, 0x2

    .line 57
    if-ne v12, v9, :cond_0

    .line 58
    .line 59
    long-to-double v9, v10

    .line 60
    const-wide v16, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    mul-double v9, v9, v16

    .line 66
    .line 67
    move-object/from16 p6, v8

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-wide v9, v13, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 71
    .line 72
    move-object/from16 p6, v8

    .line 73
    .line 74
    long-to-double v7, v14

    .line 75
    mul-double/2addr v9, v7

    .line 76
    :goto_1
    const/4 v7, 0x3

    .line 77
    move-object/from16 v8, p6

    .line 78
    .line 79
    invoke-virtual {v8, v7, v14, v15}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    .line 84
    .line 85
    invoke-virtual {v8, v7, v9, v10, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v6, v6, -0x1

    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCameraEnergyConsumptionUC()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    invoke-static {v5, v6, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const/4 v7, 0x0

    .line 101
    move-object/from16 v8, p2

    .line 102
    .line 103
    invoke-virtual {v8, v2, v3, v7}, Landroid/os/BatteryStats;->getCameraOnTime(JI)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    const-wide/16 v8, 0x3e8

    .line 108
    .line 109
    div-long/2addr v2, v8

    .line 110
    const/4 v8, 0x2

    .line 111
    if-ne v4, v8, :cond_2

    .line 112
    .line 113
    long-to-double v5, v5

    .line 114
    const-wide v8, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :goto_2
    mul-double/2addr v5, v8

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    iget-object v0, v0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 122
    .line 123
    iget-wide v5, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 124
    .line 125
    long-to-double v8, v2

    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-virtual {v1, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/4 v7, 0x3

    .line 132
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 137
    .line 138
    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 151
    .line 152
    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x3

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
