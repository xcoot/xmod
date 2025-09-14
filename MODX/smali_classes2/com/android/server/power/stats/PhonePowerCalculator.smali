.class public final Lcom/android/server/power/stats/PhonePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 5
    .line 6
    const-string/jumbo v1, "radio.active"

    .line 7
    .line 8
    .line 9
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getPhoneEnergyConsumptionUC()J

    .line 2
    .line 3
    .line 4
    move-result-wide p5

    .line 5
    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 6
    .line 7
    .line 8
    move-result p7

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p2

    .line 14
    const-wide/16 v1, 0x3e8

    .line 15
    .line 16
    div-long/2addr p2, v1

    .line 17
    const/4 p4, 0x2

    .line 18
    if-eq p7, p4, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 21
    .line 22
    iget-wide p4, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 23
    .line 24
    long-to-double v1, p2

    .line 25
    :goto_0
    mul-double/2addr p4, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    long-to-double p4, p5

    .line 28
    const-wide v1, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    cmpl-double p0, p4, v1

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 p1, 0xe

    .line 46
    .line 47
    invoke-virtual {p0, p1, p4, p5, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xe

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
