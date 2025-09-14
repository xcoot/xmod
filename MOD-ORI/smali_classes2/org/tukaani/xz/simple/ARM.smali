.class public final Lorg/tukaani/xz/simple/ARM;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field public pos:I


# virtual methods
.method public final code(II[B)I
    .locals 6

    .line 1
    add-int/2addr p2, p1

    .line 2
    add-int/lit8 p2, p2, -0x4

    .line 3
    .line 4
    move v0, p1

    .line 5
    :goto_0
    if-gt v0, p2, :cond_1

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x3

    .line 8
    .line 9
    aget-byte v1, p3, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    const/16 v2, 0xeb

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v0, 0x2

    .line 18
    .line 19
    aget-byte v2, p3, v1

    .line 20
    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    shl-int/lit8 v2, v2, 0x10

    .line 24
    .line 25
    add-int/lit8 v3, v0, 0x1

    .line 26
    .line 27
    aget-byte v4, p3, v3

    .line 28
    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 30
    .line 31
    shl-int/lit8 v4, v4, 0x8

    .line 32
    .line 33
    or-int/2addr v2, v4

    .line 34
    aget-byte v4, p3, v0

    .line 35
    .line 36
    and-int/lit16 v4, v4, 0xff

    .line 37
    .line 38
    or-int/2addr v2, v4

    .line 39
    shl-int/lit8 v2, v2, 0x2

    .line 40
    .line 41
    iget v4, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 42
    .line 43
    add-int/2addr v4, v0

    .line 44
    sub-int/2addr v4, p1

    .line 45
    sub-int/2addr v2, v4

    .line 46
    ushr-int/lit8 v4, v2, 0x2

    .line 47
    .line 48
    ushr-int/lit8 v5, v2, 0x12

    .line 49
    .line 50
    int-to-byte v5, v5

    .line 51
    aput-byte v5, p3, v1

    .line 52
    .line 53
    ushr-int/lit8 v1, v2, 0xa

    .line 54
    .line 55
    int-to-byte v1, v1

    .line 56
    aput-byte v1, p3, v3

    .line 57
    .line 58
    int-to-byte v1, v4

    .line 59
    aput-byte v1, p3, v0

    .line 60
    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sub-int/2addr v0, p1

    .line 65
    iget p1, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 66
    .line 67
    add-int/2addr p1, v0

    .line 68
    iput p1, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 69
    .line 70
    return v0
.end method
