.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# static fields
.field public static sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;


# virtual methods
.method public final getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v0, "Failed to get energy consumer results: "

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v1, "Failed to get energy consumer info: "

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v1, "Failed to get energy meter info: "

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v1, "Failed to get power entity info: "

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v0, "Failed to get state residency: "

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

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

.method public final readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    .line 10
    .line 11
    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "PowerStatsHALWrapper"

    .line 20
    .line 21
    const-string v0, "Failed to get energy measurements: "

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method
