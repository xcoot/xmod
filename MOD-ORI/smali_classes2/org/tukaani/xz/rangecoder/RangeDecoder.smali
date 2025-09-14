.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public code:I

.field public range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 6
    .line 7
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 8
    .line 9
    return-void
.end method

.method public static final initProbs([S)V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([SS)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final decodeBit([SI)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 2
    .line 3
    .line 4
    aget-short v0, p1, p2

    .line 5
    .line 6
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 7
    .line 8
    ushr-int/lit8 v2, v1, 0xb

    .line 9
    .line 10
    mul-int/2addr v2, v0

    .line 11
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    xor-int v5, v3, v4

    .line 16
    .line 17
    xor-int/2addr v4, v2

    .line 18
    if-ge v5, v4, :cond_0

    .line 19
    .line 20
    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 21
    .line 22
    rsub-int p0, v0, 0x800

    .line 23
    .line 24
    ushr-int/lit8 p0, p0, 0x5

    .line 25
    .line 26
    add-int/2addr v0, p0

    .line 27
    int-to-short p0, v0

    .line 28
    aput-short p0, p1, p2

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 34
    .line 35
    sub-int/2addr v3, v2

    .line 36
    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 37
    .line 38
    ushr-int/lit8 p0, v0, 0x5

    .line 39
    .line 40
    sub-int/2addr v0, p0

    .line 41
    int-to-short p0, v0

    .line 42
    aput-short p0, p1, p2

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    :goto_0
    return p0
.end method

.method public final decodeBitTree([S)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    or-int/2addr v0, v1

    .line 9
    array-length v1, p1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    array-length p0, p1

    .line 13
    sub-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public abstract normalize()V
.end method
