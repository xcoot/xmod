.class public final Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 4
    .line 5
    sub-int v0, p0, v0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 8
    .line 9
    .line 10
    return p0
.end method
