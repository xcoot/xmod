.class public abstract Lcom/android/server/health/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/hardware/health/HealthInfo;

    .line 7
    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 10
    iput-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 12
    :cond_0
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 14
    iget-object v1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 16
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 18
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 20
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 22
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 24
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 26
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 28
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 30
    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 32
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 34
    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 36
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 38
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 40
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 42
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 44
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 46
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 48
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 50
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 52
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 54
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 56
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 58
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 60
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 62
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 64
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 66
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 68
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 70
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 72
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 74
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 76
    iget-object v2, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 78
    iput-object v2, v0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 80
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 82
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 84
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 86
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 88
    iget-wide v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 90
    iput-wide v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 92
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 94
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 96
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 98
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 100
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 102
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 104
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 106
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 108
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 110
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 112
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 114
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 116
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 118
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 120
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 122
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 124
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 126
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 128
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 130
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 132
    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 134
    iput p1, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 136
    return-void
.end method
