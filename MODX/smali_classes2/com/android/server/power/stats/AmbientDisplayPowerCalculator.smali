.class public final Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 18
    .line 19
    const-string v4, "ambient.on.display"

    .line 20
    .line 21
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 26
    .line 27
    .line 28
    aput-object v3, v2, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenDozeEnergyConsumptionUC()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    move-object/from16 v5, p7

    .line 10
    .line 11
    invoke-static {v3, v4, v5}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    .line 17
    .line 18
    .line 19
    move-result-wide v7

    .line 20
    const-wide/16 v9, 0x3e8

    .line 21
    .line 22
    div-long/2addr v7, v9

    .line 23
    const/4 v11, 0x2

    .line 24
    if-eq v5, v11, :cond_1

    .line 25
    .line 26
    move-object/from16 v11, p0

    .line 27
    .line 28
    iget-object v3, v11, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 29
    .line 30
    array-length v4, v3

    .line 31
    const-wide/16 v11, 0x0

    .line 32
    .line 33
    move v13, v6

    .line 34
    :goto_0
    if-ge v13, v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v14

    .line 40
    div-long/2addr v14, v9

    .line 41
    aget-object v9, v3, v13

    .line 42
    .line 43
    iget-wide v9, v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 44
    .line 45
    long-to-double v14, v14

    .line 46
    mul-double/2addr v9, v14

    .line 47
    add-double/2addr v11, v9

    .line 48
    add-int/lit8 v13, v13, 0x1

    .line 49
    .line 50
    const-wide/16 v9, 0x3e8

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    long-to-double v0, v3

    .line 57
    const-wide v2, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-double v11, v0, v2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_2
    invoke-virtual {v0, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/16 v1, 0xf

    .line 70
    .line 71
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v11, v12, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xf

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
