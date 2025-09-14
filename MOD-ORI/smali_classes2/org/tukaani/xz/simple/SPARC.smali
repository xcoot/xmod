.class public final Lorg/tukaani/xz/simple/SPARC;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field public pos:I


# virtual methods
.method public final code(II[B)I
    .locals 7

    .line 1
    add-int/2addr p2, p1

    .line 2
    add-int/lit8 p2, p2, -0x4

    .line 3
    .line 4
    move v0, p1

    .line 5
    :goto_0
    if-gt v0, p2, :cond_3

    .line 6
    .line 7
    aget-byte v1, p3, v0

    .line 8
    .line 9
    const/16 v2, 0x40

    .line 10
    .line 11
    const/16 v3, 0xc0

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    aget-byte v2, p3, v2

    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    :cond_0
    const/16 v2, 0x7f

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    add-int/lit8 v2, v0, 0x1

    .line 27
    .line 28
    aget-byte v2, p3, v2

    .line 29
    .line 30
    and-int/2addr v2, v3

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    :cond_1
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    shl-int/lit8 v1, v1, 0x18

    .line 36
    .line 37
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    aget-byte v3, p3, v2

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    shl-int/lit8 v3, v3, 0x10

    .line 44
    .line 45
    or-int/2addr v1, v3

    .line 46
    add-int/lit8 v3, v0, 0x2

    .line 47
    .line 48
    aget-byte v4, p3, v3

    .line 49
    .line 50
    and-int/lit16 v4, v4, 0xff

    .line 51
    .line 52
    shl-int/lit8 v4, v4, 0x8

    .line 53
    .line 54
    or-int/2addr v1, v4

    .line 55
    add-int/lit8 v4, v0, 0x3

    .line 56
    .line 57
    aget-byte v5, p3, v4

    .line 58
    .line 59
    and-int/lit16 v5, v5, 0xff

    .line 60
    .line 61
    or-int/2addr v1, v5

    .line 62
    shl-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    iget v5, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 65
    .line 66
    add-int/2addr v5, v0

    .line 67
    sub-int/2addr v5, p1

    .line 68
    sub-int/2addr v1, v5

    .line 69
    ushr-int/lit8 v5, v1, 0x2

    .line 70
    .line 71
    ushr-int/lit8 v1, v1, 0x18

    .line 72
    .line 73
    and-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    rsub-int/lit8 v1, v1, 0x0

    .line 76
    .line 77
    shl-int/lit8 v1, v1, 0x16

    .line 78
    .line 79
    const v6, 0x3fffffff    # 1.9999999f

    .line 80
    .line 81
    .line 82
    and-int/2addr v1, v6

    .line 83
    const v6, 0x3fffff

    .line 84
    .line 85
    .line 86
    and-int/2addr v5, v6

    .line 87
    or-int/2addr v1, v5

    .line 88
    const/high16 v5, 0x40000000    # 2.0f

    .line 89
    .line 90
    or-int/2addr v1, v5

    .line 91
    ushr-int/lit8 v5, v1, 0x18

    .line 92
    .line 93
    int-to-byte v5, v5

    .line 94
    aput-byte v5, p3, v0

    .line 95
    .line 96
    ushr-int/lit8 v5, v1, 0x10

    .line 97
    .line 98
    int-to-byte v5, v5

    .line 99
    aput-byte v5, p3, v2

    .line 100
    .line 101
    ushr-int/lit8 v2, v1, 0x8

    .line 102
    .line 103
    int-to-byte v2, v2

    .line 104
    aput-byte v2, p3, v3

    .line 105
    .line 106
    int-to-byte v1, v1

    .line 107
    aput-byte v1, p3, v4

    .line 108
    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    sub-int/2addr v0, p1

    .line 113
    iget p1, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 114
    .line 115
    add-int/2addr p1, v0

    .line 116
    iput p1, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 117
    .line 118
    return v0
.end method
