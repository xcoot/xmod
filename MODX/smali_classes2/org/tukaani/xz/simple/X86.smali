.class public final Lorg/tukaani/xz/simple/X86;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field public static final MASK_TO_ALLOWED_STATUS:[Z

.field public static final MASK_TO_BIT_NUMBER:[I


# instance fields
.field public pos:I

.field public prevMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Z

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public final code(II[B)I
    .locals 11

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    add-int/lit8 p2, p2, -0x5

    .line 5
    .line 6
    move v1, p1

    .line 7
    :goto_0
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-gt v1, p2, :cond_9

    .line 10
    .line 11
    aget-byte v4, p3, v1

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xfe

    .line 14
    .line 15
    const/16 v5, 0xe8

    .line 16
    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    sub-int v0, v1, v0

    .line 22
    .line 23
    and-int/lit8 v4, v0, -0x4

    .line 24
    .line 25
    sget-object v5, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    .line 26
    .line 27
    const/16 v6, 0xff

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    shl-int v0, v3, v0

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0x7

    .line 41
    .line 42
    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-object v3, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    .line 47
    .line 48
    aget-boolean v3, v3, v0

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x4

    .line 53
    .line 54
    aget v4, v5, v0

    .line 55
    .line 56
    sub-int/2addr v3, v4

    .line 57
    aget-byte v3, p3, v3

    .line 58
    .line 59
    and-int/2addr v3, v6

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    if-ne v3, v6, :cond_3

    .line 63
    .line 64
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    or-int/2addr v0, v2

    .line 67
    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    add-int/lit8 v4, v1, 0x4

    .line 71
    .line 72
    aget-byte v0, p3, v4

    .line 73
    .line 74
    and-int/lit16 v3, v0, 0xff

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    if-ne v3, v6, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    iget v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 82
    .line 83
    shl-int/2addr v0, v2

    .line 84
    or-int/2addr v0, v2

    .line 85
    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 86
    .line 87
    :goto_2
    move v0, v1

    .line 88
    goto :goto_6

    .line 89
    :cond_5
    :goto_3
    add-int/lit8 v7, v1, 0x1

    .line 90
    .line 91
    aget-byte v3, p3, v7

    .line 92
    .line 93
    and-int/2addr v3, v6

    .line 94
    add-int/lit8 v8, v1, 0x2

    .line 95
    .line 96
    aget-byte v9, p3, v8

    .line 97
    .line 98
    and-int/2addr v9, v6

    .line 99
    shl-int/lit8 v9, v9, 0x8

    .line 100
    .line 101
    or-int/2addr v3, v9

    .line 102
    add-int/lit8 v9, v1, 0x3

    .line 103
    .line 104
    aget-byte v10, p3, v9

    .line 105
    .line 106
    and-int/2addr v10, v6

    .line 107
    shl-int/lit8 v10, v10, 0x10

    .line 108
    .line 109
    or-int/2addr v3, v10

    .line 110
    and-int/lit16 v0, v0, 0xff

    .line 111
    .line 112
    shl-int/lit8 v0, v0, 0x18

    .line 113
    .line 114
    or-int/2addr v0, v3

    .line 115
    :goto_4
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 116
    .line 117
    add-int/2addr v3, v1

    .line 118
    sub-int/2addr v3, p1

    .line 119
    sub-int/2addr v0, v3

    .line 120
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 121
    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    aget v3, v5, v3

    .line 126
    .line 127
    mul-int/lit8 v3, v3, 0x8

    .line 128
    .line 129
    rsub-int/lit8 v10, v3, 0x18

    .line 130
    .line 131
    ushr-int v10, v0, v10

    .line 132
    .line 133
    int-to-byte v10, v10

    .line 134
    and-int/2addr v10, v6

    .line 135
    if-eqz v10, :cond_8

    .line 136
    .line 137
    if-ne v10, v6, :cond_7

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_7
    :goto_5
    int-to-byte v3, v0

    .line 141
    aput-byte v3, p3, v7

    .line 142
    .line 143
    ushr-int/lit8 v3, v0, 0x8

    .line 144
    .line 145
    int-to-byte v3, v3

    .line 146
    aput-byte v3, p3, v8

    .line 147
    .line 148
    ushr-int/lit8 v3, v0, 0x10

    .line 149
    .line 150
    int-to-byte v3, v3

    .line 151
    aput-byte v3, p3, v9

    .line 152
    .line 153
    ushr-int/lit8 v0, v0, 0x18

    .line 154
    .line 155
    and-int/2addr v0, v2

    .line 156
    sub-int/2addr v0, v2

    .line 157
    not-int v0, v0

    .line 158
    int-to-byte v0, v0

    .line 159
    aput-byte v0, p3, v4

    .line 160
    .line 161
    move v0, v1

    .line 162
    move v1, v4

    .line 163
    :goto_6
    add-int/2addr v1, v2

    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_8
    :goto_7
    rsub-int/lit8 v3, v3, 0x20

    .line 167
    .line 168
    shl-int v3, v2, v3

    .line 169
    .line 170
    sub-int/2addr v3, v2

    .line 171
    xor-int/2addr v0, v3

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    sub-int p2, v1, v0

    .line 174
    .line 175
    and-int/lit8 p3, p2, -0x4

    .line 176
    .line 177
    if-eqz p3, :cond_a

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_a
    iget p3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 181
    .line 182
    sub-int/2addr p2, v2

    .line 183
    shl-int v3, p3, p2

    .line 184
    .line 185
    :goto_8
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 186
    .line 187
    sub-int/2addr v1, p1

    .line 188
    iget p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 189
    .line 190
    add-int/2addr p1, v1

    .line 191
    iput p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 192
    .line 193
    return v1
.end method
