.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatI;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBitResolution:B

.field public mNumChannels:B

.field public mSampleFreqType:B

.field public mSampleRates:[I

.field public mSubframeSize:B


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    aput v2, v0, v1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v1, 0x1

    .line 46
    aput p1, v0, v1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    new-array v0, v0, [I

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 52
    .line 53
    :goto_0
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    .line 54
    .line 55
    if-ge v1, v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    aput v2, v0, v1

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 69
    .line 70
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " Channels."

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Subframe Size: "

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Bit Resolution: "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "Sample Freq Type: "

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-nez v0, :cond_0

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v1, "min: "

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    aget v1, p0, v2

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v1, "max: "

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    aget p0, p0, v1

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 139
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    aget v4, p0, v2

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 164
    .line 165
    .line 166
    return-void
.end method
