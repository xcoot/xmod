.class public Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;
.super Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "usage"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 13
    .line 14
    const-string/jumbo v0, "time"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 23
    .line 24
    return-void
.end method
