.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field public static final BRANCH_TABLE:[I


# instance fields
.field public pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final code(II[B)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    add-int v1, p1, p2

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    move/from16 v3, p1

    .line 9
    .line 10
    :goto_0
    if-gt v3, v1, :cond_6

    .line 11
    .line 12
    aget-byte v4, p3, v3

    .line 13
    .line 14
    and-int/lit8 v4, v4, 0x1f

    .line 15
    .line 16
    sget-object v5, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    .line 17
    .line 18
    aget v4, v5, v4

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_1
    const/4 v8, 0x3

    .line 23
    if-ge v7, v8, :cond_5

    .line 24
    .line 25
    ushr-int v8, v4, v7

    .line 26
    .line 27
    const/4 v9, 0x1

    .line 28
    and-int/2addr v8, v9

    .line 29
    if-nez v8, :cond_0

    .line 30
    .line 31
    move v11, v2

    .line 32
    move/from16 v16, v3

    .line 33
    .line 34
    move/from16 v19, v6

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    ushr-int/lit8 v8, v6, 0x3

    .line 39
    .line 40
    and-int/lit8 v10, v6, 0x7

    .line 41
    .line 42
    const-wide/16 v11, 0x0

    .line 43
    .line 44
    move-wide v14, v11

    .line 45
    const/4 v13, 0x0

    .line 46
    :goto_2
    const/4 v5, 0x6

    .line 47
    if-ge v13, v5, :cond_1

    .line 48
    .line 49
    add-int v5, v3, v8

    .line 50
    .line 51
    add-int/2addr v5, v13

    .line 52
    aget-byte v5, p3, v5

    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    int-to-long v2, v5

    .line 57
    const-wide/16 v17, 0xff

    .line 58
    .line 59
    and-long v2, v2, v17

    .line 60
    .line 61
    mul-int/lit8 v5, v13, 0x8

    .line 62
    .line 63
    shl-long/2addr v2, v5

    .line 64
    or-long/2addr v14, v2

    .line 65
    add-int/lit8 v13, v13, 0x1

    .line 66
    .line 67
    move/from16 v3, v16

    .line 68
    .line 69
    const/16 v2, 0x10

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move/from16 v16, v3

    .line 73
    .line 74
    ushr-long v2, v14, v10

    .line 75
    .line 76
    const/16 v13, 0x25

    .line 77
    .line 78
    ushr-long v17, v2, v13

    .line 79
    .line 80
    const-wide/16 v19, 0xf

    .line 81
    .line 82
    and-long v17, v17, v19

    .line 83
    .line 84
    const-wide/16 v19, 0x5

    .line 85
    .line 86
    cmp-long v13, v17, v19

    .line 87
    .line 88
    if-nez v13, :cond_2

    .line 89
    .line 90
    const/16 v13, 0x9

    .line 91
    .line 92
    ushr-long v17, v2, v13

    .line 93
    .line 94
    const-wide/16 v19, 0x7

    .line 95
    .line 96
    and-long v17, v17, v19

    .line 97
    .line 98
    cmp-long v11, v17, v11

    .line 99
    .line 100
    if-eqz v11, :cond_3

    .line 101
    .line 102
    :cond_2
    move/from16 v19, v6

    .line 103
    .line 104
    const/16 v11, 0x10

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_3
    const/16 v11, 0xd

    .line 108
    .line 109
    ushr-long v12, v2, v11

    .line 110
    .line 111
    const-wide/32 v17, 0xfffff

    .line 112
    .line 113
    .line 114
    and-long v12, v12, v17

    .line 115
    .line 116
    long-to-int v12, v12

    .line 117
    const/16 v13, 0x24

    .line 118
    .line 119
    move/from16 v19, v6

    .line 120
    .line 121
    ushr-long v5, v2, v13

    .line 122
    .line 123
    long-to-int v5, v5

    .line 124
    and-int/2addr v5, v9

    .line 125
    shl-int/lit8 v5, v5, 0x14

    .line 126
    .line 127
    or-int/2addr v5, v12

    .line 128
    shl-int/lit8 v5, v5, 0x4

    .line 129
    .line 130
    iget v6, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 131
    .line 132
    add-int v6, v6, v16

    .line 133
    .line 134
    sub-int v6, v6, p1

    .line 135
    .line 136
    sub-int/2addr v5, v6

    .line 137
    ushr-int/lit8 v5, v5, 0x4

    .line 138
    .line 139
    const-wide v12, -0x11ffffe001L

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    and-long/2addr v2, v12

    .line 145
    int-to-long v5, v5

    .line 146
    and-long v12, v5, v17

    .line 147
    .line 148
    shl-long v11, v12, v11

    .line 149
    .line 150
    or-long/2addr v2, v11

    .line 151
    const-wide/32 v11, 0x100000

    .line 152
    .line 153
    .line 154
    and-long/2addr v5, v11

    .line 155
    const/16 v11, 0x10

    .line 156
    .line 157
    shl-long/2addr v5, v11

    .line 158
    or-long/2addr v2, v5

    .line 159
    shl-int v5, v9, v10

    .line 160
    .line 161
    sub-int/2addr v5, v9

    .line 162
    int-to-long v5, v5

    .line 163
    and-long/2addr v5, v14

    .line 164
    shl-long/2addr v2, v10

    .line 165
    or-long/2addr v2, v5

    .line 166
    const/4 v5, 0x6

    .line 167
    const/4 v6, 0x0

    .line 168
    :goto_3
    if-ge v6, v5, :cond_4

    .line 169
    .line 170
    add-int v9, v16, v8

    .line 171
    .line 172
    add-int/2addr v9, v6

    .line 173
    mul-int/lit8 v10, v6, 0x8

    .line 174
    .line 175
    ushr-long v12, v2, v10

    .line 176
    .line 177
    long-to-int v10, v12

    .line 178
    int-to-byte v10, v10

    .line 179
    aput-byte v10, p3, v9

    .line 180
    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 185
    .line 186
    add-int/lit8 v6, v19, 0x29

    .line 187
    .line 188
    move v2, v11

    .line 189
    move/from16 v3, v16

    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_5
    move v11, v2

    .line 194
    move/from16 v16, v3

    .line 195
    .line 196
    add-int/lit8 v3, v16, 0x10

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_6
    move/from16 v16, v3

    .line 201
    .line 202
    sub-int v3, v16, p1

    .line 203
    .line 204
    iget v1, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 205
    .line 206
    add-int/2addr v1, v3

    .line 207
    iput v1, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 208
    .line 209
    return v3
.end method
