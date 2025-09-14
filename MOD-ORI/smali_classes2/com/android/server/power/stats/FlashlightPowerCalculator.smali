.class public final Lcom/android/server/power/stats/FlashlightPowerCalculator;
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
    const-string v1, "camera.flashlight"

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
    iput-object v0, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p6

    .line 9
    const/4 p7, 0x1

    .line 10
    sub-int/2addr p6, p7

    .line 11
    :goto_0
    if-ltz p6, :cond_0

    .line 12
    .line 13
    invoke-virtual {p5, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-wide v1, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 37
    .line 38
    long-to-double v5, v3

    .line 39
    mul-double/2addr v1, v5

    .line 40
    const/4 v5, 0x6

    .line 41
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 46
    .line 47
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 p6, p6, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p5, 0x0

    .line 54
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    const-wide/16 v0, 0x3e8

    .line 59
    .line 60
    div-long/2addr p2, v0

    .line 61
    iget-object p0, p0, Lcom/android/server/power/stats/FlashlightPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 62
    .line 63
    iget-wide v0, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 64
    .line 65
    long-to-double v2, p2

    .line 66
    mul-double/2addr v0, v2

    .line 67
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p4, 0x6

    .line 72
    invoke-virtual {p0, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 77
    .line 78
    invoke-virtual {p0, p4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 90
    .line 91
    invoke-virtual {p0, p4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x6

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
