.class public final Landroid/hardware/usb/V1_2/PortStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

.field public supportedContaminantProtectionModes:I

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z


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
    const-class v3, Landroid/hardware/usb/V1_2/PortStatus;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_2/PortStatus;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

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
    iget v2, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, p1, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    return v1

    .line 50
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 51
    .line 52
    iget-boolean v3, p1, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 53
    .line 54
    if-eq v2, v3, :cond_5

    .line 55
    .line 56
    return v1

    .line 57
    :cond_5
    iget v2, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 58
    .line 59
    iget v3, p1, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 60
    .line 61
    if-eq v2, v3, :cond_6

    .line 62
    .line 63
    return v1

    .line 64
    :cond_6
    iget-boolean v2, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 67
    .line 68
    if-eq v2, v3, :cond_7

    .line 69
    .line 70
    return v1

    .line 71
    :cond_7
    iget p0, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 72
    .line 73
    iget p1, p1, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 74
    .line 75
    if-eq p0, p1, :cond_8

    .line 76
    .line 77
    return v1

    .line 78
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

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
    iget v0, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v0, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 18
    .line 19
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v0, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v0, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 30
    .line 31
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget p0, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 36
    .line 37
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.status_1_1 = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .supportedContaminantProtectionModes = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 20
    .line 21
    const-string v2, "NONE"

    .line 22
    .line 23
    invoke-static {v2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    and-int/lit8 v4, v1, 0x1

    .line 28
    .line 29
    const-string v5, "FORCE_SINK"

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ne v4, v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    :goto_0
    and-int/lit8 v7, v1, 0x2

    .line 41
    .line 42
    const-string v8, "FORCE_SOURCE"

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    if-ne v7, v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    or-int/lit8 v4, v4, 0x2

    .line 51
    .line 52
    :cond_1
    and-int/lit8 v7, v1, 0x4

    .line 53
    .line 54
    const-string v10, "FORCE_DISABLE"

    .line 55
    .line 56
    const/4 v11, 0x4

    .line 57
    if-ne v7, v11, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    or-int/lit8 v4, v4, 0x4

    .line 63
    .line 64
    :cond_2
    const-string v7, "0x"

    .line 65
    .line 66
    if-eq v1, v4, :cond_3

    .line 67
    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    not-int v4, v4

    .line 74
    and-int/2addr v1, v4

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    const-string v1, " | "

    .line 90
    .line 91
    invoke-static {v1, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", .supportsEnableContaminantPresenceProtection = "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-boolean v1, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", .contaminantProtectionStatus = "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 114
    .line 115
    const-string v3, "DISABLED"

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    if-ne v1, v6, :cond_5

    .line 121
    .line 122
    move-object v2, v5

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    if-ne v1, v9, :cond_6

    .line 125
    .line 126
    move-object v2, v8

    .line 127
    goto :goto_1

    .line 128
    :cond_6
    if-ne v1, v11, :cond_7

    .line 129
    .line 130
    move-object v2, v10

    .line 131
    goto :goto_1

    .line 132
    :cond_7
    const/16 v2, 0x8

    .line 133
    .line 134
    if-ne v1, v2, :cond_8

    .line 135
    .line 136
    move-object v2, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", .supportsEnableContaminantPresenceDetection = "

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-boolean v1, p0, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", .contaminantDetectionStatus = "

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget p0, p0, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 166
    .line 167
    if-nez p0, :cond_9

    .line 168
    .line 169
    const-string v3, "NOT_SUPPORTED"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    if-ne p0, v6, :cond_a

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    if-ne p0, v9, :cond_b

    .line 176
    .line 177
    const-string v3, "NOT_DETECTED"

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_b
    const/4 v1, 0x3

    .line 181
    if-ne p0, v1, :cond_c

    .line 182
    .line 183
    const-string v3, "DETECTED"

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v1, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :goto_2
    const-string/jumbo p0, "}"

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v3, p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method
