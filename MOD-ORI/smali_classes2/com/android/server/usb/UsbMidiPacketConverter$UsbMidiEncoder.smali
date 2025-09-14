.class public final Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEmptyBytes:[B

.field public mHasSystemExclusiveStarted:Z

.field public mNumStoredSystemExclusiveBytes:I

.field public mShiftedCableNumber:B

.field public mStoredSystemExclusiveBytes:[B


# virtual methods
.method public final writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    .line 2
    .line 3
    or-int/lit8 p0, p0, 0xf

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
