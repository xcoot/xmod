.class public final Lcom/android/server/usb/descriptors/Usb20ASGeneral;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;


# instance fields
.field public mChannelConfig:I

.field public mChannelNames:B

.field public mControls:B

.field public mFormatType:B

.field public mFormats:I

.field public mNumChannels:B

.field public mTerminalLink:B


# virtual methods
.method public final getChannelCount()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mNumChannels:B

    .line 2
    .line 3
    return p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mTerminalLink:B

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mControls:B

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mFormatType:B

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mFormats:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mNumChannels:B

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mChannelConfig:I

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mChannelNames:B

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 44
    .line 45
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

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
    const-string v1, "Terminal Link: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mTerminalLink:B

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Controls: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mControls:B

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "Format Type: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mFormatType:B

    .line 57
    .line 58
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Formats: "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mFormats:I

    .line 80
    .line 81
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Channel Count: "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mNumChannels:B

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, "Channel Config: "

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mChannelConfig:I

    .line 122
    .line 123
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v1, "Channel Names String ID: "

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb20ASGeneral;->mChannelNames:B

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 157
    .line 158
    .line 159
    return-void
.end method
