.class public final Lorg/apache/commons/compress/utils/BitInputStream;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final MASKS:[J


# instance fields
.field public bitsCached:J

.field public bitsCachedSize:I

.field public final byteOrder:Ljava/nio/ByteOrder;

.field public final in:Lorg/apache/commons/compress/utils/CountingInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    sput-object v0, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const/16 v2, 0x3f

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 16
    .line 17
    aget-wide v3, v2, v3

    .line 18
    .line 19
    shl-long/2addr v3, v0

    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    aput-wide v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/FilterInputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final readBits(I)J
    .locals 11

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    const/16 v0, 0x3f

    .line 4
    .line 5
    if-gt p1, v0, :cond_6

    .line 6
    .line 7
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    if-ge v0, p1, :cond_2

    .line 12
    .line 13
    const/16 v3, 0x39

    .line 14
    .line 15
    if-ge v0, v3, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v3, v0

    .line 24
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    const-wide/16 p0, -0x1

    .line 29
    .line 30
    return-wide p0

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 32
    .line 33
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 40
    .line 41
    iget v5, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 42
    .line 43
    shl-long/2addr v3, v5

    .line 44
    or-long/2addr v0, v3

    .line 45
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 49
    .line 50
    shl-long/2addr v0, v2

    .line 51
    or-long/2addr v0, v3

    .line 52
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 53
    .line 54
    :goto_1
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 55
    .line 56
    add-int/2addr v0, v2

    .line 57
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-ge v0, p1, :cond_5

    .line 61
    .line 62
    sub-int v0, p1, v0

    .line 63
    .line 64
    rsub-int/lit8 v3, v0, 0x8

    .line 65
    .line 66
    iget-object v4, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 67
    .line 68
    invoke-virtual {v4}, Lorg/apache/commons/compress/utils/CountingInputStream;->read()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    int-to-long v4, v4

    .line 73
    cmp-long v1, v4, v1

    .line 74
    .line 75
    if-gez v1, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 79
    .line 80
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 81
    .line 82
    sget-object v6, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 83
    .line 84
    if-ne v1, v2, :cond_4

    .line 85
    .line 86
    aget-wide v1, v6, v0

    .line 87
    .line 88
    and-long/2addr v1, v4

    .line 89
    iget-wide v7, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 90
    .line 91
    iget v9, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 92
    .line 93
    shl-long/2addr v1, v9

    .line 94
    or-long/2addr v1, v7

    .line 95
    iput-wide v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 96
    .line 97
    ushr-long v0, v4, v0

    .line 98
    .line 99
    aget-wide v4, v6, v3

    .line 100
    .line 101
    and-long/2addr v0, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    iget-wide v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 104
    .line 105
    shl-long/2addr v1, v0

    .line 106
    ushr-long v7, v4, v3

    .line 107
    .line 108
    aget-wide v9, v6, v0

    .line 109
    .line 110
    and-long/2addr v7, v9

    .line 111
    or-long v0, v1, v7

    .line 112
    .line 113
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 114
    .line 115
    aget-wide v0, v6, v3

    .line 116
    .line 117
    and-long/2addr v0, v4

    .line 118
    :goto_2
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 119
    .line 120
    aget-wide v6, v6, p1

    .line 121
    .line 122
    and-long/2addr v4, v6

    .line 123
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 124
    .line 125
    iput v3, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 126
    .line 127
    :goto_3
    return-wide v4

    .line 128
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readCachedBits(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide p0

    .line 132
    return-wide p0

    .line 133
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p1, "count must not be negative or greater than 63"

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final readCachedBits(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 10
    .line 11
    aget-wide v2, v2, p1

    .line 12
    .line 13
    and-long/2addr v2, v0

    .line 14
    ushr-long/2addr v0, p1

    .line 15
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 19
    .line 20
    iget v3, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 21
    .line 22
    sub-int/2addr v3, p1

    .line 23
    shr-long/2addr v0, v3

    .line 24
    aget-wide v2, v2, p1

    .line 25
    .line 26
    and-long/2addr v2, v0

    .line 27
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 28
    .line 29
    sub-int/2addr v0, p1

    .line 30
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 31
    .line 32
    return-wide v2
.end method
