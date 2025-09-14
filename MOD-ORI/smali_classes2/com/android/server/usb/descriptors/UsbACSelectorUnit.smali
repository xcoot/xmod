.class public final Lcom/android/server/usb/descriptors/UsbACSelectorUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNumPins:B

.field public mSourceIDs:[B


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aput-byte v2, v1, v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 31
    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 34
    .line 35
    return p0
.end method
