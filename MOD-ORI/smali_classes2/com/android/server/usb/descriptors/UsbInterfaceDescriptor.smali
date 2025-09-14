.class public final Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlternateSetting:B

.field public mDescrIndex:B

.field public mEndpointDescriptors:Ljava/util/ArrayList;

.field public mInterfaceNumber:I

.field public mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

.field public mNumEndpoints:B

.field public mProtocol:I

.field public mUsbClass:I

.field public mUsbSubclass:I


# virtual methods
.method public final getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 44
    .line 45
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v0, v4, :cond_1

    .line 16
    .line 17
    sget-object v4, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioSubclassNames:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    and-int/lit16 v5, v1, 0xff

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "Unknown Audio Subclass [0x"

    .line 37
    .line 38
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, ":"

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, "]"

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v4, ""

    .line 67
    .line 68
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 69
    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, "Interface #"

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v6, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v6, "Class: "

    .line 93
    .line 94
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ": "

    .line 105
    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v5, "Subclass: "

    .line 122
    .line 123
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "Protocol: "

    .line 147
    .line 148
    invoke-static {v2, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, "Endpoints: "

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 174
    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;
    .locals 8

    .line 1
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    new-instance p1, Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 10
    .line 11
    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    .line 12
    .line 13
    iget v5, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 14
    .line 15
    iget v6, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 16
    .line 17
    iget v7, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-array v0, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroid/hardware/usb/UsbEndpoint;

    .line 52
    .line 53
    iget v4, v2, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 54
    .line 55
    iget v5, v2, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 56
    .line 57
    iget v6, v2, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 58
    .line 59
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 60
    .line 61
    invoke-direct {v3, v4, v5, v6, v2}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    .line 62
    .line 63
    .line 64
    aput-object v3, v0, v1

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method
