.class public final Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getDictionarySize$1(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/4 v3, 0x4

    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v3, v2

    .line 11
    aget-byte v4, p0, v3

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    const-wide/16 v6, 0xff

    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    mul-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    shl-long/2addr v4, v2

    .line 20
    or-long/2addr v0, v4

    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    long-to-int p0, v0

    .line 24
    return p0
.end method


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 6

    .line 1
    iget-object p0, p5, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 2
    .line 3
    const/4 p6, 0x0

    .line 4
    aget-byte v4, p0, p6

    .line 5
    .line 6
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize$1(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const p0, 0x7ffffff0

    .line 11
    .line 12
    .line 13
    if-gt v5, p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lorg/tukaani/xz/LZMAInputStream;

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p2

    .line 19
    move-wide v2, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string p2, "Dictionary larger than 4GiB maximum size used in "

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte p0, p0, v0

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    div-int/lit8 v0, p0, 0x2d

    .line 9
    .line 10
    mul-int/lit8 v1, v0, 0x2d

    .line 11
    .line 12
    sub-int/2addr p0, v1

    .line 13
    div-int/lit8 v1, p0, 0x9

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x9

    .line 16
    .line 17
    sub-int/2addr p0, v2

    .line 18
    new-instance v2, Lorg/tukaani/xz/LZMA2Options;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    sget-object v3, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    .line 24
    .line 25
    const/4 v4, 0x6

    .line 26
    aget v3, v3, v4

    .line 27
    .line 28
    iput v3, v2, Lorg/tukaani/xz/LZMA2Options;->dictSize:I
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    if-ltz v0, :cond_3

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    if-gt v0, v3, :cond_3

    .line 34
    .line 35
    if-ltz p0, :cond_2

    .line 36
    .line 37
    if-ltz v1, :cond_2

    .line 38
    .line 39
    if-gt p0, v3, :cond_2

    .line 40
    .line 41
    if-gt v1, v3, :cond_2

    .line 42
    .line 43
    add-int v0, p0, v1

    .line 44
    .line 45
    if-gt v0, v3, :cond_2

    .line 46
    .line 47
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize$1(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/16 p1, 0x1000

    .line 52
    .line 53
    const-string v0, " B"

    .line 54
    .line 55
    if-lt p0, p1, :cond_1

    .line 56
    .line 57
    const/high16 p1, 0x30000000

    .line 58
    .line 59
    if-gt p0, p1, :cond_0

    .line 60
    .line 61
    iput p0, v2, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_0
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 65
    .line 66
    const-string v1, "LZMA2 dictionary size must not exceed 768 MiB: "

    .line 67
    .line 68
    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 77
    .line 78
    const-string v1, "LZMA2 dictionary size must be at least 4 KiB: "

    .line 79
    .line 80
    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {p1, p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 89
    .line 90
    const-string v0, "lc + lp must not exceed 4: "

    .line 91
    .line 92
    const-string v2, " + "

    .line 93
    .line 94
    invoke-static {p0, v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_3
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 103
    .line 104
    const-string/jumbo p1, "pb must not exceed 4: "

    .line 105
    .line 106
    .line 107
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw p0
.end method
