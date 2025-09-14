.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final CODE_LENGTHS_ORDER:[I

.field public static final DISTANCE_TABLE:[I

.field public static final FIXED_DISTANCE:[I

.field public static final FIXED_LITERALS:[I

.field public static final RUN_LENGTH_TABLE:[S


# instance fields
.field public finalBlock:Z

.field public final in:Ljava/io/InputStream;

.field public final memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

.field public reader:Lorg/apache/commons/compress/utils/BitInputStream;

.field public state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const/16 v1, 0x120

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    new-array v2, v2, [S

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->RUN_LENGTH_TABLE:[S

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    new-array v3, v2, [I

    .line 17
    .line 18
    fill-array-data v3, :array_1

    .line 19
    .line 20
    .line 21
    sput-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->DISTANCE_TABLE:[I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    const/4 v5, 0x7

    .line 27
    const/16 v6, 0x9

    .line 28
    .line 29
    const/4 v7, 0x5

    .line 30
    const/16 v8, 0x13

    .line 31
    .line 32
    new-array v8, v8, [I

    .line 33
    .line 34
    fill-array-data v8, :array_2

    .line 35
    .line 36
    .line 37
    sput-object v8, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->CODE_LENGTHS_ORDER:[I

    .line 38
    .line 39
    new-array v8, v1, [I

    .line 40
    .line 41
    sput-object v8, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    .line 42
    .line 43
    const/16 v9, 0x90

    .line 44
    .line 45
    invoke-static {v8, v3, v9, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v9, v0, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x118

    .line 52
    .line 53
    invoke-static {v8, v0, v3, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 54
    .line 55
    .line 56
    invoke-static {v8, v3, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 57
    .line 58
    .line 59
    new-array v0, v2, [I

    .line 60
    .line 61
    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_DISTANCE:[I

    .line 62
    .line 63
    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 2
        0x60s
        0x80s
        0xa0s
        0xc0s
        0xe0s
        0x100s
        0x120s
        0x140s
        0x161s
        0x1a1s
        0x1e1s
        0x221s
        0x262s
        0x2e2s
        0x362s
        0x3e2s
        0x463s
        0x563s
        0x663s
        0x763s
        0x864s
        0xa64s
        0xc64s
        0xe64s
        0x1065s
        0x1465s
        0x1865s
        0x1c65s
        0x70s
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :array_1
    .array-data 4
        0x10
        0x20
        0x30
        0x40
        0x51
        0x71
        0x92
        0xd2
        0x113
        0x193
        0x214
        0x314
        0x415
        0x615
        0x816
        0xc16
        0x1017
        0x1817
        0x2018
        0x3018
        0x4019
        0x6019
        0x801a
        0xc01a
        0x1001b
        0x1801b
        0x2001c
        0x3001c
        0x4001d
        0x6001d
        0x8001e
        0xc001e
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_2
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    .line 6
    .line 7
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    .line 15
    .line 16
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->in:Ljava/io/InputStream;

    .line 24
    .line 25
    new-instance p1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 31
    .line 32
    return-void
.end method

.method public static buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .locals 10

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget v6, p0, v3

    .line 13
    .line 14
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    aget v7, v0, v6

    .line 19
    .line 20
    add-int/2addr v7, v5

    .line 21
    aput v7, v0, v6

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v1, v4, 0x1

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-array v1, v1, [I

    .line 33
    .line 34
    move v3, v2

    .line 35
    move v6, v3

    .line 36
    :goto_1
    if-gt v3, v4, :cond_1

    .line 37
    .line 38
    aget v7, v0, v3

    .line 39
    .line 40
    add-int/2addr v6, v7

    .line 41
    shl-int/2addr v6, v5

    .line 42
    aput v6, v1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 48
    .line 49
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;-><init>(I)V

    .line 50
    .line 51
    .line 52
    :goto_2
    array-length v3, p0

    .line 53
    if-ge v2, v3, :cond_7

    .line 54
    .line 55
    aget v3, p0, v2

    .line 56
    .line 57
    if-eqz v3, :cond_6

    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    aget v4, v1, v3

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    move v6, v3

    .line 65
    :goto_3
    if-ltz v6, :cond_5

    .line 66
    .line 67
    shl-int v8, v5, v6

    .line 68
    .line 69
    and-int/2addr v8, v4

    .line 70
    const/4 v9, -0x1

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    iget-object v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 74
    .line 75
    if-nez v8, :cond_2

    .line 76
    .line 77
    iget v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 78
    .line 79
    if-ne v8, v9, :cond_2

    .line 80
    .line 81
    new-instance v8, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 82
    .line 83
    iget v9, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->bits:I

    .line 84
    .line 85
    add-int/2addr v9, v5

    .line 86
    invoke-direct {v8, v9}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 90
    .line 91
    :cond_2
    iget-object v7, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_3
    iget-object v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 95
    .line 96
    if-nez v8, :cond_4

    .line 97
    .line 98
    iget v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 99
    .line 100
    if-ne v8, v9, :cond_4

    .line 101
    .line 102
    new-instance v8, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 103
    .line 104
    iget v9, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->bits:I

    .line 105
    .line 106
    add-int/2addr v9, v5

    .line 107
    invoke-direct {v8, v9}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;-><init>(I)V

    .line 108
    .line 109
    .line 110
    iput-object v8, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 111
    .line 112
    :cond_4
    iget-object v7, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 113
    .line 114
    :goto_4
    add-int/lit8 v6, v6, -0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    iput v2, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    iput-object v4, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 121
    .line 122
    iput-object v4, v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 123
    .line 124
    aget v4, v1, v3

    .line 125
    .line 126
    add-int/2addr v4, v5

    .line 127
    aput v4, v1, v3

    .line 128
    .line 129
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    return-object v0
.end method

.method public static nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I
    .locals 4

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v1, p1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget v0, p1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 28
    .line 29
    :cond_2
    return v0
.end method

.method public static readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-wide p0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 13
    .line 14
    const-string p1, "Truncated Deflate64 Stream"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 10
    .line 11
    return-void
.end method
