.class public Lorg/tukaani/xz/CorruptedInputException;
.super Lorg/tukaani/xz/XZIOException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Compressed data is corrupt"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
