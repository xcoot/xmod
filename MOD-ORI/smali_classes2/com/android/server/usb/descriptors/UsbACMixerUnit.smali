.class public abstract Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInputIDs:[B

.field public mNumInputs:B

.field public mNumOutputs:B

.field public mUnitID:B


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    aput-byte v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 40
    .line 41
    return p0
.end method
