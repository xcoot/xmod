.class public abstract Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mEnergyConsumerSupported:Z

.field public mInitiatingUid:I

.field public mLastState:I

.field public mLastStateTimestamp:J

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerComponentId:I

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field public final mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(ILcom/android/server/power/stats/PowerStatsUidResolver;D)V
    .locals 6

    .line 8
    new-instance v5, Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    invoke-direct {v5}, Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;DLcom/android/server/power/stats/BinaryStatePowerStatsLayout;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/stats/PowerStatsUidResolver;DLcom/android/server/power/stats/BinaryStatePowerStatsLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 4
    iput p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    .line 5
    new-instance p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {p1, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 7
    iput-object p5, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    return-void
.end method


# virtual methods
.method public final addPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, p2}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, -0x1

    .line 26
    .line 27
    cmp-long p2, v3, v5

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 36
    .line 37
    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public computeDevicePowerEstimates(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

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
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-object v1, p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 24
    .line 25
    iget-object v3, v1, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 26
    .line 27
    invoke-virtual {p1, v3, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    .line 37
    .line 38
    iget v4, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 39
    .line 40
    aget-wide v4, v2, v4

    .line 41
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    cmp-long v6, v4, v6

    .line 45
    .line 46
    if-lez v6, :cond_2

    .line 47
    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    iget v4, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 51
    .line 52
    aget-wide v4, v2, v4

    .line 53
    .line 54
    long-to-double v4, v4

    .line 55
    const-wide v6, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    mul-double/2addr v4, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 63
    .line 64
    iget-wide v6, v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 65
    .line 66
    long-to-double v4, v4

    .line 67
    mul-double/2addr v4, v6

    .line 68
    :goto_1
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 74
    .line 75
    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method

.method public final ensureInitialized()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v7, Landroid/os/PersistableBundle;

    .line 7
    .line 8
    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 14
    .line 15
    .line 16
    new-instance v8, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 17
    .line 18
    iget v3, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 19
    .line 20
    iget v6, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    iget v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    .line 25
    .line 26
    move-object v1, v8

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 28
    .line 29
    .line 30
    iput-object v8, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 31
    .line 32
    new-instance v0, Lcom/android/internal/os/PowerStats;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 42
    .line 43
    iget v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 44
    .line 45
    new-array v3, v2, [J

    .line 46
    .line 47
    iput-object v3, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 48
    .line 49
    new-array v0, v2, [J

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 52
    .line 53
    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 54
    .line 55
    new-array v0, v0, [J

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 58
    .line 59
    return-void
.end method

.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 11
    .line 12
    iget v4, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 13
    .line 14
    move-wide/from16 v5, p2

    .line 15
    .line 16
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide/from16 v5, p2

    .line 21
    .line 22
    :goto_0
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 30
    .line 31
    iget-object v4, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 32
    .line 33
    invoke-direct {v2, v4}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 37
    .line 38
    :cond_1
    iget-object v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 39
    .line 40
    iget-boolean v4, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 48
    .line 49
    check-cast v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    sub-int/2addr v2, v3

    .line 56
    :goto_1
    iget-object v4, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    .line 57
    .line 58
    if-ltz v2, :cond_4

    .line 59
    .line 60
    iget-object v5, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 63
    .line 64
    check-cast v5, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 71
    .line 72
    new-instance v6, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v6, v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v7, v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 80
    .line 81
    check-cast v7, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    sub-int/2addr v7, v3

    .line 88
    :goto_2
    if-ltz v7, :cond_3

    .line 89
    .line 90
    iget-object v8, v5, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 91
    .line 92
    check-cast v8, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 99
    .line 100
    iget-object v9, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 101
    .line 102
    iget-object v8, v8, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 103
    .line 104
    invoke-virtual {v1, v8, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    iget-wide v8, v6, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    .line 112
    .line 113
    iget-object v10, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 114
    .line 115
    iget v11, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 116
    .line 117
    aget-wide v10, v10, v11

    .line 118
    .line 119
    long-to-double v10, v10

    .line 120
    const-wide v12, 0x412e848000000000L    # 1000000.0

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    div-double/2addr v10, v12

    .line 126
    add-double/2addr v10, v8

    .line 127
    iput-wide v10, v6, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    .line 128
    .line 129
    :goto_3
    add-int/lit8 v7, v7, -0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 141
    .line 142
    .line 143
    iget-object v5, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 144
    .line 145
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 146
    .line 147
    check-cast v5, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    sub-int/2addr v5, v3

    .line 154
    :goto_4
    if-ltz v5, :cond_8

    .line 155
    .line 156
    iget-object v6, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 157
    .line 158
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 159
    .line 160
    check-cast v6, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 167
    .line 168
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 169
    .line 170
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    sub-int/2addr v8, v3

    .line 179
    :goto_5
    if-ltz v8, :cond_7

    .line 180
    .line 181
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    iget-object v10, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 192
    .line 193
    check-cast v10, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    :cond_5
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    if-eqz v11, :cond_6

    .line 204
    .line 205
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    check-cast v11, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 210
    .line 211
    iget-object v12, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 212
    .line 213
    iget-object v11, v11, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 214
    .line 215
    invoke-virtual {v1, v9, v11, v12}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-eqz v11, :cond_5

    .line 220
    .line 221
    iget-wide v11, v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    .line 222
    .line 223
    iget-object v13, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 224
    .line 225
    iget v14, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 226
    .line 227
    aget-wide v13, v13, v14

    .line 228
    .line 229
    add-long/2addr v11, v13

    .line 230
    iput-wide v11, v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_8
    iget-object v5, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 240
    .line 241
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 242
    .line 243
    check-cast v5, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    sub-int/2addr v5, v3

    .line 250
    :goto_7
    if-ltz v5, :cond_d

    .line 251
    .line 252
    iget-object v6, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 253
    .line 254
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 255
    .line 256
    check-cast v6, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 263
    .line 264
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 265
    .line 266
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;

    .line 269
    .line 270
    iget-wide v8, v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    .line 271
    .line 272
    const-wide/16 v10, 0x0

    .line 273
    .line 274
    cmp-long v8, v8, v10

    .line 275
    .line 276
    if-nez v8, :cond_a

    .line 277
    .line 278
    :cond_9
    move-object v3, v4

    .line 279
    goto :goto_b

    .line 280
    :cond_a
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 281
    .line 282
    check-cast v6, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    sub-int/2addr v8, v3

    .line 289
    :goto_8
    if-ltz v8, :cond_9

    .line 290
    .line 291
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    check-cast v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    sub-int/2addr v10, v3

    .line 302
    :goto_9
    if-ltz v10, :cond_c

    .line 303
    .line 304
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    check-cast v11, Ljava/lang/Integer;

    .line 309
    .line 310
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    iget-object v12, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 315
    .line 316
    iget-object v13, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 317
    .line 318
    invoke-virtual {v1, v11, v13, v12}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    if-eqz v12, :cond_b

    .line 323
    .line 324
    iget-wide v12, v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    .line 325
    .line 326
    iget-object v14, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 327
    .line 328
    iget v15, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 329
    .line 330
    move-object/from16 p2, v4

    .line 331
    .line 332
    aget-wide v3, v14, v15

    .line 333
    .line 334
    long-to-double v3, v3

    .line 335
    mul-double/2addr v12, v3

    .line 336
    iget-wide v3, v7, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    .line 337
    .line 338
    long-to-double v3, v3

    .line 339
    div-double/2addr v12, v3

    .line 340
    move-object/from16 v3, p2

    .line 341
    .line 342
    invoke-virtual {v3, v14, v12, v13}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 343
    .line 344
    .line 345
    iget-object v4, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 346
    .line 347
    iget-object v12, v0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 348
    .line 349
    invoke-virtual {v1, v11, v4, v12}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_b
    move-object v3, v4

    .line 354
    :goto_a
    add-int/lit8 v10, v10, -0x1

    .line 355
    .line 356
    move-object v4, v3

    .line 357
    const/4 v3, 0x1

    .line 358
    goto :goto_9

    .line 359
    :cond_c
    move-object v3, v4

    .line 360
    add-int/lit8 v8, v8, -0x1

    .line 361
    .line 362
    const/4 v3, 0x1

    .line 363
    goto :goto_8

    .line 364
    :goto_b
    add-int/lit8 v5, v5, -0x1

    .line 365
    .line 366
    move-object v4, v3

    .line 367
    const/4 v3, 0x1

    .line 368
    goto :goto_7

    .line 369
    :cond_d
    return-void
.end method

.method public final flushPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 4
    .line 5
    sub-long v1, p2, v1

    .line 6
    .line 7
    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 8
    .line 9
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    iput-wide p2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 29
    .line 30
    return-void
.end method

.method public abstract getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
.end method

.method public final noteStateChange(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 14
    .line 15
    const v1, 0x8015

    .line 16
    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 21
    .line 22
    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 36
    .line 37
    iget-wide v3, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 40
    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 50
    .line 51
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 55
    .line 56
    iput-wide p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 59
    .line 60
    return-void
.end method

.method public recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 2
    .line 3
    sub-long v0, p3, v0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;

    .line 10
    .line 11
    iget v4, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 12
    .line 13
    aget-wide v5, v2, v4

    .line 14
    .line 15
    add-long/2addr v5, v0

    .line 16
    aput-wide v5, v2, v4

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq p2, v2, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [J

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 32
    .line 33
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 34
    .line 35
    new-array p1, p1, [J

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget p2, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 45
    .line 46
    aput-wide v0, p1, p2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 52
    .line 53
    iget p2, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 54
    .line 55
    aget-wide v2, p1, p2

    .line 56
    .line 57
    add-long/2addr v2, v0

    .line 58
    aput-wide v2, p1, p2

    .line 59
    .line 60
    :cond_1
    :goto_0
    iput-wide p3, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 61
    .line 62
    return-void
.end method

.method public final start(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
