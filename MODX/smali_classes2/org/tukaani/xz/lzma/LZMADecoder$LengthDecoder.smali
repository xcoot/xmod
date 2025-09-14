.class public final Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final choice:[S

.field public final high:[S

.field public final low:[[S

.field public final mid:[[S

.field public final synthetic this$0:Lorg/tukaani/xz/lzma/LZMADecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array v0, p1, [S

    .line 8
    .line 9
    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->choice:[S

    .line 10
    .line 11
    new-array v0, p1, [I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    aput v2, v0, v1

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x10

    .line 20
    .line 21
    aput v4, v0, v3

    .line 22
    .line 23
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [[S

    .line 30
    .line 31
    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->low:[[S

    .line 32
    .line 33
    new-array p1, p1, [I

    .line 34
    .line 35
    aput v2, p1, v1

    .line 36
    .line 37
    aput v4, p1, v3

    .line 38
    .line 39
    invoke-static {v5, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [[S

    .line 44
    .line 45
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->mid:[[S

    .line 46
    .line 47
    const/16 p1, 0x100

    .line 48
    .line 49
    new-array p1, p1, [S

    .line 50
    .line 51
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->high:[S

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final decode(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->choice:[S

    .line 7
    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->low:[[S

    .line 17
    .line 18
    aget-object p0, p0, p1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/lit8 p0, p0, 0x2

    .line 25
    .line 26
    return p0

    .line 27
    :cond_0
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->mid:[[S

    .line 39
    .line 40
    aget-object p0, p0, p1

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/lit8 p0, p0, 0xa

    .line 47
    .line 48
    return p0

    .line 49
    :cond_1
    iget-object p1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 50
    .line 51
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->high:[S

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    add-int/lit8 p0, p0, 0x12

    .line 58
    .line 59
    return p0
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->choice:[S

    .line 2
    .line 3
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->low:[[S

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :goto_1
    array-length v1, v2

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->mid:[[S

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->high:[S

    .line 35
    .line 36
    invoke-static {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
