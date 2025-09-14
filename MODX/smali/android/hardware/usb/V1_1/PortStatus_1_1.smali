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

    .line 4
    new-instance v0, Landroid/hardware/usb/V1_0/PortStatus;

    .line 6
    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

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
    const-class v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 20
    iget-object v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 22
    iget-object v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 37
    iget v3, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_4

    .line 49
    return v1

    .line 50
    :cond_4
    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 52
    iget p1, p1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 54
    if-eq p0, p1, :cond_5

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

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 13
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    iget p0, p0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 19
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "{.status = "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ", .supportedModes = "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 23
    const-string v3, "NONE"

    .line 25
    invoke-static {v3}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    move-result-object v4

    .line 29
    and-int/lit8 v5, v2, 0x1

    .line 31
    const-string v6, "UFP"

    .line 33
    const/4 v7, 0x1

    .line 34
    if-ne v5, v7, :cond_0

    .line 36
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 44
    const-string v9, "DFP"

    .line 46
    const/4 v10, 0x2

    .line 47
    if-ne v8, v10, :cond_1

    .line 49
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    or-int/lit8 v5, v5, 0x2

    .line 54
    :cond_1
    and-int/lit8 v8, v2, 0x3

    .line 56
    const-string v11, "DRP"

    .line 58
    const/4 v12, 0x3

    .line 59
    if-ne v8, v12, :cond_2

    .line 61
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move v5, v12

    .line 65
    :cond_2
    and-int/lit8 v8, v2, 0x4

    .line 67
    const-string v13, "NUM_MODES"

    .line 69
    const/4 v14, 0x4

    .line 70
    if-ne v8, v14, :cond_3

    .line 72
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v5, v5, 0x4

    .line 77
    :cond_3
    const-string v15, "AUDIO_ACCESSORY"

    .line 79
    if-ne v8, v14, :cond_4

    .line 81
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/lit8 v5, v5, 0x4

    .line 86
    :cond_4
    and-int/lit8 v8, v2, 0x8

    .line 88
    const-string v14, "DEBUG_ACCESSORY"

    .line 90
    const/16 v12, 0x8

    .line 92
    if-ne v8, v12, :cond_5

    .line 94
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v5, v5, 0x8

    .line 99
    :cond_5
    and-int/lit8 v8, v2, 0x10

    .line 101
    const-string v12, "NUM_MODES_1_1"

    .line 103
    const/16 v10, 0x10

    .line 105
    if-ne v8, v10, :cond_6

    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v5, v5, 0x10

    .line 112
    :cond_6
    const-string v8, "0x"

    .line 114
    if-eq v2, v5, :cond_7

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    not-int v5, v5

    .line 122
    and-int/2addr v2, v5

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_7
    const-string v2, " | "

    .line 139
    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v2, ", .currentMode = "

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v0, v0, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 153
    if-nez v0, :cond_8

    .line 155
    goto :goto_1

    .line 156
    :cond_8
    if-ne v0, v7, :cond_9

    .line 158
    move-object v3, v6

    .line 159
    goto :goto_1

    .line 160
    :cond_9
    const/4 v2, 0x2

    .line 161
    if-ne v0, v2, :cond_a

    .line 163
    move-object v3, v9

    .line 164
    goto :goto_1

    .line 165
    :cond_a
    const/4 v2, 0x3

    .line 166
    if-ne v0, v2, :cond_b

    .line 168
    move-object v3, v11

    .line 169
    goto :goto_1

    .line 170
    :cond_b
    const/4 v2, 0x4

    .line 171
    if-ne v0, v2, :cond_c

    .line 173
    move-object v3, v13

    .line 174
    goto :goto_1

    .line 175
    :cond_c
    if-ne v0, v2, :cond_d

    .line 177
    move-object v3, v15

    .line 178
    goto :goto_1

    .line 179
    :cond_d
    const/16 v2, 0x8

    .line 181
    if-ne v0, v2, :cond_e

    .line 183
    move-object v3, v14

    .line 184
    goto :goto_1

    .line 185
    :cond_e
    const/16 v2, 0x10

    .line 187
    if-ne v0, v2, :cond_f

    .line 189
    move-object v3, v12

    .line 190
    goto :goto_1

    .line 191
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v2, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 200
    :goto_1
    const-string/jumbo v0, "}"

    .line 203
    invoke-static {v1, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    return-object v0
.end method
