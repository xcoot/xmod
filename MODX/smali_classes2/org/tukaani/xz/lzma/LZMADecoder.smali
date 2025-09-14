.class public final Lorg/tukaani/xz/lzma/LZMADecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final distAlign:[S

.field public final distSlots:[[S

.field public final distSpecial:[[S

.field public final isMatch:[[S

.field public final isRep:[S

.field public final isRep0:[S

.field public final isRep0Long:[[S

.field public final isRep1:[S

.field public final isRep2:[S

.field public final literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

.field public final lz:Lorg/tukaani/xz/lz/LZDecoder;

.field public final matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

.field public final posMask:I

.field public final rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

.field public final repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

.field public final reps:[I

.field public final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    .line 10
    .line 11
    new-instance v2, Lorg/tukaani/xz/lzma/State;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const/16 v5, 0x10

    .line 23
    .line 24
    aput v5, v3, v4

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0xc

    .line 28
    .line 29
    aput v7, v3, v6

    .line 30
    .line 31
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, [[S

    .line 38
    .line 39
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isMatch:[[S

    .line 40
    .line 41
    new-array v3, v7, [S

    .line 42
    .line 43
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep:[S

    .line 44
    .line 45
    new-array v3, v7, [S

    .line 46
    .line 47
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0:[S

    .line 48
    .line 49
    new-array v3, v7, [S

    .line 50
    .line 51
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep1:[S

    .line 52
    .line 53
    new-array v3, v7, [S

    .line 54
    .line 55
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep2:[S

    .line 56
    .line 57
    new-array v3, v2, [I

    .line 58
    .line 59
    aput v5, v3, v4

    .line 60
    .line 61
    aput v7, v3, v6

    .line 62
    .line 63
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, [[S

    .line 68
    .line 69
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0Long:[[S

    .line 70
    .line 71
    new-array v3, v2, [I

    .line 72
    .line 73
    const/16 v7, 0x40

    .line 74
    .line 75
    aput v7, v3, v4

    .line 76
    .line 77
    aput v1, v3, v6

    .line 78
    .line 79
    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, [[S

    .line 84
    .line 85
    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSlots:[[S

    .line 86
    .line 87
    new-array v6, v2, [S

    .line 88
    .line 89
    new-array v7, v2, [S

    .line 90
    .line 91
    new-array v8, v1, [S

    .line 92
    .line 93
    new-array v9, v1, [S

    .line 94
    .line 95
    const/16 v1, 0x8

    .line 96
    .line 97
    new-array v10, v1, [S

    .line 98
    .line 99
    new-array v11, v1, [S

    .line 100
    .line 101
    new-array v12, v5, [S

    .line 102
    .line 103
    new-array v13, v5, [S

    .line 104
    .line 105
    const/16 v1, 0x20

    .line 106
    .line 107
    new-array v14, v1, [S

    .line 108
    .line 109
    new-array v15, v1, [S

    .line 110
    .line 111
    filled-new-array/range {v6 .. v15}, [[S

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSpecial:[[S

    .line 116
    .line 117
    new-array v1, v5, [S

    .line 118
    .line 119
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->distAlign:[S

    .line 120
    .line 121
    shl-int v1, v4, p5

    .line 122
    .line 123
    sub-int/2addr v1, v4

    .line 124
    iput v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->posMask:I

    .line 125
    .line 126
    new-instance v1, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 132
    .line 133
    new-instance v1, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 139
    .line 140
    move-object/from16 v1, p1

    .line 141
    .line 142
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 143
    .line 144
    move-object/from16 v1, p2

    .line 145
    .line 146
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 147
    .line 148
    new-instance v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 149
    .line 150
    move/from16 v2, p3

    .line 151
    .line 152
    move/from16 v3, p4

    .line 153
    .line 154
    invoke-direct {v1, v0, v2, v3}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V

    .line 155
    .line 156
    .line 157
    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    .line 160
    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public final decode()V
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 2
    .line 3
    iget v1, v0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget v2, v0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget v1, v0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 13
    .line 14
    iget v2, v0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 15
    .line 16
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 17
    .line 18
    if-ge v1, v2, :cond_18

    .line 19
    .line 20
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->posMask:I

    .line 21
    .line 22
    and-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 24
    .line 25
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 26
    .line 27
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isMatch:[[S

    .line 28
    .line 29
    aget-object v4, v5, v4

    .line 30
    .line 31
    invoke-virtual {v3, v4, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    const/16 v8, 0x9

    .line 39
    .line 40
    const/4 v9, 0x7

    .line 41
    if-nez v4, :cond_9

    .line 42
    .line 43
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 44
    .line 45
    iget-object v2, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 46
    .line 47
    iget-object v2, v2, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 48
    .line 49
    iget v3, v2, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 50
    .line 51
    add-int/lit8 v4, v3, -0x1

    .line 52
    .line 53
    if-gtz v3, :cond_1

    .line 54
    .line 55
    iget v10, v2, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 56
    .line 57
    add-int/2addr v4, v10

    .line 58
    :cond_1
    iget-object v2, v2, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 59
    .line 60
    aget-byte v2, v2, v4

    .line 61
    .line 62
    and-int/lit16 v2, v2, 0xff

    .line 63
    .line 64
    iget v4, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->lc:I

    .line 65
    .line 66
    rsub-int/lit8 v10, v4, 0x8

    .line 67
    .line 68
    shr-int/2addr v2, v10

    .line 69
    iget v10, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->literalPosMask:I

    .line 70
    .line 71
    and-int/2addr v3, v10

    .line 72
    shl-int/2addr v3, v4

    .line 73
    add-int/2addr v2, v3

    .line 74
    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 75
    .line 76
    aget-object v1, v1, v2

    .line 77
    .line 78
    iget-object v2, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 79
    .line 80
    iget-object v4, v2, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 81
    .line 82
    iget-object v2, v4, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 83
    .line 84
    iget v2, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 85
    .line 86
    iget-object v10, v4, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 87
    .line 88
    iget-object v11, v4, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 89
    .line 90
    iget-object v12, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    .line 91
    .line 92
    const/16 v13, 0x100

    .line 93
    .line 94
    if-ge v2, v9, :cond_3

    .line 95
    .line 96
    :cond_2
    shl-int/lit8 v1, v7, 0x1

    .line 97
    .line 98
    invoke-virtual {v11, v12, v7}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    or-int v7, v1, v2

    .line 103
    .line 104
    if-lt v7, v13, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object v1, v4, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    .line 108
    .line 109
    aget v1, v1, v6

    .line 110
    .line 111
    iget v2, v10, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 112
    .line 113
    sub-int v3, v2, v1

    .line 114
    .line 115
    sub-int/2addr v3, v7

    .line 116
    if-lt v1, v2, :cond_4

    .line 117
    .line 118
    iget v1, v10, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 119
    .line 120
    add-int/2addr v3, v1

    .line 121
    :cond_4
    iget-object v1, v10, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 122
    .line 123
    aget-byte v1, v1, v3

    .line 124
    .line 125
    and-int/lit16 v1, v1, 0xff

    .line 126
    .line 127
    move v3, v7

    .line 128
    move v2, v13

    .line 129
    :cond_5
    shl-int/2addr v1, v7

    .line 130
    and-int v9, v1, v2

    .line 131
    .line 132
    add-int v14, v2, v9

    .line 133
    .line 134
    add-int/2addr v14, v3

    .line 135
    invoke-virtual {v11, v12, v14}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    shl-int/2addr v3, v7

    .line 140
    or-int/2addr v3, v14

    .line 141
    rsub-int/lit8 v14, v14, 0x0

    .line 142
    .line 143
    not-int v9, v9

    .line 144
    xor-int/2addr v9, v14

    .line 145
    and-int/2addr v2, v9

    .line 146
    if-lt v3, v13, :cond_5

    .line 147
    .line 148
    move v7, v3

    .line 149
    :goto_1
    int-to-byte v1, v7

    .line 150
    iget v2, v10, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 151
    .line 152
    add-int/lit8 v3, v2, 0x1

    .line 153
    .line 154
    iput v3, v10, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 155
    .line 156
    iget-object v7, v10, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 157
    .line 158
    aput-byte v1, v7, v2

    .line 159
    .line 160
    iget v1, v10, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 161
    .line 162
    if-ge v1, v3, :cond_6

    .line 163
    .line 164
    iput v3, v10, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 165
    .line 166
    :cond_6
    iget-object v1, v4, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 167
    .line 168
    iget v2, v1, Lorg/tukaani/xz/lzma/State;->state:I

    .line 169
    .line 170
    if-gt v2, v5, :cond_7

    .line 171
    .line 172
    iput v6, v1, Lorg/tukaani/xz/lzma/State;->state:I

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    if-gt v2, v8, :cond_8

    .line 177
    .line 178
    add-int/lit8 v2, v2, -0x3

    .line 179
    .line 180
    iput v2, v1, Lorg/tukaani/xz/lzma/State;->state:I

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    add-int/lit8 v2, v2, -0x6

    .line 185
    .line 186
    iput v2, v1, Lorg/tukaani/xz/lzma/State;->state:I

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_9
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 191
    .line 192
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep:[S

    .line 193
    .line 194
    invoke-virtual {v3, v10, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    const/4 v10, 0x2

    .line 199
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    .line 200
    .line 201
    if-nez v4, :cond_11

    .line 202
    .line 203
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 204
    .line 205
    if-ge v4, v9, :cond_a

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    const/16 v9, 0xa

    .line 209
    .line 210
    :goto_2
    iput v9, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 211
    .line 212
    aget v2, v11, v10

    .line 213
    .line 214
    aput v2, v11, v5

    .line 215
    .line 216
    aget v2, v11, v7

    .line 217
    .line 218
    aput v2, v11, v10

    .line 219
    .line 220
    aget v2, v11, v6

    .line 221
    .line 222
    aput v2, v11, v7

    .line 223
    .line 224
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 225
    .line 226
    invoke-virtual {v2, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    const/4 v1, 0x6

    .line 231
    if-ge v4, v1, :cond_b

    .line 232
    .line 233
    add-int/lit8 v5, v4, -0x2

    .line 234
    .line 235
    :cond_b
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSlots:[[S

    .line 236
    .line 237
    aget-object v1, v1, v5

    .line 238
    .line 239
    invoke-virtual {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const/4 v2, 0x4

    .line 244
    if-ge v1, v2, :cond_c

    .line 245
    .line 246
    aput v1, v11, v6

    .line 247
    .line 248
    goto/16 :goto_9

    .line 249
    .line 250
    :cond_c
    shr-int/lit8 v2, v1, 0x1

    .line 251
    .line 252
    add-int/lit8 v5, v2, -0x1

    .line 253
    .line 254
    and-int/lit8 v8, v1, 0x1

    .line 255
    .line 256
    or-int/2addr v8, v10

    .line 257
    shl-int v12, v8, v5

    .line 258
    .line 259
    aput v12, v11, v6

    .line 260
    .line 261
    const/16 v5, 0xe

    .line 262
    .line 263
    if-ge v1, v5, :cond_e

    .line 264
    .line 265
    add-int/lit8 v1, v1, -0x4

    .line 266
    .line 267
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSpecial:[[S

    .line 268
    .line 269
    aget-object v1, v2, v1

    .line 270
    .line 271
    move v5, v6

    .line 272
    move v8, v5

    .line 273
    move v2, v7

    .line 274
    :goto_3
    invoke-virtual {v3, v1, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    shl-int/2addr v2, v7

    .line 279
    or-int/2addr v2, v9

    .line 280
    add-int/lit8 v10, v8, 0x1

    .line 281
    .line 282
    shl-int v8, v9, v8

    .line 283
    .line 284
    or-int/2addr v5, v8

    .line 285
    array-length v8, v1

    .line 286
    if-lt v2, v8, :cond_d

    .line 287
    .line 288
    or-int v1, v12, v5

    .line 289
    .line 290
    aput v1, v11, v6

    .line 291
    .line 292
    goto/16 :goto_9

    .line 293
    .line 294
    :cond_d
    move v8, v10

    .line 295
    goto :goto_3

    .line 296
    :cond_e
    add-int/lit8 v2, v2, -0x5

    .line 297
    .line 298
    move v1, v6

    .line 299
    :cond_f
    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 300
    .line 301
    .line 302
    iget v5, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 303
    .line 304
    ushr-int/2addr v5, v7

    .line 305
    iput v5, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 306
    .line 307
    iget v8, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 308
    .line 309
    sub-int v9, v8, v5

    .line 310
    .line 311
    ushr-int/lit8 v9, v9, 0x1f

    .line 312
    .line 313
    add-int/lit8 v10, v9, -0x1

    .line 314
    .line 315
    and-int/2addr v5, v10

    .line 316
    sub-int/2addr v8, v5

    .line 317
    iput v8, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 318
    .line 319
    shl-int/2addr v1, v7

    .line 320
    rsub-int/lit8 v5, v9, 0x1

    .line 321
    .line 322
    or-int/2addr v1, v5

    .line 323
    add-int/lit8 v2, v2, -0x1

    .line 324
    .line 325
    if-nez v2, :cond_f

    .line 326
    .line 327
    shl-int/lit8 v1, v1, 0x4

    .line 328
    .line 329
    or-int v5, v12, v1

    .line 330
    .line 331
    aput v5, v11, v6

    .line 332
    .line 333
    move v2, v6

    .line 334
    move v8, v2

    .line 335
    move v1, v7

    .line 336
    :goto_4
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distAlign:[S

    .line 337
    .line 338
    invoke-virtual {v3, v9, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    shl-int/2addr v1, v7

    .line 343
    or-int/2addr v1, v10

    .line 344
    add-int/lit8 v12, v8, 0x1

    .line 345
    .line 346
    shl-int v8, v10, v8

    .line 347
    .line 348
    or-int/2addr v2, v8

    .line 349
    array-length v8, v9

    .line 350
    if-lt v1, v8, :cond_10

    .line 351
    .line 352
    or-int v1, v5, v2

    .line 353
    .line 354
    aput v1, v11, v6

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_10
    move v8, v12

    .line 358
    goto :goto_4

    .line 359
    :cond_11
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 360
    .line 361
    iget-object v12, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0:[S

    .line 362
    .line 363
    invoke-virtual {v3, v12, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    const/16 v12, 0xb

    .line 368
    .line 369
    if-nez v4, :cond_13

    .line 370
    .line 371
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 372
    .line 373
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0Long:[[S

    .line 374
    .line 375
    aget-object v4, v5, v4

    .line 376
    .line 377
    invoke-virtual {v3, v4, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_16

    .line 382
    .line 383
    iget v1, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 384
    .line 385
    if-ge v1, v9, :cond_12

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_12
    move v8, v12

    .line 389
    :goto_5
    iput v8, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_13
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 393
    .line 394
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep1:[S

    .line 395
    .line 396
    invoke-virtual {v3, v8, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-nez v4, :cond_14

    .line 401
    .line 402
    aget v3, v11, v7

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_14
    iget v4, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 406
    .line 407
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep2:[S

    .line 408
    .line 409
    invoke-virtual {v3, v8, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_15

    .line 414
    .line 415
    aget v3, v11, v10

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_15
    aget v3, v11, v5

    .line 419
    .line 420
    aget v4, v11, v10

    .line 421
    .line 422
    aput v4, v11, v5

    .line 423
    .line 424
    :goto_6
    aget v4, v11, v7

    .line 425
    .line 426
    aput v4, v11, v10

    .line 427
    .line 428
    :goto_7
    aget v4, v11, v6

    .line 429
    .line 430
    aput v4, v11, v7

    .line 431
    .line 432
    aput v3, v11, v6

    .line 433
    .line 434
    :cond_16
    iget v3, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 435
    .line 436
    if-ge v3, v9, :cond_17

    .line 437
    .line 438
    const/16 v12, 0x8

    .line 439
    .line 440
    :cond_17
    iput v12, v2, Lorg/tukaani/xz/lzma/State;->state:I

    .line 441
    .line 442
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 443
    .line 444
    invoke-virtual {v2, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    :goto_8
    move v4, v7

    .line 449
    :goto_9
    aget v1, v11, v6

    .line 450
    .line 451
    invoke-virtual {v0, v1, v4}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_18
    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 457
    .line 458
    .line 459
    return-void
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v1, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aput v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    aput v1, v0, v2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 16
    .line 17
    iput v1, v0, Lorg/tukaani/xz/lzma/State;->state:I

    .line 18
    .line 19
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isMatch:[[S

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v0, v3, :cond_0

    .line 24
    .line 25
    aget-object v2, v2, v0

    .line 26
    .line 27
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep:[S

    .line 34
    .line 35
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0:[S

    .line 39
    .line 40
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep1:[S

    .line 44
    .line 45
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep2:[S

    .line 49
    .line 50
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 51
    .line 52
    .line 53
    move v0, v1

    .line 54
    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0Long:[[S

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    if-ge v0, v3, :cond_1

    .line 58
    .line 59
    aget-object v2, v2, v0

    .line 60
    .line 61
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v0, v1

    .line 68
    :goto_2
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSlots:[[S

    .line 69
    .line 70
    array-length v3, v2

    .line 71
    if-ge v0, v3, :cond_2

    .line 72
    .line 73
    aget-object v2, v2, v0

    .line 74
    .line 75
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move v0, v1

    .line 82
    :goto_3
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSpecial:[[S

    .line 83
    .line 84
    array-length v3, v2

    .line 85
    if-ge v0, v3, :cond_3

    .line 86
    .line 87
    aget-object v2, v2, v0

    .line 88
    .line 89
    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distAlign:[S

    .line 96
    .line 97
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 98
    .line 99
    .line 100
    :goto_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 101
    .line 102
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 103
    .line 104
    array-length v2, v0

    .line 105
    if-ge v1, v2, :cond_4

    .line 106
    .line 107
    aget-object v0, v0, v1

    .line 108
    .line 109
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    .line 110
    .line 111
    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->initProbs([S)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 118
    .line 119
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    .line 125
    .line 126
    .line 127
    return-void
.end method
