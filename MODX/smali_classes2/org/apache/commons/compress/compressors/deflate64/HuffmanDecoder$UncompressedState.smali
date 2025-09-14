.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final blockLength:J

.field public read:J

.field public final synthetic this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 9
    .line 10
    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    iget-object p0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/FilterInputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long v4, p0

    .line 20
    const-wide/16 v6, 0x8

    .line 21
    .line 22
    mul-long/2addr v4, v6

    .line 23
    add-long/2addr v4, v2

    .line 24
    div-long/2addr v4, v6

    .line 25
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-int p0, v0

    .line 30
    return p0
.end method

.method public final hasData()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final read([BII)I
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    int-to-long v2, p3

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    long-to-int p3, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p3, :cond_5

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 16
    .line 17
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 18
    .line 19
    iget v3, v2, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 20
    .line 21
    const v4, 0xffff

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-lez v3, :cond_1

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    long-to-int v2, v2

    .line 34
    int-to-byte v2, v2

    .line 35
    add-int v3, p2, v0

    .line 36
    .line 37
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 38
    .line 39
    iget v6, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 40
    .line 41
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 42
    .line 43
    aput-byte v2, v7, v6

    .line 44
    .line 45
    add-int/lit8 v7, v6, 0x1

    .line 46
    .line 47
    and-int/2addr v4, v7

    .line 48
    iget-boolean v7, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 49
    .line 50
    if-nez v7, :cond_0

    .line 51
    .line 52
    if-ge v4, v6, :cond_0

    .line 53
    .line 54
    iput-boolean v5, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 55
    .line 56
    :cond_0
    iput v4, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 57
    .line 58
    aput-byte v2, p1, v3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->in:Ljava/io/InputStream;

    .line 62
    .line 63
    add-int v3, p2, v0

    .line 64
    .line 65
    sub-int v6, p3, v0

    .line 66
    .line 67
    invoke-virtual {v2, p1, v3, v6}, Ljava/io/InputStream;->read([BII)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v6, -0x1

    .line 72
    if-eq v2, v6, :cond_4

    .line 73
    .line 74
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move v6, v3

    .line 80
    :goto_1
    add-int v7, v3, v2

    .line 81
    .line 82
    if-ge v6, v7, :cond_3

    .line 83
    .line 84
    aget-byte v7, p1, v6

    .line 85
    .line 86
    iget v8, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 87
    .line 88
    iget-object v9, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 89
    .line 90
    aput-byte v7, v9, v8

    .line 91
    .line 92
    add-int/lit8 v7, v8, 0x1

    .line 93
    .line 94
    and-int/2addr v7, v4

    .line 95
    iget-boolean v9, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 96
    .line 97
    if-nez v9, :cond_2

    .line 98
    .line 99
    if-ge v7, v8, :cond_2

    .line 100
    .line 101
    iput-boolean v5, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 102
    .line 103
    :cond_2
    iput v7, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move v5, v2

    .line 109
    :goto_2
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 110
    .line 111
    int-to-long v3, v5

    .line 112
    add-long/2addr v1, v3

    .line 113
    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 114
    .line 115
    add-int/2addr v0, v5

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    new-instance p0, Ljava/io/EOFException;

    .line 118
    .line 119
    const-string p1, "Truncated Deflate64 Stream"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_5
    return p3
.end method

.method public final state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method
