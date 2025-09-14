.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bits:I

.field public leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

.field public literal:I

.field public rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    .line 6
    .line 7
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->bits:I

    .line 8
    .line 9
    return-void
.end method
