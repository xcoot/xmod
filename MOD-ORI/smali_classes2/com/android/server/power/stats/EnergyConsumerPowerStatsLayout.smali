.class public Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;
.super Lcom/android/server/power/stats/PowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 9
    .line 10
    .line 11
    const-string v1, "energy"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    const-string/jumbo v2, "power"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 30
    .line 31
    return-void
.end method
