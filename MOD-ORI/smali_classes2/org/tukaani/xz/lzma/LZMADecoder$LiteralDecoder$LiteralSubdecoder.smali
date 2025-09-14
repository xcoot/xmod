.class public final Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final probs:[S

.field public final synthetic this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 5
    .line 6
    const/16 p1, 0x300

    .line 7
    .line 8
    new-array p1, p1, [S

    .line 9
    .line 10
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    .line 11
    .line 12
    return-void
.end method
