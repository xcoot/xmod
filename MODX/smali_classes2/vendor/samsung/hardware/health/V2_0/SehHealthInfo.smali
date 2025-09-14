.class public final Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public batteryChargeType:I

.field public batteryCurrentEvent:I

.field public batteryCurrentNow:I

.field public batteryEvent:I

.field public batteryHighVoltageCharger:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public chargerOtgOnline:Z

.field public chargerPogoOnline:Z

.field public legacy:Landroid/hardware/health/V2_1/HealthInfo;

.field public wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 13
    .line 14
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 15
    .line 16
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 21
    .line 22
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 23
    .line 24
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 25
    .line 26
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 29
    .line 30
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 19
    .line 20
    iget-object v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 21
    .line 22
    iget-object v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 32
    .line 33
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 39
    .line 40
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 46
    .line 47
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 55
    .line 56
    if-eq v2, v3, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 67
    .line 68
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 69
    .line 70
    if-eq v2, v3, :cond_9

    .line 71
    .line 72
    return v1

    .line 73
    :cond_9
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 74
    .line 75
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 76
    .line 77
    if-eq v2, v3, :cond_a

    .line 78
    .line 79
    return v1

    .line 80
    :cond_a
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 81
    .line 82
    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 83
    .line 84
    if-eq v2, v3, :cond_b

    .line 85
    .line 86
    return v1

    .line 87
    :cond_b
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 88
    .line 89
    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 90
    .line 91
    if-eq v2, v3, :cond_c

    .line 92
    .line 93
    return v1

    .line 94
    :cond_c
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 95
    .line 96
    iget p1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 97
    .line 98
    if-eq p0, p1, :cond_d

    .line 99
    .line 100
    return v1

    .line 101
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 18
    .line 19
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 30
    .line 31
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 36
    .line 37
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 42
    .line 43
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 54
    .line 55
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 60
    .line 61
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 66
    .line 67
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.legacy = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .batteryCurrentNow = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .batteryOnline = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .batteryChargeType = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .batteryPowerSharingOnline = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", .chargerPogoOnline = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", .batteryHighVoltageCharger = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", .batteryEvent = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", .batteryCurrentEvent = "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", .chargerOtgOnline = "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", .wirelessPowerSharingTxEvent = "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 110
    .line 111
    const-string/jumbo v1, "}"

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
