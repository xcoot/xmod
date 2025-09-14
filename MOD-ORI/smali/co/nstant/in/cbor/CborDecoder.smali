.class public final Lco/nstant/in/cbor/CborDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

.field public final byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

.field public final inputStream:Ljava/io/InputStream;

.field public final mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

.field public final negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

.field public final specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

.field public final tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

.field public final unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

.field public final unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    new-instance v0, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 12
    .line 13
    new-instance v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 19
    .line 20
    new-instance v0, Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 26
    .line 27
    new-instance v0, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 33
    .line 34
    new-instance v0, Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 40
    .line 41
    new-instance v0, Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 47
    .line 48
    new-instance v0, Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 54
    .line 55
    new-instance v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/SpecialDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final decodeNext()Lco/nstant/in/cbor/model/DataItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    shr-int/lit8 v4, v1, 0x5

    .line 15
    .line 16
    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 17
    .line 18
    sget-object v6, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 19
    .line 20
    sget-object v7, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 21
    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    move-object v4, v7

    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    move-object v4, v6

    .line 43
    goto :goto_0

    .line 44
    :pswitch_6
    move-object v4, v5

    .line 45
    goto :goto_0

    .line 46
    :pswitch_7
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const-string v8, "Unexpected major type "

    .line 53
    .line 54
    const/4 v9, 0x2

    .line 55
    const-wide/16 v10, 0x1

    .line 56
    .line 57
    const-wide/16 v12, 0x0

    .line 58
    .line 59
    const-string v14, "Unexpected end of stream"

    .line 60
    .line 61
    const-wide/16 v15, -0x1

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v3, 0x1

    .line 65
    packed-switch v4, :pswitch_data_1

    .line 66
    .line 67
    .line 68
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 69
    .line 70
    const-string v2, "Not implemented major type "

    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :pswitch_8
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/16 v2, 0x1f

    .line 86
    .line 87
    and-int/2addr v1, v2

    .line 88
    sget-object v4, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 89
    .line 90
    sget-object v5, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 91
    .line 92
    packed-switch v1, :pswitch_data_2

    .line 93
    .line 94
    .line 95
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_9
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_a
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_b
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_c
    move-object v6, v5

    .line 108
    goto :goto_1

    .line 109
    :pswitch_d
    move-object v6, v4

    .line 110
    goto :goto_1

    .line 111
    :pswitch_e
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    .line 112
    .line 113
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const-string v7, "Not implemented"

    .line 118
    .line 119
    const/4 v8, 0x3

    .line 120
    if-eqz v6, :cond_c

    .line 121
    .line 122
    if-eq v6, v3, :cond_b

    .line 123
    .line 124
    const/16 v1, 0x8

    .line 125
    .line 126
    if-eq v6, v9, :cond_4

    .line 127
    .line 128
    if-eq v6, v8, :cond_3

    .line 129
    .line 130
    const/4 v2, 0x4

    .line 131
    if-eq v6, v2, :cond_2

    .line 132
    .line 133
    const/4 v0, 0x6

    .line 134
    if-ne v6, v0, :cond_1

    .line 135
    .line 136
    sget-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_1
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 141
    .line 142
    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_2
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    .line 147
    .line 148
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    and-int/lit16 v2, v2, 0xff

    .line 153
    .line 154
    int-to-long v2, v2

    .line 155
    shl-long/2addr v2, v1

    .line 156
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    and-int/lit16 v4, v4, 0xff

    .line 161
    .line 162
    int-to-long v4, v4

    .line 163
    or-long/2addr v2, v4

    .line 164
    shl-long/2addr v2, v1

    .line 165
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    and-int/lit16 v4, v4, 0xff

    .line 170
    .line 171
    int-to-long v4, v4

    .line 172
    or-long/2addr v2, v4

    .line 173
    shl-long/2addr v2, v1

    .line 174
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    and-int/lit16 v4, v4, 0xff

    .line 179
    .line 180
    int-to-long v4, v4

    .line 181
    or-long/2addr v2, v4

    .line 182
    shl-long/2addr v2, v1

    .line 183
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    and-int/lit16 v4, v4, 0xff

    .line 188
    .line 189
    int-to-long v4, v4

    .line 190
    or-long/2addr v2, v4

    .line 191
    shl-long/2addr v2, v1

    .line 192
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    and-int/lit16 v4, v4, 0xff

    .line 197
    .line 198
    int-to-long v4, v4

    .line 199
    or-long/2addr v2, v4

    .line 200
    shl-long/2addr v2, v1

    .line 201
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    and-int/lit16 v4, v4, 0xff

    .line 206
    .line 207
    int-to-long v4, v4

    .line 208
    or-long/2addr v2, v4

    .line 209
    shl-long v1, v2, v1

    .line 210
    .line 211
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    and-int/lit16 v0, v0, 0xff

    .line 216
    .line 217
    int-to-long v3, v0

    .line 218
    or-long v0, v1, v3

    .line 219
    .line 220
    new-instance v2, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 221
    .line 222
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    invoke-direct {v2, v0, v1}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;-><init>(D)V

    .line 227
    .line 228
    .line 229
    move-object v0, v2

    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :cond_3
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    .line 233
    .line 234
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    and-int/lit16 v2, v2, 0xff

    .line 239
    .line 240
    shl-int/2addr v2, v1

    .line 241
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    and-int/lit16 v3, v3, 0xff

    .line 246
    .line 247
    or-int/2addr v2, v3

    .line 248
    shl-int/2addr v2, v1

    .line 249
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    and-int/lit16 v3, v3, 0xff

    .line 254
    .line 255
    or-int/2addr v2, v3

    .line 256
    shl-int/lit8 v1, v2, 0x8

    .line 257
    .line 258
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    and-int/lit16 v0, v0, 0xff

    .line 263
    .line 264
    or-int/2addr v0, v1

    .line 265
    new-instance v1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 266
    .line 267
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-direct {v1, v5, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    .line 272
    .line 273
    .line 274
    :goto_2
    move-object v0, v1

    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :cond_4
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    .line 278
    .line 279
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    shl-int/lit8 v1, v5, 0x8

    .line 284
    .line 285
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    or-int/2addr v0, v1

    .line 290
    new-instance v1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 291
    .line 292
    const v5, 0x8000

    .line 293
    .line 294
    .line 295
    and-int/2addr v5, v0

    .line 296
    shr-int/lit8 v5, v5, 0xf

    .line 297
    .line 298
    and-int/lit16 v6, v0, 0x7c00

    .line 299
    .line 300
    shr-int/lit8 v6, v6, 0xa

    .line 301
    .line 302
    and-int/lit16 v0, v0, 0x3ff

    .line 303
    .line 304
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 305
    .line 306
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 307
    .line 308
    if-nez v6, :cond_6

    .line 309
    .line 310
    if-eqz v5, :cond_5

    .line 311
    .line 312
    const/4 v3, -0x1

    .line 313
    :cond_5
    int-to-double v2, v3

    .line 314
    const-wide/high16 v5, -0x3fd4000000000000L    # -14.0

    .line 315
    .line 316
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 317
    .line 318
    .line 319
    move-result-wide v5

    .line 320
    mul-double/2addr v5, v2

    .line 321
    int-to-double v2, v0

    .line 322
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 323
    .line 324
    .line 325
    move-result-wide v7

    .line 326
    div-double/2addr v2, v7

    .line 327
    :goto_3
    mul-double/2addr v2, v5

    .line 328
    double-to-float v0, v2

    .line 329
    goto :goto_4

    .line 330
    :cond_6
    if-ne v6, v2, :cond_9

    .line 331
    .line 332
    if-eqz v0, :cond_7

    .line 333
    .line 334
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_7
    if-eqz v5, :cond_8

    .line 338
    .line 339
    const/4 v3, -0x1

    .line 340
    :cond_8
    int-to-float v0, v3

    .line 341
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 342
    .line 343
    mul-float/2addr v0, v2

    .line 344
    goto :goto_4

    .line 345
    :cond_9
    if-eqz v5, :cond_a

    .line 346
    .line 347
    const/4 v3, -0x1

    .line 348
    :cond_a
    int-to-double v2, v3

    .line 349
    add-int/lit8 v6, v6, -0xf

    .line 350
    .line 351
    int-to-double v5, v6

    .line 352
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 353
    .line 354
    .line 355
    move-result-wide v5

    .line 356
    mul-double/2addr v5, v2

    .line 357
    int-to-double v2, v0

    .line 358
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 359
    .line 360
    .line 361
    move-result-wide v7

    .line 362
    div-double/2addr v2, v7

    .line 363
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 364
    .line 365
    add-double/2addr v2, v7

    .line 366
    goto :goto_3

    .line 367
    :goto_4
    invoke-direct {v1, v4, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_b
    new-instance v1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 372
    .line 373
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    invoke-direct {v1, v0}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :cond_c
    packed-switch v1, :pswitch_data_3

    .line 382
    .line 383
    .line 384
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :pswitch_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 388
    .line 389
    goto :goto_5

    .line 390
    :pswitch_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :pswitch_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :pswitch_12
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 397
    .line 398
    goto :goto_5

    .line 399
    :pswitch_13
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 400
    .line 401
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_11

    .line 406
    .line 407
    if-eq v0, v3, :cond_10

    .line 408
    .line 409
    if-eq v0, v9, :cond_f

    .line 410
    .line 411
    if-eq v0, v8, :cond_e

    .line 412
    .line 413
    const/4 v2, 0x5

    .line 414
    if-ne v0, v2, :cond_d

    .line 415
    .line 416
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 417
    .line 418
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 423
    .line 424
    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_e
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 435
    .line 436
    goto :goto_6

    .line 437
    :cond_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 438
    .line 439
    :goto_6
    return-object v0

    .line 440
    :pswitch_14
    new-instance v4, Lco/nstant/in/cbor/model/Tag;

    .line 441
    .line 442
    iget-object v5, v0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 443
    .line 444
    invoke-virtual {v5, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    invoke-direct {v4, v5, v6}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p0 .. p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    if-eqz v0, :cond_20

    .line 456
    .line 457
    iget-wide v5, v4, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 458
    .line 459
    const-wide/16 v7, 0x1e

    .line 460
    .line 461
    cmp-long v1, v5, v7

    .line 462
    .line 463
    if-nez v1, :cond_19

    .line 464
    .line 465
    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    .line 466
    .line 467
    if-eqz v1, :cond_18

    .line 468
    .line 469
    check-cast v0, Lco/nstant/in/cbor/model/Array;

    .line 470
    .line 471
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-ne v1, v9, :cond_17

    .line 478
    .line 479
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 486
    .line 487
    instance-of v2, v1, Lco/nstant/in/cbor/model/Number;

    .line 488
    .line 489
    if-eqz v2, :cond_16

    .line 490
    .line 491
    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 498
    .line 499
    instance-of v2, v0, Lco/nstant/in/cbor/model/Number;

    .line 500
    .line 501
    if-eqz v2, :cond_15

    .line 502
    .line 503
    check-cast v1, Lco/nstant/in/cbor/model/Number;

    .line 504
    .line 505
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 506
    .line 507
    new-instance v2, Lco/nstant/in/cbor/model/RationalNumber;

    .line 508
    .line 509
    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 510
    .line 511
    .line 512
    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    .line 513
    .line 514
    const/16 v4, 0x1e

    .line 515
    .line 516
    int-to-long v4, v4

    .line 517
    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 518
    .line 519
    .line 520
    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 521
    .line 522
    if-eqz v1, :cond_14

    .line 523
    .line 524
    if-eqz v0, :cond_13

    .line 525
    .line 526
    iget-object v3, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 527
    .line 528
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 529
    .line 530
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-nez v3, :cond_12

    .line 535
    .line 536
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 540
    .line 541
    .line 542
    return-object v2

    .line 543
    :cond_12
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 544
    .line 545
    const-string v1, "Denominator is zero"

    .line 546
    .line 547
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v0

    .line 551
    :cond_13
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 552
    .line 553
    const-string v1, "Denominator is null"

    .line 554
    .line 555
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :cond_14
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 560
    .line 561
    const-string v1, "Numerator is null"

    .line 562
    .line 563
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    throw v0

    .line 567
    :cond_15
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 568
    .line 569
    const-string v1, "Error decoding RationalNumber: second data item is not a number"

    .line 570
    .line 571
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v0

    .line 575
    :cond_16
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 576
    .line 577
    const-string v1, "Error decoding RationalNumber: first data item is not a number"

    .line 578
    .line 579
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_17
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 584
    .line 585
    const-string v1, "Error decoding RationalNumber: array size is not 2"

    .line 586
    .line 587
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    throw v0

    .line 591
    :cond_18
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 592
    .line 593
    const-string v1, "Error decoding RationalNumber: not an array"

    .line 594
    .line 595
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v0

    .line 599
    :cond_19
    const-wide/16 v7, 0x26

    .line 600
    .line 601
    cmp-long v1, v5, v7

    .line 602
    .line 603
    if-nez v1, :cond_1e

    .line 604
    .line 605
    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    .line 606
    .line 607
    if-eqz v1, :cond_1d

    .line 608
    .line 609
    check-cast v0, Lco/nstant/in/cbor/model/Array;

    .line 610
    .line 611
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-ne v1, v9, :cond_1c

    .line 618
    .line 619
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 626
    .line 627
    instance-of v2, v1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 628
    .line 629
    if-eqz v2, :cond_1b

    .line 630
    .line 631
    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 638
    .line 639
    instance-of v2, v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 640
    .line 641
    if-eqz v2, :cond_1a

    .line 642
    .line 643
    check-cast v1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 644
    .line 645
    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 646
    .line 647
    new-instance v2, Lco/nstant/in/cbor/model/LanguageTaggedString;

    .line 648
    .line 649
    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 650
    .line 651
    .line 652
    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    .line 653
    .line 654
    const/16 v4, 0x26

    .line 655
    .line 656
    int-to-long v4, v4

    .line 657
    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 658
    .line 659
    .line 660
    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 661
    .line 662
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 666
    .line 667
    .line 668
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 672
    .line 673
    .line 674
    return-object v2

    .line 675
    :cond_1a
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 676
    .line 677
    const-string v1, "Error decoding LanguageTaggedString: second data item is not an UnicodeString"

    .line 678
    .line 679
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v0

    .line 683
    :cond_1b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 684
    .line 685
    const-string v1, "Error decoding LanguageTaggedString: first data item is not an UnicodeString"

    .line 686
    .line 687
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v0

    .line 691
    :cond_1c
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 692
    .line 693
    const-string v1, "Error decoding LanguageTaggedString: array size is not 2"

    .line 694
    .line 695
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0

    .line 699
    :cond_1d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 700
    .line 701
    const-string v1, "Error decoding LanguageTaggedString: not an array"

    .line 702
    .line 703
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :cond_1e
    move-object v1, v0

    .line 708
    :goto_7
    iget-object v2, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 709
    .line 710
    if-eqz v2, :cond_1f

    .line 711
    .line 712
    move-object v1, v2

    .line 713
    goto :goto_7

    .line 714
    :cond_1f
    iput-object v4, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 715
    .line 716
    return-object v0

    .line 717
    :cond_20
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 718
    .line 719
    const-string v1, "Unexpected end of stream: tag without following data item."

    .line 720
    .line 721
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :pswitch_15
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 728
    .line 729
    .line 730
    move-result-wide v1

    .line 731
    cmp-long v4, v1, v15

    .line 732
    .line 733
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 734
    .line 735
    if-nez v4, :cond_24

    .line 736
    .line 737
    new-instance v1, Lco/nstant/in/cbor/model/Map;

    .line 738
    .line 739
    invoke-direct {v1}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 740
    .line 741
    .line 742
    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    :cond_21
    :goto_8
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 752
    .line 753
    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    if-eqz v3, :cond_22

    .line 758
    .line 759
    goto :goto_a

    .line 760
    :cond_22
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    if-eqz v2, :cond_23

    .line 765
    .line 766
    if-eqz v3, :cond_23

    .line 767
    .line 768
    iget-object v4, v1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 769
    .line 770
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    if-nez v3, :cond_21

    .line 775
    .line 776
    iget-object v3, v1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 777
    .line 778
    check-cast v3, Ljava/util/LinkedList;

    .line 779
    .line 780
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    goto :goto_8

    .line 784
    :cond_23
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 785
    .line 786
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    throw v0

    .line 790
    :cond_24
    new-instance v3, Lco/nstant/in/cbor/model/Map;

    .line 791
    .line 792
    long-to-int v4, v1

    .line 793
    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/Map;-><init>(I)V

    .line 794
    .line 795
    .line 796
    :goto_9
    cmp-long v4, v12, v1

    .line 797
    .line 798
    if-gez v4, :cond_27

    .line 799
    .line 800
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    if-eqz v4, :cond_26

    .line 809
    .line 810
    if-eqz v5, :cond_26

    .line 811
    .line 812
    iget-object v6, v3, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 813
    .line 814
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v5

    .line 818
    if-nez v5, :cond_25

    .line 819
    .line 820
    iget-object v5, v3, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 821
    .line 822
    check-cast v5, Ljava/util/LinkedList;

    .line 823
    .line 824
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    :cond_25
    add-long/2addr v12, v10

    .line 828
    goto :goto_9

    .line 829
    :cond_26
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 830
    .line 831
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v0

    .line 835
    :cond_27
    move-object v1, v3

    .line 836
    :goto_a
    return-object v1

    .line 837
    :pswitch_16
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 838
    .line 839
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 840
    .line 841
    .line 842
    move-result-wide v1

    .line 843
    cmp-long v4, v1, v15

    .line 844
    .line 845
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 846
    .line 847
    if-nez v4, :cond_2a

    .line 848
    .line 849
    new-instance v1, Lco/nstant/in/cbor/model/Array;

    .line 850
    .line 851
    invoke-direct {v1}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 852
    .line 853
    .line 854
    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 855
    .line 856
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    :goto_b
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    if-eqz v2, :cond_29

    .line 864
    .line 865
    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 866
    .line 867
    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    if-eqz v4, :cond_28

    .line 872
    .line 873
    invoke-virtual {v1, v3}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 874
    .line 875
    .line 876
    goto :goto_d

    .line 877
    :cond_28
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 878
    .line 879
    .line 880
    goto :goto_b

    .line 881
    :cond_29
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 882
    .line 883
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    throw v0

    .line 887
    :cond_2a
    new-instance v3, Lco/nstant/in/cbor/model/Array;

    .line 888
    .line 889
    invoke-direct {v3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 890
    .line 891
    .line 892
    :goto_c
    cmp-long v4, v12, v1

    .line 893
    .line 894
    if-gez v4, :cond_2c

    .line 895
    .line 896
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    if-eqz v4, :cond_2b

    .line 901
    .line 902
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 903
    .line 904
    .line 905
    add-long/2addr v12, v10

    .line 906
    goto :goto_c

    .line 907
    :cond_2b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 908
    .line 909
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v0

    .line 913
    :cond_2c
    move-object v1, v3

    .line 914
    :goto_d
    return-object v1

    .line 915
    :pswitch_17
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 916
    .line 917
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 918
    .line 919
    .line 920
    move-result-wide v3

    .line 921
    cmp-long v1, v3, v15

    .line 922
    .line 923
    if-nez v1, :cond_30

    .line 924
    .line 925
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 931
    .line 932
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 933
    .line 934
    .line 935
    :goto_e
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    if-eqz v3, :cond_2f

    .line 940
    .line 941
    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 942
    .line 943
    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-result v4

    .line 947
    if-eqz v4, :cond_2d

    .line 948
    .line 949
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 950
    .line 951
    new-instance v2, Ljava/lang/String;

    .line 952
    .line 953
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 958
    .line 959
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 960
    .line 961
    .line 962
    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    goto :goto_10

    .line 966
    :cond_2d
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 967
    .line 968
    if-ne v4, v7, :cond_2e

    .line 969
    .line 970
    check-cast v3, Lco/nstant/in/cbor/model/UnicodeString;

    .line 971
    .line 972
    invoke-virtual {v3}, Lco/nstant/in/cbor/model/UnicodeString;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 977
    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    array-length v4, v3

    .line 983
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 984
    .line 985
    .line 986
    goto :goto_e

    .line 987
    :cond_2e
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 988
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw v0

    .line 1005
    :cond_2f
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1006
    .line 1007
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    throw v0

    .line 1011
    :cond_30
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1012
    .line 1013
    long-to-int v2, v3

    .line 1014
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1015
    .line 1016
    .line 1017
    :goto_f
    cmp-long v2, v12, v3

    .line 1018
    .line 1019
    if-gez v2, :cond_31

    .line 1020
    .line 1021
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 1022
    .line 1023
    .line 1024
    move-result v2

    .line 1025
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1026
    .line 1027
    .line 1028
    add-long/2addr v12, v10

    .line 1029
    goto :goto_f

    .line 1030
    :cond_31
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 1031
    .line 1032
    new-instance v2, Ljava/lang/String;

    .line 1033
    .line 1034
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1039
    .line 1040
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    :goto_10
    return-object v0

    .line 1047
    :pswitch_18
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 1048
    .line 1049
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 1050
    .line 1051
    .line 1052
    move-result-wide v3

    .line 1053
    cmp-long v1, v3, v15

    .line 1054
    .line 1055
    if-nez v1, :cond_37

    .line 1056
    .line 1057
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 1058
    .line 1059
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1063
    .line 1064
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    :cond_32
    :goto_11
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    if-eqz v3, :cond_36

    .line 1072
    .line 1073
    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 1074
    .line 1075
    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v4

    .line 1079
    if-eqz v4, :cond_33

    .line 1080
    .line 1081
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_13

    .line 1091
    :cond_33
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 1092
    .line 1093
    if-ne v4, v6, :cond_35

    .line 1094
    .line 1095
    check-cast v3, Lco/nstant/in/cbor/model/ByteString;

    .line 1096
    .line 1097
    iget-object v3, v3, Lco/nstant/in/cbor/model/ByteString;->bytes:[B

    .line 1098
    .line 1099
    if-nez v3, :cond_34

    .line 1100
    .line 1101
    const/4 v3, 0x0

    .line 1102
    :cond_34
    if-eqz v3, :cond_32

    .line 1103
    .line 1104
    array-length v4, v3

    .line 1105
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_11

    .line 1109
    :cond_35
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1110
    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :cond_36
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1128
    .line 1129
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    throw v0

    .line 1133
    :cond_37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1134
    .line 1135
    long-to-int v2, v3

    .line 1136
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1137
    .line 1138
    .line 1139
    :goto_12
    cmp-long v2, v12, v3

    .line 1140
    .line 1141
    if-gez v2, :cond_38

    .line 1142
    .line 1143
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 1144
    .line 1145
    .line 1146
    move-result v2

    .line 1147
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1148
    .line 1149
    .line 1150
    add-long/2addr v12, v10

    .line 1151
    goto :goto_12

    .line 1152
    :cond_38
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    .line 1153
    .line 1154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 1159
    .line 1160
    .line 1161
    :goto_13
    return-object v0

    .line 1162
    :pswitch_19
    new-instance v2, Lco/nstant/in/cbor/model/NegativeInteger;

    .line 1163
    .line 1164
    sget-object v3, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    .line 1165
    .line 1166
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 1167
    .line 1168
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-direct {v2, v5, v0}, Lco/nstant/in/cbor/model/Number;-><init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 1177
    .line 1178
    .line 1179
    return-object v2

    .line 1180
    :pswitch_1a
    new-instance v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 1181
    .line 1182
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 1183
    .line 1184
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-direct {v2, v0}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

    .line 1189
    .line 1190
    .line 1191
    return-object v2

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    new-instance v1, Lco/nstant/in/cbor/CborException;

    .line 1194
    .line 1195
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 1196
    .line 1197
    .line 1198
    throw v1

    .line 1199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_8
    .end packed-switch

    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
