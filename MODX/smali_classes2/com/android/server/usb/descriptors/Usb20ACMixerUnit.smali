.class public final Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;


# instance fields
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
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbInt()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 8
    .line 9
    .line 10
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 11
    .line 12
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 13
    .line 14
    mul-int/2addr v0, v1

    .line 15
    add-int/lit8 v0, v0, 0x7

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    new-array v1, v0, [B

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;->mControls:[B

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aput-byte v3, v2, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 41
    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 44
    .line 45
    return p0
.end method
