.class public final Landroid/hardware/usb/V1_0/PortStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public portName:Ljava/lang/String;

.field public supportedModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 13
    .line 14
    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 15
    .line 16
    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 17
    .line 18
    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 23
    .line 24
    iput v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 25
    .line 26
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
    const-class v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_0/PortStatus;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

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
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 32
    .line 33
    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 39
    .line 40
    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 46
    .line 47
    iget v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 55
    .line 56
    if-eq v2, v3, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget-boolean v2, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 67
    .line 68
    iget-boolean v3, p1, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 69
    .line 70
    if-eq v2, v3, :cond_9

    .line 71
    .line 72
    return v1

    .line 73
    :cond_9
    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 74
    .line 75
    iget p1, p1, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 76
    .line 77
    if-eq p0, p1, :cond_a

    .line 78
    .line 79
    return v1

    .line 80
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

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
    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 18
    .line 19
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 30
    .line 31
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 36
    .line 37
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-boolean v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 42
    .line 43
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 48
    .line 49
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v0, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    int-to-long v2, v0

    .line 15
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, p1

    .line 21
    move-wide v6, p3

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x10

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 33
    .line 34
    const-wide/16 v0, 0x14

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 42
    .line 43
    const-wide/16 v0, 0x18

    .line 44
    .line 45
    add-long/2addr v0, p3

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 51
    .line 52
    const-wide/16 v0, 0x1c

    .line 53
    .line 54
    add-long/2addr v0, p3

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 60
    .line 61
    const-wide/16 v0, 0x1d

    .line 62
    .line 63
    add-long/2addr v0, p3

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 69
    .line 70
    const-wide/16 v0, 0x1e

    .line 71
    .line 72
    add-long/2addr v0, p3

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput-boolean p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 78
    .line 79
    const-wide/16 v0, 0x20

    .line 80
    .line 81
    add-long/2addr p3, v0

    .line 82
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 87
    .line 88
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.portName = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .currentDataRole = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 20
    .line 21
    const-string v2, "0x"

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    const/4 v4, 0x2

    .line 25
    const/4 v5, 0x1

    .line 26
    const-string v6, "NONE"

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    move-object v1, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ne v1, v5, :cond_1

    .line 33
    .line 34
    const-string v1, "HOST"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-ne v1, v4, :cond_2

    .line 38
    .line 39
    const-string v1, "DEVICE"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-ne v1, v3, :cond_3

    .line 43
    .line 44
    const-string v1, "NUM_DATA_ROLES"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", .currentPowerRole = "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    if-ne v1, v5, :cond_5

    .line 70
    .line 71
    const-string v6, "SOURCE"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    if-ne v1, v4, :cond_6

    .line 75
    .line 76
    const-string v6, "SINK"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    if-ne v1, v3, :cond_7

    .line 80
    .line 81
    const-string v6, "NUM_POWER_ROLES"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", .currentMode = "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 102
    .line 103
    invoke-static {v1}, Landroid/hardware/usb/V1_0/PortMode;->toString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", .canChangeMode = "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", .canChangeDataRole = "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", .canChangePowerRole = "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-boolean v1, p0, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", .supportedModes = "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget p0, p0, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 146
    .line 147
    invoke-static {p0}, Landroid/hardware/usb/V1_0/PortMode;->toString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string/jumbo p0, "}"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method
