.class public final Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte p0, p0, v0

    .line 5
    .line 6
    and-int/lit16 v0, p0, 0xff

    .line 7
    .line 8
    and-int/lit16 v1, p0, 0xc0

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x28

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    and-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    or-int/lit8 p0, p0, 0x2

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0xb

    .line 27
    .line 28
    shl-int/2addr p0, v0

    .line 29
    return p0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Dictionary larger than 4GiB maximum size"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "Unsupported LZMA2 property bits"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance p1, Lorg/tukaani/xz/LZMA2InputStream;

    .line 6
    .line 7
    sget-object p3, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 8
    .line 9
    invoke-direct {p1, p2, p0, p3}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
