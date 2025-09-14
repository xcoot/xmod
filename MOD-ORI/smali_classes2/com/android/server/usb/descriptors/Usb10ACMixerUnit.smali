.class public final Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;


# instance fields
.field public mChannelConfig:I

.field public mControls:[B


# virtual methods
.method public final getChannelCount()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 2
    .line 3
    return p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 11
    .line 12
    .line 13
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 14
    .line 15
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 16
    .line 17
    mul-int/2addr v0, v1

    .line 18
    add-int/lit8 v0, v0, 0x7

    .line 19
    .line 20
    div-int/lit8 v0, v0, 0x8

    .line 21
    .line 22
    new-array v1, v0, [B

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    aput-byte v3, v2, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 41
    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 44
    .line 45
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Mixer Unit"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Unit ID: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-byte v2, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v4, "Num Inputs: "

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " ["

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move v3, v1

    .line 66
    :goto_0
    const-string v5, " "

    .line 67
    .line 68
    const-string v6, ""

    .line 69
    .line 70
    if-ge v3, v0, :cond_1

    .line 71
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    aget-byte v6, v2, v3

    .line 78
    .line 79
    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v6, v0, -0x1

    .line 94
    .line 95
    if-ge v3, v6, :cond_0

    .line 96
    .line 97
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "]"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 109
    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v3, "Num Outputs: "

    .line 114
    .line 115
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v3, "Channel Config: "

    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v3, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    .line 138
    .line 139
    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v3, "Controls: "

    .line 161
    .line 162
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    array-length v3, p0

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    array-length v2, p0

    .line 180
    if-ge v1, v2, :cond_3

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    aget-byte v3, p0, v1

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    array-length v2, p0

    .line 200
    add-int/lit8 v2, v2, -0x1

    .line 201
    .line 202
    if-ge v1, v2, :cond_2

    .line 203
    .line 204
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 217
    .line 218
    .line 219
    return-void
.end method
