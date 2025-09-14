.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final memory:[B

.field public wHead:I

.field public wrappedAround:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x10000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 9
    .line 10
    return-void
.end method
