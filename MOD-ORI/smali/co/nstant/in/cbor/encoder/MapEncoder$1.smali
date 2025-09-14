.class public final Lco/nstant/in/cbor/encoder/MapEncoder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    check-cast p2, [B

    .line 4
    .line 5
    array-length p0, p1

    .line 6
    array-length v0, p2

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    array-length p0, p1

    .line 12
    array-length v0, p2

    .line 13
    const/4 v2, 0x1

    .line 14
    if-le p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    move v1, v2

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    move v0, p0

    .line 20
    :goto_1
    array-length v3, p1

    .line 21
    if-ge v0, v3, :cond_4

    .line 22
    .line 23
    aget-byte v3, p1, v0

    .line 24
    .line 25
    aget-byte v4, p2, v0

    .line 26
    .line 27
    if-ge v3, v4, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    if-le v3, v4, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    move v1, p0

    .line 37
    :goto_2
    return v1
.end method
