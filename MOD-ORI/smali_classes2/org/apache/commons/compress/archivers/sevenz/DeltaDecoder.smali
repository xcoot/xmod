.class public final Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Lorg/tukaani/xz/DeltaOptions;

    .line 2
    .line 3
    iget-object p1, p5, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    array-length p4, p1

    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    aget-byte p1, p1, p4

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    add-int/2addr p1, p3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move p1, p3

    .line 20
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput p3, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 24
    .line 25
    if-lt p1, p3, :cond_2

    .line 26
    .line 27
    const/16 p3, 0x100

    .line 28
    .line 29
    if-gt p1, p3, :cond_2

    .line 30
    .line 31
    iput p1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 32
    .line 33
    new-instance p1, Lorg/tukaani/xz/DeltaInputStream;

    .line 34
    .line 35
    iget p0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 36
    .line 37
    invoke-direct {p1, p2, p0}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 42
    .line 43
    const-string p2, "Delta distance must be in the range [1, 256]: "

    .line 44
    .line 45
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    aget-byte p0, p0, v0

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    add-int/2addr p1, p0

    .line 16
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
