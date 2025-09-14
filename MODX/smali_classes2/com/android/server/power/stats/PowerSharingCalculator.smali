.class public final Lcom/android/server/power/stats/PowerSharingCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p3, p4, p0}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    .line 3
    .line 4
    .line 5
    move-result-wide p3

    .line 6
    const-wide/16 p5, 0x3e8

    .line 7
    .line 8
    div-long/2addr p3, p5

    .line 9
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount()J

    .line 10
    .line 11
    .line 12
    move-result-wide p5

    .line 13
    long-to-double p5, p5

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmpl-double p2, p5, v0

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/16 p1, 0x12

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p0, p1, p5, p6, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x12

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
