.class public final Landroid/hardware/health/V1_0/HealthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public batteryChargeCounter:I

.field public batteryCurrent:I

.field public batteryCycleCount:I

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/health/V1_0/HealthInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V1_0/HealthInfo;

    .line 20
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 22
    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 29
    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 36
    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 43
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 45
    if-eq v2, v3, :cond_6

    .line 47
    return v1

    .line 48
    :cond_6
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 50
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 52
    if-eq v2, v3, :cond_7

    .line 54
    return v1

    .line 55
    :cond_7
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 57
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 59
    if-eq v2, v3, :cond_8

    .line 61
    return v1

    .line 62
    :cond_8
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 64
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 66
    if-eq v2, v3, :cond_9

    .line 68
    return v1

    .line 69
    :cond_9
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 71
    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 73
    if-eq v2, v3, :cond_a

    .line 75
    return v1

    .line 76
    :cond_a
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 78
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 80
    if-eq v2, v3, :cond_b

    .line 82
    return v1

    .line 83
    :cond_b
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 85
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 87
    if-eq v2, v3, :cond_c

    .line 89
    return v1

    .line 90
    :cond_c
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 92
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 94
    if-eq v2, v3, :cond_d

    .line 96
    return v1

    .line 97
    :cond_d
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 99
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 101
    if-eq v2, v3, :cond_e

    .line 103
    return v1

    .line 104
    :cond_e
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 106
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 108
    if-eq v2, v3, :cond_f

    .line 110
    return v1

    .line 111
    :cond_f
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 113
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 115
    if-eq v2, v3, :cond_10

    .line 117
    return v1

    .line 118
    :cond_10
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 120
    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 122
    if-eq v2, v3, :cond_11

    .line 124
    return v1

    .line 125
    :cond_11
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 127
    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 129
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_12

    .line 135
    return v1

    .line 136
    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 5
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 11
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 15
    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 17
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 20
    move-result-object v4

    .line 21
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 23
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    move-result-object v5

    .line 27
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 29
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 32
    move-result-object v6

    .line 33
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 35
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 38
    move-result-object v7

    .line 39
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 41
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 44
    move-result-object v8

    .line 45
    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 47
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 50
    move-result-object v9

    .line 51
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 53
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 56
    move-result-object v10

    .line 57
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 59
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 62
    move-result-object v11

    .line 63
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 65
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 68
    move-result-object v12

    .line 69
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 71
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 74
    move-result-object v13

    .line 75
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 77
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 80
    move-result-object v14

    .line 81
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 83
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 86
    move-result-object v15

    .line 87
    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 89
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 92
    move-result-object v16

    .line 93
    iget-object v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 95
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v17

    .line 103
    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 110
    move-result v0

    .line 111
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.chargerAcOnline = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .chargerUsbOnline = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .chargerWirelessOnline = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .maxChargingCurrent = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", .maxChargingVoltage = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .batteryStatus = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 61
    const-string v2, "0x"

    .line 63
    const/4 v3, 0x5

    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x3

    .line 66
    const/4 v6, 0x2

    .line 67
    const-string v7, "UNKNOWN"

    .line 69
    const/4 v8, 0x1

    .line 70
    if-ne v1, v8, :cond_0

    .line 72
    move-object v1, v7

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    if-ne v1, v6, :cond_1

    .line 76
    const-string v1, "CHARGING"

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    if-ne v1, v5, :cond_2

    .line 81
    const-string v1, "DISCHARGING"

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-ne v1, v4, :cond_3

    .line 86
    const-string v1, "NOT_CHARGING"

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    if-ne v1, v3, :cond_4

    .line 91
    const-string v1, "FULL"

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {v9, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .batteryHealth = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 113
    if-ne v1, v8, :cond_5

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    if-ne v1, v6, :cond_6

    .line 118
    const-string v7, "GOOD"

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    if-ne v1, v5, :cond_7

    .line 123
    const-string v7, "OVERHEAT"

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    if-ne v1, v4, :cond_8

    .line 128
    const-string v7, "DEAD"

    .line 130
    goto :goto_1

    .line 131
    :cond_8
    if-ne v1, v3, :cond_9

    .line 133
    const-string v7, "OVER_VOLTAGE"

    .line 135
    goto :goto_1

    .line 136
    :cond_9
    const/4 v3, 0x6

    .line 137
    if-ne v1, v3, :cond_a

    .line 139
    const-string v7, "UNSPECIFIED_FAILURE"

    .line 141
    goto :goto_1

    .line 142
    :cond_a
    const/4 v3, 0x7

    .line 143
    if-ne v1, v3, :cond_b

    .line 145
    const-string v7, "COLD"

    .line 147
    goto :goto_1

    .line 148
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-static {v3, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", .batteryPresent = "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", .batteryLevel = "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", .batteryVoltage = "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", .batteryTemperature = "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", .batteryCurrent = "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", .batteryCycleCount = "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", .batteryFullCharge = "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", .batteryChargeCounter = "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", .batteryTechnology = "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 247
    const-string/jumbo v1, "}"

    .line 250
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object p0

    .line 254
    return-object p0
.end method
