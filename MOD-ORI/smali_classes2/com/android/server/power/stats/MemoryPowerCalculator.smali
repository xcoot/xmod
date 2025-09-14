.class public final Lcom/android/server/power/stats/MemoryPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "memory.bandwidths"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v2, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 19
    .line 20
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 27
    .line 28
    .line 29
    aput-object v4, v3, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 15

    .line 1
    move-wide/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    move v6, v3

    .line 11
    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    move-object v8, p0

    .line 16
    iget-object v9, v8, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 17
    .line 18
    if-ge v6, v7, :cond_0

    .line 19
    .line 20
    array-length v7, v9

    .line 21
    if-ge v6, v7, :cond_0

    .line 22
    .line 23
    aget-object v7, v9, v6

    .line 24
    .line 25
    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v9, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    add-long/2addr v4, v9

    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    move v8, v3

    .line 49
    :goto_1
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-ge v8, v10, :cond_1

    .line 54
    .line 55
    array-length v10, v9

    .line 56
    if-ge v8, v10, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v10

    .line 62
    long-to-int v10, v10

    .line 63
    aget-object v10, v9, v10

    .line 64
    .line 65
    invoke-virtual {v2, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Landroid/os/BatteryStats$Timer;

    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v11, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    iget-wide v13, v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 79
    .line 80
    long-to-double v10, v11

    .line 81
    mul-double/2addr v13, v10

    .line 82
    add-double/2addr v6, v13

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-object/from16 v0, p1

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/16 v1, 0xd

    .line 93
    .line 94
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 99
    .line 100
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xd

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
