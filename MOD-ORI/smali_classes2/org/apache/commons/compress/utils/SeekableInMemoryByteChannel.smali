.class public final Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field public final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public data:[B

.field public position:I

.field public size:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final position()J
    .locals 2

    .line 1
    iget p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    .line 3
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Position has to be in range 0.. 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iput v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 20
    .line 21
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 22
    .line 23
    sub-int/2addr v1, v2

    .line 24
    if-gtz v1, :cond_1

    .line 25
    .line 26
    const/4 p0, -0x1

    .line 27
    return p0

    .line 28
    :cond_1
    if-le v0, v1, :cond_2

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 40
    .line 41
    return v0

    .line 42
    :cond_3
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final resize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    .line 8
    .line 9
    .line 10
    if-ge p1, v1, :cond_2

    .line 11
    .line 12
    :goto_0
    if-ge v0, p1, :cond_1

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move p1, v0

    .line 18
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 19
    .line 20
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 25
    .line 26
    return-void
.end method

.method public final size()J
    .locals 2

    .line 1
    iget p0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public final truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    cmp-long v0, v0, p1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    long-to-int p1, p1

    .line 9
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 10
    .line 11
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 12
    .line 13
    iget p2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 14
    .line 15
    if-le p1, p2, :cond_1

    .line 16
    .line 17
    iput p2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 12
    .line 13
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 35
    .line 36
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 42
    .line 43
    add-int/2addr p1, v0

    .line 44
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 45
    .line 46
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 47
    .line 48
    if-ge v1, p1, :cond_2

    .line 49
    .line 50
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 51
    .line 52
    :cond_2
    return v0

    .line 53
    :cond_3
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
