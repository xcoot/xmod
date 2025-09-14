.class public final Lcom/android/server/power/stats/GnssPowerStatsProcessor;
.super Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/GnssPowerStatsLayout;


# instance fields
.field public final mGnssSignalDurations:[J

.field public mGnssSignalLevel:I

.field public mGnssSignalLevelTimestamp:J

.field public final mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mTmpDeviceStatsArray:[J

.field public final mUseSignalLevelEstimators:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/GnssPowerStatsLayout;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/power/stats/GnssPowerStatsLayout;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/GnssPowerStatsLayout;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Lcom/android/server/power/stats/PowerStatsUidResolver;)V
    .locals 7

    .line 1
    const-string v0, "gps.on"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    sget-object v6, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/GnssPowerStatsLayout;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;DLcom/android/server/power/stats/BinaryStatePowerStatsLayout;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, -0x1

    .line 17
    iput p2, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 18
    .line 19
    const/4 p2, 0x2

    .line 20
    new-array v0, p2, [J

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    .line 23
    .line 24
    new-array v0, p2, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_0
    if-ge v0, p2, :cond_1

    .line 31
    .line 32
    const-string v2, "gps.signalqualitybased"

    .line 33
    .line 34
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    cmpl-double v4, v2, v4

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 46
    .line 47
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 48
    .line 49
    invoke-direct {v5, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 50
    .line 51
    .line 52
    aput-object v5, v4, v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    iget-object p3, p1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 13
    .line 14
    iget p3, p3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 15
    .line 16
    new-array p3, p3, [J

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 19
    .line 20
    :cond_1
    iget-object p3, p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 21
    .line 22
    check-cast p3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    add-int/lit8 p3, p3, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz p3, :cond_4

    .line 31
    .line 32
    iget-object v0, p2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 33
    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 45
    .line 46
    invoke-virtual {p1, v2, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_1
    const/4 v4, 0x2

    .line 57
    sget-object v5, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/GnssPowerStatsLayout;

    .line 58
    .line 59
    if-ge v3, v4, :cond_3

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 62
    .line 63
    iget v5, v5, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 64
    .line 65
    add-int/2addr v5, v3

    .line 66
    aget-wide v4, v4, v5

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 69
    .line 70
    aget-object v6, v6, v3

    .line 71
    .line 72
    iget-wide v6, v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 73
    .line 74
    long-to-double v4, v4

    .line 75
    mul-double/2addr v6, v4

    .line 76
    add-double/2addr v1, v6

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 81
    .line 82
    invoke-virtual {v5, v3, v1, v2}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 90
    .line 91
    .line 92
    :goto_2
    add-int/lit8 p3, p3, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    return-void

    .line 96
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2
    .line 3
    const/high16 v1, 0x20000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0x180

    .line 16
    .line 17
    shr-int/lit8 v0, v0, 0x7

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-lt v0, v2, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_1
    iget v2, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-eq v2, v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    .line 31
    .line 32
    aget-wide v3, v1, v2

    .line 33
    .line 34
    iget-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 35
    .line 36
    iget-wide v7, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 37
    .line 38
    sub-long/2addr v5, v7

    .line 39
    add-long/2addr v5, v3

    .line 40
    aput-wide v5, v1, v2

    .line 41
    .line 42
    :cond_3
    iput v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 43
    .line 44
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 47
    .line 48
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public final recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    aget-wide v3, v1, v0

    .line 12
    .line 13
    iget-wide v5, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 14
    .line 15
    sub-long v5, p3, v5

    .line 16
    .line 17
    add-long/2addr v5, v3

    .line 18
    aput-wide v5, v1, v0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aget-wide v3, v1, v0

    .line 27
    .line 28
    iget-wide v5, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 29
    .line 30
    sub-long v5, p3, v5

    .line 31
    .line 32
    add-long/2addr v5, v3

    .line 33
    aput-wide v5, v1, v0

    .line 34
    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 36
    :goto_1
    const/4 v3, 0x2

    .line 37
    if-ge v0, v3, :cond_4

    .line 38
    .line 39
    aget-wide v3, v1, v0

    .line 40
    .line 41
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 42
    .line 43
    sget-object v6, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/GnssPowerStatsLayout;

    .line 44
    .line 45
    iget v7, v6, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 46
    .line 47
    add-int/2addr v7, v0

    .line 48
    aput-wide v3, v5, v7

    .line 49
    .line 50
    if-eq p2, v2, :cond_3

    .line 51
    .line 52
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, [J

    .line 59
    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 63
    .line 64
    iget v5, v5, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 65
    .line 66
    new-array v5, v5, [J

    .line 67
    .line 68
    iget-object v7, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget v6, v6, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    .line 74
    .line 75
    add-int/2addr v6, v0

    .line 76
    aput-wide v3, v5, v6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget v6, v6, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    .line 80
    .line 81
    add-int v7, v6, v0

    .line 82
    .line 83
    aget-wide v7, v5, v7

    .line 84
    .line 85
    add-long/2addr v7, v3

    .line 86
    add-int/2addr v6, v0

    .line 87
    aput-wide v7, v5, v6

    .line 88
    .line 89
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iput-wide p3, p0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 93
    .line 94
    const-wide/16 p0, 0x0

    .line 95
    .line 96
    invoke-static {v1, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
