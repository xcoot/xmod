.class public final Landroid/hardware/usb/V1_1/PortStatus_1_1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public currentMode:I

.field public final status:Landroid/hardware/usb/V1_0/PortStatus;

.field public supportedModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/usb/V1_0/PortStatus;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 13
    .line 14
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
    const-class v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

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
    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

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
    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 51
    .line 52
    iget p1, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 53
    .line 54
    if-eq p0, p1, :cond_5

    .line 55
    .line 56
    return v1

    .line 57
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

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
    move-result-object v0

    .line 11
    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 12
    .line 13
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 18
    .line 19
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "{.status = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", .supportedModes = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 22
    .line 23
    const-string v3, "NONE"

    .line 24
    .line 25
    invoke-static {v3}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    and-int/lit8 v5, v2, 0x1

    .line 30
    .line 31
    const-string v6, "UFP"

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    if-ne v5, v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move v5, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v5, 0x0

    .line 42
    :goto_0
    and-int/lit8 v8, v2, 0x2

    .line 43
    .line 44
    const-string v9, "DFP"

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    if-ne v8, v10, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    or-int/lit8 v5, v5, 0x2

    .line 53
    .line 54
    :cond_1
    and-int/lit8 v8, v2, 0x3

    .line 55
    .line 56
    const-string v11, "DRP"

    .line 57
    .line 58
    const/4 v12, 0x3

    .line 59
    if-ne v8, v12, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move v5, v12

    .line 65
    :cond_2
    and-int/lit8 v8, v2, 0x4

    .line 66
    .line 67
    const-string v13, "NUM_MODES"

    .line 68
    .line 69
    const/4 v14, 0x4

    .line 70
    if-ne v8, v14, :cond_3

    .line 71
    .line 72
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    or-int/lit8 v5, v5, 0x4

    .line 76
    .line 77
    :cond_3
    const-string v15, "AUDIO_ACCESSORY"

    .line 78
    .line 79
    if-ne v8, v14, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    or-int/lit8 v5, v5, 0x4

    .line 85
    .line 86
    :cond_4
    and-int/lit8 v8, v2, 0x8

    .line 87
    .line 88
    const-string v14, "DEBUG_ACCESSORY"

    .line 89
    .line 90
    const/16 v12, 0x8

    .line 91
    .line 92
    if-ne v8, v12, :cond_5

    .line 93
    .line 94
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    or-int/lit8 v5, v5, 0x8

    .line 98
    .line 99
    :cond_5
    and-int/lit8 v8, v2, 0x10

    .line 100
    .line 101
    const-string v12, "NUM_MODES_1_1"

    .line 102
    .line 103
    const/16 v10, 0x10

    .line 104
    .line 105
    if-ne v8, v10, :cond_6

    .line 106
    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    or-int/lit8 v5, v5, 0x10

    .line 111
    .line 112
    :cond_6
    const-string v8, "0x"

    .line 113
    .line 114
    if-eq v2, v5, :cond_7

    .line 115
    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    not-int v5, v5

    .line 122
    and-int/2addr v2, v5

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_7
    const-string v2, " | "

    .line 138
    .line 139
    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, ", .currentMode = "

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v0, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 152
    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    if-ne v0, v7, :cond_9

    .line 157
    .line 158
    move-object v3, v6

    .line 159
    goto :goto_1

    .line 160
    :cond_9
    const/4 v2, 0x2

    .line 161
    if-ne v0, v2, :cond_a

    .line 162
    .line 163
    move-object v3, v9

    .line 164
    goto :goto_1

    .line 165
    :cond_a
    const/4 v2, 0x3

    .line 166
    if-ne v0, v2, :cond_b

    .line 167
    .line 168
    move-object v3, v11

    .line 169
    goto :goto_1

    .line 170
    :cond_b
    const/4 v2, 0x4

    .line 171
    if-ne v0, v2, :cond_c

    .line 172
    .line 173
    move-object v3, v13

    .line 174
    goto :goto_1

    .line 175
    :cond_c
    if-ne v0, v2, :cond_d

    .line 176
    .line 177
    move-object v3, v15

    .line 178
    goto :goto_1

    .line 179
    :cond_d
    const/16 v2, 0x8

    .line 180
    .line 181
    if-ne v0, v2, :cond_e

    .line 182
    .line 183
    move-object v3, v14

    .line 184
    goto :goto_1

    .line 185
    :cond_e
    const/16 v2, 0x10

    .line 186
    .line 187
    if-ne v0, v2, :cond_f

    .line 188
    .line 189
    move-object v3, v12

    .line 190
    goto :goto_1

    .line 191
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    :goto_1
    const-string/jumbo v0, "}"

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0
.end method
