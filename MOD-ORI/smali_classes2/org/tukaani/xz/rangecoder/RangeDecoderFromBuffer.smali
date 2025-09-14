.class public final Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeDecoder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final buf:[B

.field public pos:I


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    const p1, 0xfffb

    .line 5
    .line 6
    .line 7
    new-array v0, p1, [B

    .line 8
    .line 9
    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    .line 10
    .line 11
    iput p1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final normalize()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x8

    .line 11
    .line 12
    iget-object v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    .line 13
    .line 14
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    .line 15
    .line 16
    add-int/lit8 v4, v3, 0x1

    .line 17
    .line 18
    iput v4, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    .line 19
    .line 20
    aget-byte v2, v2, v3

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    or-int/2addr v1, v2

    .line 25
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 26
    .line 27
    shl-int/lit8 v0, v0, 0x8

    .line 28
    .line 29
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_0
    :goto_0
    return-void
.end method
