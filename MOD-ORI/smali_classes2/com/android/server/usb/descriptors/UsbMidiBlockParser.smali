.class public final Lcom/android/server/usb/descriptors/UsbMidiBlockParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mGroupTerminalBlocks:Ljava/util/ArrayList;

.field public mHeaderDescriptorSubtype:I

.field public mHeaderDescriptorType:I

.field public mHeaderLength:I

.field public mTotalLength:I


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iput v1, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method
