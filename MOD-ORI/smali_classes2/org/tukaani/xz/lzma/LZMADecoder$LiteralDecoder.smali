.class public final Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final lc:I

.field public final literalPosMask:I

.field public final subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

.field public final synthetic this$0:Lorg/tukaani/xz/lzma/LZMADecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 5
    .line 6
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->lc:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    shl-int v0, p1, p3

    .line 10
    .line 11
    sub-int/2addr v0, p1

    .line 12
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->literalPosMask:I

    .line 13
    .line 14
    add-int/2addr p2, p3

    .line 15
    shl-int/2addr p1, p2

    .line 16
    new-array p1, p1, [Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 22
    .line 23
    array-length p3, p2

    .line 24
    if-ge p1, p3, :cond_0

    .line 25
    .line 26
    new-instance p3, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 27
    .line 28
    invoke-direct {p3, p0}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V

    .line 29
    .line 30
    .line 31
    aput-object p3, p2, p1

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
