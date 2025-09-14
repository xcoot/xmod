.class public final Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

.field public endOfBlock:Z

.field public final lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

.field public runBuffer:[B

.field public runBufferLength:I

.field public runBufferPos:I

.field public final state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public final synthetic this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 8
    .line 9
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 10
    .line 11
    new-array v0, p1, [B

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 14
    .line 15
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 16
    .line 17
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 18
    .line 19
    invoke-static {p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 24
    .line 25
    invoke-static {p4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 2
    .line 3
    iget p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final hasData()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public final read([BII)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-boolean v4, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget v4, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 17
    .line 18
    iget v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    const/4 v5, 0x0

    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 29
    .line 30
    iget v7, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 31
    .line 32
    invoke-static {v6, v7, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 36
    .line 37
    add-int/2addr v6, v4

    .line 38
    iput v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v5

    .line 42
    :goto_0
    if-ge v4, v3, :cond_d

    .line 43
    .line 44
    iget-object v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 45
    .line 46
    iget-object v7, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 47
    .line 48
    iget-object v8, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 49
    .line 50
    invoke-static {v7, v8}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const v8, 0xffff

    .line 55
    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    const/16 v10, 0x100

    .line 59
    .line 60
    if-ge v7, v10, :cond_3

    .line 61
    .line 62
    add-int/lit8 v10, v4, 0x1

    .line 63
    .line 64
    add-int/2addr v4, v2

    .line 65
    iget-object v6, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 66
    .line 67
    int-to-byte v7, v7

    .line 68
    iget v11, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 69
    .line 70
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 71
    .line 72
    aput-byte v7, v12, v11

    .line 73
    .line 74
    add-int/lit8 v12, v11, 0x1

    .line 75
    .line 76
    and-int/2addr v8, v12

    .line 77
    iget-boolean v12, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 78
    .line 79
    if-nez v12, :cond_2

    .line 80
    .line 81
    if-ge v8, v11, :cond_2

    .line 82
    .line 83
    iput-boolean v9, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 84
    .line 85
    :cond_2
    iput v8, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 86
    .line 87
    aput-byte v7, v1, v4

    .line 88
    .line 89
    move v4, v10

    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_3
    if-le v7, v10, :cond_c

    .line 93
    .line 94
    sget-object v10, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->RUN_LENGTH_TABLE:[S

    .line 95
    .line 96
    add-int/lit16 v7, v7, -0x101

    .line 97
    .line 98
    aget-short v7, v10, v7

    .line 99
    .line 100
    ushr-int/lit8 v10, v7, 0x5

    .line 101
    .line 102
    and-int/lit8 v7, v7, 0x1f

    .line 103
    .line 104
    int-to-long v10, v10

    .line 105
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 106
    .line 107
    invoke-static {v12, v7}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v12

    .line 111
    add-long/2addr v12, v10

    .line 112
    long-to-int v7, v12

    .line 113
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 114
    .line 115
    iget-object v11, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 116
    .line 117
    invoke-static {v10, v11}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    sget-object v11, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->DISTANCE_TABLE:[I

    .line 122
    .line 123
    aget v10, v11, v10

    .line 124
    .line 125
    ushr-int/lit8 v11, v10, 0x4

    .line 126
    .line 127
    and-int/lit8 v10, v10, 0xf

    .line 128
    .line 129
    int-to-long v11, v11

    .line 130
    iget-object v13, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 131
    .line 132
    invoke-static {v13, v10}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v13

    .line 136
    add-long/2addr v13, v11

    .line 137
    long-to-int v10, v13

    .line 138
    iget-object v11, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 139
    .line 140
    array-length v11, v11

    .line 141
    if-ge v11, v7, :cond_4

    .line 142
    .line 143
    new-array v11, v7, [B

    .line 144
    .line 145
    iput-object v11, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 146
    .line 147
    :cond_4
    iput v7, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 148
    .line 149
    iput v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 150
    .line 151
    iget-object v6, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 152
    .line 153
    iget-object v11, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 154
    .line 155
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 156
    .line 157
    array-length v13, v12

    .line 158
    if-gt v10, v13, :cond_b

    .line 159
    .line 160
    iget v13, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 161
    .line 162
    sub-int v14, v13, v10

    .line 163
    .line 164
    and-int/2addr v14, v8

    .line 165
    iget-boolean v15, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 166
    .line 167
    if-nez v15, :cond_6

    .line 168
    .line 169
    if-ge v14, v13, :cond_5

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v1, "Attempt to read beyond memory: dist="

    .line 175
    .line 176
    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_6
    :goto_1
    move v10, v5

    .line 185
    :goto_2
    if-ge v10, v7, :cond_9

    .line 186
    .line 187
    aget-byte v13, v12, v14

    .line 188
    .line 189
    iget v15, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 190
    .line 191
    iget-object v5, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 192
    .line 193
    aput-byte v13, v5, v15

    .line 194
    .line 195
    add-int/lit8 v5, v15, 0x1

    .line 196
    .line 197
    and-int/2addr v5, v8

    .line 198
    iget-boolean v8, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 199
    .line 200
    if-nez v8, :cond_7

    .line 201
    .line 202
    if-ge v5, v15, :cond_7

    .line 203
    .line 204
    iput-boolean v9, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 205
    .line 206
    :cond_7
    iput v5, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 207
    .line 208
    aput-byte v13, v11, v10

    .line 209
    .line 210
    add-int/lit8 v10, v10, 0x1

    .line 211
    .line 212
    add-int/lit8 v5, v14, 0x1

    .line 213
    .line 214
    const v8, 0xffff

    .line 215
    .line 216
    .line 217
    and-int/2addr v5, v8

    .line 218
    iget-boolean v13, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 219
    .line 220
    if-nez v13, :cond_8

    .line 221
    .line 222
    if-ge v5, v14, :cond_8

    .line 223
    .line 224
    iput-boolean v9, v6, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 225
    .line 226
    :cond_8
    move v14, v5

    .line 227
    const/4 v5, 0x0

    .line 228
    goto :goto_2

    .line 229
    :cond_9
    add-int v5, v2, v4

    .line 230
    .line 231
    sub-int v6, v3, v4

    .line 232
    .line 233
    iget v7, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 234
    .line 235
    iget v8, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 236
    .line 237
    sub-int/2addr v7, v8

    .line 238
    if-lez v7, :cond_a

    .line 239
    .line 240
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 245
    .line 246
    iget v8, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 247
    .line 248
    invoke-static {v7, v8, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    .line 250
    .line 251
    iget v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 252
    .line 253
    add-int/2addr v5, v6

    .line 254
    iput v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_a
    const/4 v6, 0x0

    .line 258
    :goto_3
    add-int/2addr v6, v4

    .line 259
    move v4, v6

    .line 260
    :goto_4
    const/4 v5, 0x0

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 264
    .line 265
    const-string v1, "Illegal distance parameter: "

    .line 266
    .line 267
    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_c
    iput-boolean v9, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 276
    .line 277
    :cond_d
    move v0, v4

    .line 278
    :goto_5
    return v0
.end method

.method public final state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 9
    .line 10
    :goto_0
    return-object p0
.end method
