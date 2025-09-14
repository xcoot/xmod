.class public final Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

.field public final oneByte:[B

.field public originalStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->available()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :cond_0
    :try_start_2
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 30
    .line 31
    :cond_2
    throw v1
.end method

.method public final read()I
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid return value from read: "

    .line 4
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v1
.end method

.method public final read([BII)I
    .locals 23

    move-object/from16 v0, p0

    .line 10
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    if-eqz v1, :cond_12

    .line 11
    :goto_0
    iget-boolean v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    goto/16 :goto_7

    .line 13
    :cond_1
    :goto_1
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    if-ne v3, v4, :cond_f

    .line 14
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    const/4 v5, 0x0

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    .line 15
    :goto_2
    iput-boolean v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    .line 16
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v9

    long-to-int v3, v9

    const/16 v9, 0x10

    if-eqz v3, :cond_c

    if-eq v3, v4, :cond_b

    if-ne v3, v6, :cond_a

    .line 17
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v10, 0x5

    invoke-static {v3, v10}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v11

    const-wide/16 v13, 0x101

    add-long/2addr v11, v13

    long-to-int v3, v11

    .line 18
    new-array v3, v3, [I

    .line 19
    iget-object v11, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v11, v10}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v10

    add-long/2addr v10, v7

    long-to-int v7, v10

    .line 20
    new-array v7, v7, [I

    filled-new-array {v3, v7}, [[I

    move-result-object v3

    .line 21
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    aget-object v8, v3, v5

    aget-object v10, v3, v4

    const/4 v11, 0x4

    .line 22
    invoke-static {v7, v11}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v11

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    long-to-int v11, v11

    const/16 v12, 0x13

    .line 23
    new-array v12, v12, [I

    move v13, v5

    :goto_3
    const/4 v14, 0x3

    if-ge v13, v11, :cond_3

    .line 24
    sget-object v15, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->CODE_LENGTHS_ORDER:[I

    aget v15, v15, v13

    move-object/from16 v16, v3

    invoke-static {v7, v14}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v12, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    .line 25
    invoke-static {v12}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object v2

    .line 26
    array-length v3, v8

    array-length v11, v10

    add-int/2addr v3, v11

    new-array v11, v3, [I

    move v12, v5

    move v13, v12

    const/4 v15, -0x1

    :goto_4
    if-ge v12, v3, :cond_9

    if-lez v13, :cond_4

    add-int/lit8 v17, v12, 0x1

    .line 27
    aput v15, v11, v12

    add-int/lit8 v13, v13, -0x1

    move/from16 v12, v17

    goto :goto_4

    .line 28
    :cond_4
    invoke-static {v7, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    move-result v4

    if-ge v4, v9, :cond_5

    add-int/lit8 v15, v12, 0x1

    .line 29
    aput v4, v11, v12

    move-object/from16 v22, v10

    move v12, v15

    move v15, v4

    goto :goto_6

    :cond_5
    const-wide/16 v18, 0x3

    if-ne v4, v9, :cond_6

    .line 30
    invoke-static {v7, v6}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v20

    move-object/from16 v22, v10

    add-long v9, v20, v18

    long-to-int v13, v9

    goto :goto_6

    :cond_6
    move-object/from16 v22, v10

    const/16 v9, 0x11

    if-ne v4, v9, :cond_7

    .line 31
    invoke-static {v7, v14}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v9

    :goto_5
    add-long v9, v9, v18

    long-to-int v13, v9

    move v15, v5

    goto :goto_6

    :cond_7
    const/16 v9, 0x12

    if-ne v4, v9, :cond_8

    const/4 v4, 0x7

    .line 32
    invoke-static {v7, v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v9

    const-wide/16 v18, 0xb

    goto :goto_5

    :cond_8
    :goto_6
    move-object/from16 v10, v22

    const/4 v4, 0x1

    const/16 v9, 0x10

    goto :goto_4

    :cond_9
    move-object/from16 v22, v10

    .line 33
    array-length v2, v8

    invoke-static {v11, v5, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    array-length v2, v8

    move-object/from16 v3, v22

    array-length v4, v3

    invoke-static {v11, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    new-instance v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;

    sget-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    aget-object v4, v16, v5

    const/4 v5, 0x1

    aget-object v5, v16, v5

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V

    iput-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    goto/16 :goto_0

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported compression: "

    .line 37
    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_b
    new-instance v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;

    sget-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    sget-object v4, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    sget-object v5, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_DISTANCE:[I

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V

    iput-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    goto/16 :goto_0

    .line 40
    :cond_c
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 41
    iget v3, v2, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 42
    rem-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_d

    .line 43
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/utils/BitInputStream;->readCachedBits(I)J

    .line 44
    :cond_d
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v4

    .line 45
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v2

    const-wide/32 v6, 0xffff

    xor-long v8, v4, v6

    and-long/2addr v6, v8

    cmp-long v2, v6, v2

    if-nez v2, :cond_e

    .line 46
    new-instance v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;

    invoke-direct {v2, v1, v4, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V

    iput-object v2, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    goto/16 :goto_0

    .line 47
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal LEN / NLEN values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_f
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->read([BII)I

    move-result v1

    .line 49
    :goto_7
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 50
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 51
    iget-object v3, v3, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 52
    iget-wide v3, v3, Lorg/apache/commons/compress/utils/CountingInputStream;->bytesRead:J

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    if-eqz v2, :cond_10

    .line 53
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_10
    const/4 v2, 0x0

    .line 54
    iput-object v2, v0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    :cond_11
    move v2, v1

    goto :goto_8

    :cond_12
    const/4 v3, -0x1

    move v2, v3

    :goto_8
    return v2
.end method
