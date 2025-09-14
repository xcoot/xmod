.class public final Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConfigDescriptors:Ljava/util/ArrayList;

.field public mDevClass:I

.field public mDevSubClass:I

.field public mDeviceRelease:I

.field public mMfgIndex:B

.field public mProductID:I

.field public mProductIndex:B

.field public mProtocol:I

.field public mSerialIndex:B

.field public mSpec:I

.field public mVendorID:I


# virtual methods
.method public final getDeviceReleaseString()Ljava/lang/String;
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    .line 2
    .line 3
    and-int/lit8 v0, p0, 0xf

    .line 4
    .line 5
    and-int/lit16 v1, p0, 0xf0

    .line 6
    .line 7
    shr-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    and-int/lit16 v2, p0, 0xf00

    .line 10
    .line 11
    shr-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    const v3, 0xf000

    .line 14
    .line 15
    .line 16
    and-int/2addr p0, v3

    .line 17
    shr-int/lit8 p0, p0, 0xc

    .line 18
    .line 19
    mul-int/lit8 p0, p0, 0xa

    .line 20
    .line 21
    add-int/2addr p0, v2

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "%d.%d%d"

    .line 39
    .line 40
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 65
    .line 66
    .line 67
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 68
    .line 69
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Spec: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getBCDString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    .line 37
    .line 38
    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "Class "

    .line 43
    .line 44
    const-string v5, ": "

    .line 45
    .line 46
    const-string v6, " Subclass"

    .line 47
    .line 48
    invoke-static {v0, v4, v5, v1, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "Vendor ID: "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 76
    .line 77
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " Product ID: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 90
    .line 91
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, " Product Release: "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    .line 104
    .line 105
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getBCDString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 120
    .line 121
    iget-object v1, p1, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 128
    .line 129
    invoke-virtual {v1, p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v3, "Manufacturer "

    .line 134
    .line 135
    const-string v4, " Product "

    .line 136
    .line 137
    invoke-static {v0, v3, v5, v2, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 158
    .line 159
    .line 160
    return-void
.end method
