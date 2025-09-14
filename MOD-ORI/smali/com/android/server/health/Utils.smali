.class public abstract Lcom/android/server/health/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/hardware/health/HealthInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 13
    .line 14
    iget-object v1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 15
    .line 16
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 17
    .line 18
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 19
    .line 20
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 21
    .line 22
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 23
    .line 24
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 27
    .line 28
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 29
    .line 30
    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 31
    .line 32
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 33
    .line 34
    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 35
    .line 36
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 37
    .line 38
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 39
    .line 40
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 41
    .line 42
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 43
    .line 44
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 45
    .line 46
    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 47
    .line 48
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 49
    .line 50
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 51
    .line 52
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 53
    .line 54
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 55
    .line 56
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 57
    .line 58
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 59
    .line 60
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 61
    .line 62
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 63
    .line 64
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 65
    .line 66
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 67
    .line 68
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 69
    .line 70
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 71
    .line 72
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 73
    .line 74
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 75
    .line 76
    iget-object v2, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v2, v0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 79
    .line 80
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 81
    .line 82
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 83
    .line 84
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 85
    .line 86
    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 87
    .line 88
    iget-wide v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 89
    .line 90
    iput-wide v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 91
    .line 92
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 93
    .line 94
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 95
    .line 96
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 97
    .line 98
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 99
    .line 100
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 101
    .line 102
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 103
    .line 104
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 105
    .line 106
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 107
    .line 108
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 109
    .line 110
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 111
    .line 112
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 113
    .line 114
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 115
    .line 116
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 117
    .line 118
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 119
    .line 120
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 121
    .line 122
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 123
    .line 124
    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 125
    .line 126
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 127
    .line 128
    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 129
    .line 130
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 131
    .line 132
    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 133
    .line 134
    iput p1, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 135
    .line 136
    return-void
.end method
