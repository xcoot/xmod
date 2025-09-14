.class public final Lcom/android/server/usb/descriptors/ByteStream;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBytes:[B

.field public mIndex:I

.field public mReadCount:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method


# virtual methods
.method public final advance(I)V
    .locals 6

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 4
    .line 5
    int-to-long v1, v0

    .line 6
    int-to-long v3, p1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iget-object v3, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    int-to-long v4, v4

    .line 12
    cmp-long v1, v1, v4

    .line 13
    .line 14
    if-gtz v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 17
    .line 18
    add-int/2addr v1, p1

    .line 19
    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    array-length p1, v3

    .line 26
    iput p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 27
    .line 28
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget p0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 5
    .line 6
    sub-int/2addr v0, p0

    .line 7
    return v0
.end method

.method public final getByte()B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 20
    .line 21
    aget-byte p0, p0, v0

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final getUnsignedByte()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 20
    .line 21
    aget-byte p0, p0, v0

    .line 22
    .line 23
    and-int/lit16 p0, p0, 0xff

    .line 24
    .line 25
    return p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final unpackUsbInt()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    shl-int/lit8 p0, p0, 0x18

    .line 25
    .line 26
    shl-int/lit8 v2, v2, 0x10

    .line 27
    .line 28
    or-int/2addr p0, v2

    .line 29
    shl-int/lit8 v1, v1, 0x8

    .line 30
    .line 31
    or-int/2addr p0, v1

    .line 32
    or-int/2addr p0, v0

    .line 33
    return p0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final unpackUsbShort()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    shl-int/lit8 p0, p0, 0x8

    .line 17
    .line 18
    or-int/2addr p0, v0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final unpackUsbTriple()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    shl-int/lit8 p0, p0, 0x10

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr p0, v1

    .line 25
    or-int/2addr p0, v0

    .line 26
    return p0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method
