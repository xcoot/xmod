.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# instance fields
.field public final mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeInit()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private static native nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method private static native nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method private static native nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;
.end method


# virtual methods
.method public final getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 3
    .line 4
    return-object p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 3
    .line 4
    return-object p0
.end method

.method public final getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    .line 2
    .line 3
    return p0
.end method

.method public final readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
