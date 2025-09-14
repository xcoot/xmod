.class public final Lorg/tukaani/xz/simple/ARMThumb;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field public pos:I


# virtual methods
.method public final code(II[B)I
    .locals 9

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
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    aget-byte v2, p3, v1

    .line 10
    .line 11
    and-int/lit16 v3, v2, 0xf8

    .line 12
    .line 13
    const/16 v4, 0xf0

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    add-int/lit8 v3, v0, 0x3

    .line 18
    .line 19
    aget-byte v5, p3, v3

    .line 20
    .line 21
    and-int/lit16 v6, v5, 0xf8

    .line 22
    .line 23
    const/16 v7, 0xf8

    .line 24
    .line 25
    if-ne v6, v7, :cond_0

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x7

    .line 28
    .line 29
    shl-int/lit8 v2, v2, 0x13

    .line 30
    .line 31
    aget-byte v6, p3, v0

    .line 32
    .line 33
    and-int/lit16 v6, v6, 0xff

    .line 34
    .line 35
    shl-int/lit8 v6, v6, 0xb

    .line 36
    .line 37
    or-int/2addr v2, v6

    .line 38
    and-int/lit8 v5, v5, 0x7

    .line 39
    .line 40
    shl-int/lit8 v5, v5, 0x8

    .line 41
    .line 42
    or-int/2addr v2, v5

    .line 43
    add-int/lit8 v5, v0, 0x2

    .line 44
    .line 45
    aget-byte v6, p3, v5

    .line 46
    .line 47
    and-int/lit16 v6, v6, 0xff

    .line 48
    .line 49
    or-int/2addr v2, v6

    .line 50
    shl-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    iget v6, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    .line 53
    .line 54
    add-int/2addr v6, v0

    .line 55
    sub-int/2addr v6, p1

    .line 56
    sub-int/2addr v2, v6

    .line 57
    ushr-int/lit8 v6, v2, 0x1

    .line 58
    .line 59
    ushr-int/lit8 v8, v2, 0x14

    .line 60
    .line 61
    and-int/lit8 v8, v8, 0x7

    .line 62
    .line 63
    or-int/2addr v4, v8

    .line 64
    int-to-byte v4, v4

    .line 65
    aput-byte v4, p3, v1

    .line 66
    .line 67
    ushr-int/lit8 v1, v2, 0xc

    .line 68
    .line 69
    int-to-byte v1, v1

    .line 70
    aput-byte v1, p3, v0

    .line 71
    .line 72
    ushr-int/lit8 v0, v2, 0x9

    .line 73
    .line 74
    and-int/lit8 v0, v0, 0x7

    .line 75
    .line 76
    or-int/2addr v0, v7

    .line 77
    int-to-byte v0, v0

    .line 78
    aput-byte v0, p3, v3

    .line 79
    .line 80
    int-to-byte v0, v6

    .line 81
    aput-byte v0, p3, v5

    .line 82
    .line 83
    move v0, v5

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    sub-int/2addr v0, p1

    .line 88
    iget p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    iput p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    .line 92
    .line 93
    return v0
.end method
