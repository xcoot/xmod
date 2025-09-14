.class public final Lorg/tukaani/xz/simple/PowerPC;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field public pos:I


# virtual methods
.method public final code(II[B)I
    .locals 8

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
    aget-byte v1, p3, v0

    .line 8
    .line 9
    and-int/lit16 v2, v1, 0xfc

    .line 10
    .line 11
    const/16 v3, 0x48

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x3

    .line 16
    .line 17
    aget-byte v4, p3, v2

    .line 18
    .line 19
    and-int/lit8 v5, v4, 0x3

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x3

    .line 25
    .line 26
    shl-int/lit8 v1, v1, 0x18

    .line 27
    .line 28
    add-int/lit8 v5, v0, 0x1

    .line 29
    .line 30
    aget-byte v6, p3, v5

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    shl-int/lit8 v6, v6, 0x10

    .line 35
    .line 36
    or-int/2addr v1, v6

    .line 37
    add-int/lit8 v6, v0, 0x2

    .line 38
    .line 39
    aget-byte v7, p3, v6

    .line 40
    .line 41
    and-int/lit16 v7, v7, 0xff

    .line 42
    .line 43
    shl-int/lit8 v7, v7, 0x8

    .line 44
    .line 45
    or-int/2addr v1, v7

    .line 46
    and-int/lit16 v4, v4, 0xfc

    .line 47
    .line 48
    or-int/2addr v1, v4

    .line 49
    iget v4, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 50
    .line 51
    add-int/2addr v4, v0

    .line 52
    sub-int/2addr v4, p1

    .line 53
    sub-int/2addr v1, v4

    .line 54
    ushr-int/lit8 v4, v1, 0x18

    .line 55
    .line 56
    and-int/lit8 v4, v4, 0x3

    .line 57
    .line 58
    or-int/2addr v3, v4

    .line 59
    int-to-byte v3, v3

    .line 60
    aput-byte v3, p3, v0

    .line 61
    .line 62
    ushr-int/lit8 v3, v1, 0x10

    .line 63
    .line 64
    int-to-byte v3, v3

    .line 65
    aput-byte v3, p3, v5

    .line 66
    .line 67
    ushr-int/lit8 v3, v1, 0x8

    .line 68
    .line 69
    int-to-byte v3, v3

    .line 70
    aput-byte v3, p3, v6

    .line 71
    .line 72
    aget-byte v3, p3, v2

    .line 73
    .line 74
    and-int/lit8 v3, v3, 0x3

    .line 75
    .line 76
    or-int/2addr v1, v3

    .line 77
    int-to-byte v1, v1

    .line 78
    aput-byte v1, p3, v2

    .line 79
    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sub-int/2addr v0, p1

    .line 84
    iget p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 85
    .line 86
    add-int/2addr p1, v0

    .line 87
    iput p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 88
    .line 89
    return v0
.end method
