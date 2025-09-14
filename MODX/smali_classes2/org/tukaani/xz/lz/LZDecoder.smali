.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final buf:[B

.field public final bufSize:I

.field public full:I

.field public limit:I

.field public pendingDist:I

.field public pendingLen:I

.field public pos:I

.field public start:I


# direct methods
.method public constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 6
    .line 7
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 8
    .line 9
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 10
    .line 11
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 12
    .line 13
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 14
    .line 15
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 16
    .line 17
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 18
    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final repeat(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 8
    .line 9
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr p2, v0

    .line 17
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 18
    .line 19
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 20
    .line 21
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 22
    .line 23
    sub-int/2addr p2, p1

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    iget-object p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 31
    .line 32
    add-int/2addr p2, v1

    .line 33
    sub-int/2addr v1, p2

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 39
    .line 40
    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 44
    .line 45
    add-int/2addr p2, v1

    .line 46
    iput p2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 47
    .line 48
    sub-int/2addr v0, v1

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    :cond_1
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 54
    .line 55
    sub-int/2addr v1, p2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 61
    .line 62
    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 66
    .line 67
    add-int/2addr v2, v1

    .line 68
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 69
    .line 70
    sub-int/2addr v0, v1

    .line 71
    if-gtz v0, :cond_1

    .line 72
    .line 73
    iget p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 74
    .line 75
    if-ge p1, v2, :cond_2

    .line 76
    .line 77
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 78
    .line 79
    :cond_2
    return-void

    .line 80
    :cond_3
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 81
    .line 82
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method
