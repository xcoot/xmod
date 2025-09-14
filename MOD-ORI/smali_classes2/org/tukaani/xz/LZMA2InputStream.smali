.class public final Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field public endReached:Z

.field public exception:Ljava/io/IOException;

.field public in:Ljava/io/DataInputStream;

.field public isLZMAChunk:Z

.field public lz:Lorg/tukaani/xz/lz/LZDecoder;

.field public lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field public needDictReset:Z

.field public needProps:Z

.field public rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

.field public final tempBuf:[B

.field public uncompressedSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 18
    .line 19
    new-array v0, v1, [B

    .line 20
    .line 21
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 27
    .line 28
    new-instance v0, Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 34
    .line 35
    new-instance p1, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;-><init>(Lorg/tukaani/xz/ArrayCache;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 41
    .line 42
    new-instance p1, Lorg/tukaani/xz/lz/LZDecoder;

    .line 43
    .line 44
    const/16 v0, 0x1000

    .line 45
    .line 46
    if-lt p2, v0, :cond_0

    .line 47
    .line 48
    const v0, 0x7ffffff0

    .line 49
    .line 50
    .line 51
    if-gt p2, v0, :cond_0

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0xf

    .line 54
    .line 55
    and-int/lit8 p2, p2, -0x10

    .line 56
    .line 57
    invoke-direct {p1, p2, p3}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p1, "Unsupported dictionary size "

    .line 66
    .line 67
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :goto_0
    return p0

    .line 27
    :cond_1
    throw v1

    .line 28
    :cond_2
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    .line 29
    .line 30
    const-string v0, "Stream closed"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 28
    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final decodeChunkHeader()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    .line 11
    .line 12
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 25
    .line 26
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    const/16 v2, 0xe0

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-ge v0, v2, :cond_4

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 51
    .line 52
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 57
    .line 58
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 59
    .line 60
    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 61
    .line 62
    iput v3, v4, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 63
    .line 64
    iput v3, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 65
    .line 66
    iput v3, v4, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 67
    .line 68
    iput v3, v4, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 69
    .line 70
    iget v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 71
    .line 72
    sub-int/2addr v5, v1

    .line 73
    iget-object v4, v4, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 74
    .line 75
    aput-byte v3, v4, v5

    .line 76
    .line 77
    :goto_1
    const/16 v4, 0x80

    .line 78
    .line 79
    if-lt v0, v4, :cond_c

    .line 80
    .line 81
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 82
    .line 83
    and-int/lit8 v4, v0, 0x1f

    .line 84
    .line 85
    shl-int/lit8 v4, v4, 0x10

    .line 86
    .line 87
    iput v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 88
    .line 89
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    add-int/2addr v5, v1

    .line 96
    add-int/2addr v5, v4

    .line 97
    iput v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 98
    .line 99
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/lit8 v4, v1, 0x1

    .line 106
    .line 107
    const/16 v5, 0xc0

    .line 108
    .line 109
    if-lt v0, v5, :cond_7

    .line 110
    .line 111
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 112
    .line 113
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-gt v0, v2, :cond_6

    .line 120
    .line 121
    div-int/lit8 v10, v0, 0x2d

    .line 122
    .line 123
    mul-int/lit8 v2, v10, 0x2d

    .line 124
    .line 125
    sub-int/2addr v0, v2

    .line 126
    div-int/lit8 v9, v0, 0x9

    .line 127
    .line 128
    mul-int/lit8 v2, v9, 0x9

    .line 129
    .line 130
    sub-int v8, v0, v2

    .line 131
    .line 132
    add-int v0, v8, v9

    .line 133
    .line 134
    const/4 v2, 0x4

    .line 135
    if-gt v0, v2, :cond_5

    .line 136
    .line 137
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 138
    .line 139
    iget-object v6, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 140
    .line 141
    iget-object v7, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 142
    .line 143
    move-object v5, v0

    .line 144
    invoke-direct/range {v5 .. v10}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 151
    .line 152
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_6
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 157
    .line 158
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_7
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 163
    .line 164
    if-nez v2, :cond_b

    .line 165
    .line 166
    const/16 v2, 0xa0

    .line 167
    .line 168
    if-lt v0, v2, :cond_8

    .line 169
    .line 170
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 171
    .line 172
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 176
    .line 177
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const/4 v2, 0x5

    .line 183
    if-lt v4, v2, :cond_a

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_9

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iput v2, v0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 196
    .line 197
    const/4 v2, -0x1

    .line 198
    iput v2, v0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 199
    .line 200
    add-int/lit8 v1, v1, -0x4

    .line 201
    .line 202
    iget-object v2, v0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    .line 203
    .line 204
    array-length v3, v2

    .line 205
    sub-int/2addr v3, v1

    .line 206
    iput v3, v0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    .line 207
    .line 208
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_9
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 213
    .line 214
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_a
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 219
    .line 220
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :cond_b
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 225
    .line 226
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :cond_c
    const/4 v2, 0x2

    .line 231
    if-gt v0, v2, :cond_d

    .line 232
    .line 233
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 234
    .line 235
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    add-int/2addr v0, v1

    .line 242
    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 243
    .line 244
    :goto_3
    return-void

    .line 245
    :cond_d
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 246
    .line 247
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 248
    .line 249
    .line 250
    throw p0
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public final read([BII)I
    .locals 8

    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    add-int v0, p2, p3

    if-ltz v0, :cond_d

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_d

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v1, :cond_c

    .line 4
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_b

    .line 5
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-lez p3, :cond_a

    .line 6
    :try_start_0
    iget v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeChunkHeader()V

    .line 8
    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 9
    :cond_4
    iget v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10
    iget-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-nez v4, :cond_5

    .line 11
    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 12
    iget v6, v4, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 13
    iget v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    iget-object v6, v4, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v7, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 15
    iget v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v5, v3

    iput v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 16
    iget v3, v4, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge v3, v5, :cond_7

    .line 17
    iput v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    goto :goto_3

    .line 18
    :cond_5
    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 19
    iget v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 20
    iget v6, v4, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    sub-int v7, v6, v5

    if-gt v7, v3, :cond_6

    .line 21
    iput v6, v4, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_2

    :cond_6
    add-int/2addr v5, v3

    .line 22
    iput v5, v4, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 23
    :goto_2
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V

    .line 24
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 25
    iget v4, v3, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 26
    iget v5, v3, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v6, v4, v5

    .line 27
    iget v7, v3, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v4, v7, :cond_8

    .line 28
    iput v0, v3, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 29
    :cond_8
    iget-object v4, v3, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-static {v4, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v4, v3, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v4, v3, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    add-int/2addr v1, v6

    .line 31
    iget v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v3, :cond_2

    .line 32
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 33
    iget v4, v3, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    .line 34
    iget-object v5, v3, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    array-length v5, v5

    if-ne v4, v5, :cond_9

    iget v3, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    if-nez v3, :cond_9

    .line 35
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 36
    iget v3, v3, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-gtz v3, :cond_9

    goto/16 :goto_0

    .line 37
    :cond_9
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_4
    iput-object p1, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 39
    throw p1

    :cond_a
    return v1

    .line 40
    :cond_b
    throw v1

    .line 41
    :cond_c
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
