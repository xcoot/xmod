.class public final Lcom/android/server/power/stats/BatteryChargeCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryRatedCapacity:D

.field public final mBatteryTypicalCapacity:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 8

    .line 1
    const/4 p5, 0x0

    .line 2
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    .line 3
    .line 4
    .line 5
    move-result p6

    .line 6
    invoke-virtual {p1, p6}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    .line 10
    .line 11
    .line 12
    move-result p6

    .line 13
    div-int/lit16 p6, p6, 0x3e8

    .line 14
    .line 15
    if-gtz p6, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    .line 18
    .line 19
    .line 20
    move-result p6

    .line 21
    div-int/lit16 p6, p6, 0x3e8

    .line 22
    .line 23
    if-gtz p6, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    .line 26
    .line 27
    .line 28
    move-result p6

    .line 29
    :cond_0
    int-to-double v0, p6

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 31
    .line 32
    .line 33
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 36
    .line 37
    .line 38
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    mul-int/2addr p0, p6

    .line 48
    int-to-double v0, p0

    .line 49
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 50
    .line 51
    div-double/2addr v0, v2

    .line 52
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    mul-int/2addr p0, p6

    .line 57
    int-to-double p6, p0

    .line 58
    div-double/2addr p6, v2

    .line 59
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v0, v1, p6, p7}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    const-wide/16 v4, 0x3e8

    .line 76
    .line 77
    div-long/2addr v2, v4

    .line 78
    invoke-virtual {p0, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    const-wide/16 v6, -0x1

    .line 86
    .line 87
    cmp-long p0, v2, v6

    .line 88
    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    div-long/2addr v2, v4

    .line 92
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide p3

    .line 99
    cmp-long p0, p3, v6

    .line 100
    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    div-long/2addr p3, v4

    .line 104
    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide p2

    .line 111
    div-long/2addr p2, v4

    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .line 114
    cmp-long p0, p2, v2

    .line 115
    .line 116
    if-nez p0, :cond_3

    .line 117
    .line 118
    add-double/2addr v0, p6

    .line 119
    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    .line 120
    .line 121
    div-double/2addr v0, p2

    .line 122
    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    .line 123
    .line 124
    add-double/2addr v0, p2

    .line 125
    double-to-long p2, v0

    .line 126
    :cond_3
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    long-to-double p1, p2

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
