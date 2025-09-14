.class public final Lorg/tukaani/xz/ARMOptions;
.super Lorg/tukaani/xz/BCJOptions;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance p0, Lorg/tukaani/xz/SimpleInputStream;

    .line 2
    .line 3
    new-instance p2, Lorg/tukaani/xz/simple/ARM;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    iput v0, p2, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
