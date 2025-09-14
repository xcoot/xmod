.class public final Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field public endReached:Z

.field public exception:Ljava/io/IOException;

.field public in:Ljava/io/InputStream;

.field public lz:Lorg/tukaani/xz/lz/LZDecoder;

.field public final lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field public final rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field public remainingSize:J

.field public final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/tukaani/xz/LZMAInputStream;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 14
    .line 15
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 16
    .line 17
    const-wide/16 v1, -0x1

    .line 18
    .line 19
    cmp-long v1, p2, v1

    .line 20
    .line 21
    if-ltz v1, :cond_4

    .line 22
    .line 23
    and-int/lit16 p4, p4, 0xff

    .line 24
    .line 25
    const/16 v2, 0xe0

    .line 26
    .line 27
    if-gt p4, v2, :cond_3

    .line 28
    .line 29
    div-int/lit8 v8, p4, 0x2d

    .line 30
    .line 31
    mul-int/lit8 v2, v8, 0x2d

    .line 32
    .line 33
    sub-int/2addr p4, v2

    .line 34
    div-int/lit8 v7, p4, 0x9

    .line 35
    .line 36
    mul-int/lit8 v2, v7, 0x9

    .line 37
    .line 38
    sub-int v6, p4, v2

    .line 39
    .line 40
    if-ltz p5, :cond_2

    .line 41
    .line 42
    const p4, 0x7ffffff0

    .line 43
    .line 44
    .line 45
    if-gt p5, p4, :cond_2

    .line 46
    .line 47
    if-ltz v1, :cond_1

    .line 48
    .line 49
    if-ltz v6, :cond_1

    .line 50
    .line 51
    const/16 p4, 0x8

    .line 52
    .line 53
    if-gt v6, p4, :cond_1

    .line 54
    .line 55
    if-ltz v7, :cond_1

    .line 56
    .line 57
    const/4 p4, 0x4

    .line 58
    if-gt v7, p4, :cond_1

    .line 59
    .line 60
    if-ltz v8, :cond_1

    .line 61
    .line 62
    if-gt v8, p4, :cond_1

    .line 63
    .line 64
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 65
    .line 66
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 67
    .line 68
    invoke-static {p5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    const-wide/16 v1, 0x0

    .line 73
    .line 74
    cmp-long p5, p2, v1

    .line 75
    .line 76
    if-ltz p5, :cond_0

    .line 77
    .line 78
    int-to-long v1, p4

    .line 79
    cmp-long p5, v1, p2

    .line 80
    .line 81
    if-lez p5, :cond_0

    .line 82
    .line 83
    long-to-int p4, p2

    .line 84
    invoke-static {p4}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    :cond_0
    new-instance p5, Lorg/tukaani/xz/lz/LZDecoder;

    .line 89
    .line 90
    invoke-static {p4}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    invoke-direct {p5, p4, v0}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    .line 95
    .line 96
    .line 97
    iput-object p5, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 98
    .line 99
    new-instance v5, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 100
    .line 101
    invoke-direct {v5, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .line 103
    .line 104
    iput-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 105
    .line 106
    new-instance p1, Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 107
    .line 108
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 109
    .line 110
    move-object v3, p1

    .line 111
    invoke-direct/range {v3 .. v8}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 115
    .line 116
    iput-wide p2, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_2
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 126
    .line 127
    const-string p1, "LZMA dictionary is too big for this implementation"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_3
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 134
    .line 135
    const-string p1, "Invalid LZMA properties byte"

    .line 136
    .line 137
    invoke-direct {p0, p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_4
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 142
    .line 143
    const-string p1, "Uncompressed size is too big"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public static getDictSize(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const v0, 0x7ffffff0

    .line 4
    .line 5
    .line 6
    if-gt p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x1000

    .line 9
    .line 10
    if-ge p0, v0, :cond_0

    .line 11
    .line 12
    move p0, v0

    .line 13
    :cond_0
    add-int/lit8 p0, p0, 0xf

    .line 14
    .line 15
    and-int/lit8 p0, p0, -0x10

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "LZMA dictionary is too big for this implementation"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public final read([BII)I
    .locals 11

    if-ltz p2, :cond_e

    if-ltz p3, :cond_e

    add-int v0, p2, p3

    if-ltz v0, :cond_e

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_e

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    .line 4
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_c

    .line 5
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :cond_2
    if-lez p3, :cond_b

    .line 6
    :try_start_0
    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    int-to-long v7, p3

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    long-to-int v3, v3

    goto :goto_0

    :cond_3
    move v3, p3

    .line 7
    :goto_0
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 8
    iget v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 9
    iget v8, v4, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    sub-int v9, v8, v7

    if-gt v9, v3, :cond_4

    .line 10
    iput v8, v4, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_1

    :cond_4
    add-int/2addr v7, v3

    .line 11
    iput v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->limit:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    .line 12
    :try_start_1
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_1
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v4

    .line 13
    :try_start_2
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    iget-object v7, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 14
    iget-object v7, v7, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    .line 15
    aget v7, v7, v0

    if-ne v7, v2, :cond_a

    .line 16
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 17
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v4}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 18
    :goto_2
    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 19
    iget v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 20
    iget v8, v4, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v9, v7, v8

    .line 21
    iget v10, v4, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v7, v10, :cond_5

    .line 22
    iput v0, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 23
    :cond_5
    iget-object v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-static {v7, v8, p1, p2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    add-int/2addr v1, v9

    .line 25
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v4, v7, v5

    if-ltz v4, :cond_6

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 26
    iput-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    .line 27
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 28
    :cond_6
    iget-boolean v3, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v3, :cond_2

    .line 29
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 30
    iget p2, p1, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-gtz p2, :cond_9

    .line 31
    iget-object p2, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 32
    iget p2, p2, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    if-nez p2, :cond_9

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    :goto_3
    return v2

    .line 36
    :cond_9
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    .line 37
    :cond_a
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :goto_4
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 39
    throw p1

    :cond_b
    return v1

    .line 40
    :cond_c
    throw v1

    .line 41
    :cond_d
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_e
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
