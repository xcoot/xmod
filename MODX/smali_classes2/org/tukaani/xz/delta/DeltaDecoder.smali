.class public final Lorg/tukaani/xz/delta/DeltaDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final distance:I

.field public final history:[B

.field public pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    iput-object v1, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->history:[B

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    if-gt p1, v0, :cond_0

    .line 17
    .line 18
    iput p1, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->distance:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method
