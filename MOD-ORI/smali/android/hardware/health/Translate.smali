.class public abstract Landroid/hardware/health/Translate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 4
    .line 5
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 8
    .line 9
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 12
    .line 13
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 16
    .line 17
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 18
    .line 19
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 20
    .line 21
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 22
    .line 23
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 24
    .line 25
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 26
    .line 27
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 28
    .line 29
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 32
    .line 33
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 34
    .line 35
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 36
    .line 37
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 38
    .line 39
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 40
    .line 41
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 42
    .line 43
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 44
    .line 45
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 46
    .line 47
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 48
    .line 49
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 50
    .line 51
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 52
    .line 53
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 54
    .line 55
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 56
    .line 57
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 58
    .line 59
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 60
    .line 61
    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method
