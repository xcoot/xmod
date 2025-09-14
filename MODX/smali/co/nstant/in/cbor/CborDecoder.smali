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

    .line 4
    iput-object p1, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 6
    new-instance v0, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 8
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 11
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 13
    new-instance v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 15
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 18
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 20
    new-instance v0, Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 22
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 25
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 27
    new-instance v0, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 29
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 32
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 34
    new-instance v0, Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 36
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 39
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 41
    new-instance v0, Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 43
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 46
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 48
    new-instance v0, Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 50
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 53
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 55
    new-instance v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 57
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/SpecialDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 60
    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 62
    return-void
.end method


# virtual methods
.method public final decodeNext()Lco/nstant/in/cbor/model/DataItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    :try_start_0
    iget-object v1, v0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

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

    .line 13
    return-object v2

    .line 14
    :cond_0
    shr-int/lit8 v4, v1, 0x5

    .line 16
    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 18
    sget-object v6, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 20
    sget-object v7, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 25
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

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

    .line 48
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 51
    move-result v4

    .line 52
    const-string v8, "Unexpected major type "

    .line 54
    const/4 v9, 0x2

    .line 55
    const-wide/16 v10, 0x1

    .line 57
    const-wide/16 v12, 0x0

    .line 59
    const-string v14, "Unexpected end of stream"

    .line 61
    const-wide/16 v15, -0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v3, 0x1

    .line 65
    packed-switch v4, :pswitch_data_1

    .line 68
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 70
    const-string v2, "Not implemented major type "

    .line 72
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0

    .line 80
    :pswitch_8
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    const/16 v2, 0x1f

    .line 87
    and-int/2addr v1, v2

    .line 88
    sget-object v4, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 90
    sget-object v5, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 92
    packed-switch v1, :pswitch_data_2

    .line 95
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    .line 97
    goto :goto_1

    .line 98
    :pswitch_9
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    .line 100
    goto :goto_1

    .line 101
    :pswitch_a
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    .line 103
    goto :goto_1

    .line 104
    :pswitch_b
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

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

    .line 113
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v6

    .line 117
    const-string v7, "Not implemented"

    .line 119
    const/4 v8, 0x3

    .line 120
    if-eqz v6, :cond_c

    .line 122
    if-eq v6, v3, :cond_b

    .line 124
    const/16 v1, 0x8

    .line 126
    if-eq v6, v9, :cond_4

    .line 128
    if-eq v6, v8, :cond_3

    .line 130
    const/4 v2, 0x4

    .line 131
    if-eq v6, v2, :cond_2

    .line 133
    const/4 v0, 0x6

    .line 134
    if-ne v6, v0, :cond_1

    .line 136
    sget-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 138
    goto/16 :goto_6

    .line 140
    :cond_1
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 142
    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v0

    .line 146
    :cond_2
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    .line 148
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 151
    move-result v2

    .line 152
    and-int/lit16 v2, v2, 0xff

    .line 154
    int-to-long v2, v2

    .line 155
    shl-long/2addr v2, v1

    .line 156
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 159
    move-result v4

    .line 160
    and-int/lit16 v4, v4, 0xff

    .line 162
    int-to-long v4, v4

    .line 163
    or-long/2addr v2, v4

    .line 164
    shl-long/2addr v2, v1

    .line 165
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 168
    move-result v4

    .line 169
    and-int/lit16 v4, v4, 0xff

    .line 171
    int-to-long v4, v4

    .line 172
    or-long/2addr v2, v4

    .line 173
    shl-long/2addr v2, v1

    .line 174
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 177
    move-result v4

    .line 178
    and-int/lit16 v4, v4, 0xff

    .line 180
    int-to-long v4, v4

    .line 181
    or-long/2addr v2, v4

    .line 182
    shl-long/2addr v2, v1

    .line 183
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 186
    move-result v4

    .line 187
    and-int/lit16 v4, v4, 0xff

    .line 189
    int-to-long v4, v4

    .line 190
    or-long/2addr v2, v4

    .line 191
    shl-long/2addr v2, v1

    .line 192
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 195
    move-result v4

    .line 196
    and-int/lit16 v4, v4, 0xff

    .line 198
    int-to-long v4, v4

    .line 199
    or-long/2addr v2, v4

    .line 200
    shl-long/2addr v2, v1

    .line 201
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 204
    move-result v4

    .line 205
    and-int/lit16 v4, v4, 0xff

    .line 207
    int-to-long v4, v4

    .line 208
    or-long/2addr v2, v4

    .line 209
    shl-long v1, v2, v1

    .line 211
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 214
    move-result v0

    .line 215
    and-int/lit16 v0, v0, 0xff

    .line 217
    int-to-long v3, v0

    .line 218
    or-long v0, v1, v3

    .line 220
    new-instance v2, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 225
    move-result-wide v0

    .line 226
    invoke-direct {v2, v0, v1}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;-><init>(D)V

    .line 229
    move-object v0, v2

    .line 230
    goto/16 :goto_6

    .line 232
    :cond_3
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    .line 234
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 237
    move-result v2

    .line 238
    and-int/lit16 v2, v2, 0xff

    .line 240
    shl-int/2addr v2, v1

    .line 241
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 244
    move-result v3

    .line 245
    and-int/lit16 v3, v3, 0xff

    .line 247
    or-int/2addr v2, v3

    .line 248
    shl-int/2addr v2, v1

    .line 249
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 252
    move-result v3

    .line 253
    and-int/lit16 v3, v3, 0xff

    .line 255
    or-int/2addr v2, v3

    .line 256
    shl-int/lit8 v1, v2, 0x8

    .line 258
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 261
    move-result v0

    .line 262
    and-int/lit16 v0, v0, 0xff

    .line 264
    or-int/2addr v0, v1

    .line 265
    new-instance v1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 267
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 270
    move-result v0

    .line 271
    invoke-direct {v1, v5, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    .line 274
    :goto_2
    move-object v0, v1

    .line 275
    goto/16 :goto_6

    .line 277
    :cond_4
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    .line 279
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 282
    move-result v5

    .line 283
    shl-int/lit8 v1, v5, 0x8

    .line 285
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 288
    move-result v0

    .line 289
    or-int/2addr v0, v1

    .line 290
    new-instance v1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 292
    const v5, 0x8000

    .line 295
    and-int/2addr v5, v0

    .line 296
    shr-int/lit8 v5, v5, 0xf

    .line 298
    and-int/lit16 v6, v0, 0x7c00

    .line 300
    shr-int/lit8 v6, v6, 0xa

    .line 302
    and-int/lit16 v0, v0, 0x3ff

    .line 304
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 306
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 308
    if-nez v6, :cond_6

    .line 310
    if-eqz v5, :cond_5

    .line 312
    const/4 v3, -0x1

    .line 313
    :cond_5
    int-to-double v2, v3

    .line 314
    const-wide/high16 v5, -0x3fd4000000000000L    # -14.0

    .line 316
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 319
    move-result-wide v5

    .line 320
    mul-double/2addr v5, v2

    .line 321
    int-to-double v2, v0

    .line 322
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

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

    .line 332
    if-eqz v0, :cond_7

    .line 334
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 336
    goto :goto_4

    .line 337
    :cond_7
    if-eqz v5, :cond_8

    .line 339
    const/4 v3, -0x1

    .line 340
    :cond_8
    int-to-float v0, v3

    .line 341
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 343
    mul-float/2addr v0, v2

    .line 344
    goto :goto_4

    .line 345
    :cond_9
    if-eqz v5, :cond_a

    .line 347
    const/4 v3, -0x1

    .line 348
    :cond_a
    int-to-double v2, v3

    .line 349
    add-int/lit8 v6, v6, -0xf

    .line 351
    int-to-double v5, v6

    .line 352
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 355
    move-result-wide v5

    .line 356
    mul-double/2addr v5, v2

    .line 357
    int-to-double v2, v0

    .line 358
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 361
    move-result-wide v7

    .line 362
    div-double/2addr v2, v7

    .line 363
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 365
    add-double/2addr v2, v7

    .line 366
    goto :goto_3

    .line 367
    :goto_4
    invoke-direct {v1, v4, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    .line 370
    goto :goto_2

    .line 371
    :cond_b
    new-instance v1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 373
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 376
    move-result v0

    .line 377
    invoke-direct {v1, v0}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    .line 380
    goto :goto_2

    .line 381
    :cond_c
    packed-switch v1, :pswitch_data_3

    .line 384
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 386
    goto :goto_5

    .line 387
    :pswitch_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 389
    goto :goto_5

    .line 390
    :pswitch_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 392
    goto :goto_5

    .line 393
    :pswitch_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 395
    goto :goto_5

    .line 396
    :pswitch_12
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 398
    goto :goto_5

    .line 399
    :pswitch_13
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 401
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_11

    .line 407
    if-eq v0, v3, :cond_10

    .line 409
    if-eq v0, v9, :cond_f

    .line 411
    if-eq v0, v8, :cond_e

    .line 413
    const/4 v2, 0x5

    .line 414
    if-ne v0, v2, :cond_d

    .line 416
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 418
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    .line 421
    goto :goto_6

    .line 422
    :cond_d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 424
    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 427
    throw v0

    .line 428
    :cond_e
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    .line 430
    goto :goto_6

    .line 431
    :cond_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 433
    goto :goto_6

    .line 434
    :cond_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 436
    goto :goto_6

    .line 437
    :cond_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    .line 439
    :goto_6
    return-object v0

    .line 440
    :pswitch_14
    new-instance v4, Lco/nstant/in/cbor/model/Tag;

    .line 442
    iget-object v5, v0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 444
    invoke-virtual {v5, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 447
    move-result-wide v5

    .line 448
    invoke-direct {v4, v5, v6}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 454
    move-result-object v0

    .line 455
    if-eqz v0, :cond_20

    .line 457
    iget-wide v5, v4, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 459
    const-wide/16 v7, 0x1e

    .line 461
    cmp-long v1, v5, v7

    .line 463
    if-nez v1, :cond_19

    .line 465
    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    .line 467
    if-eqz v1, :cond_18

    .line 469
    check-cast v0, Lco/nstant/in/cbor/model/Array;

    .line 471
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 476
    move-result v1

    .line 477
    if-ne v1, v9, :cond_17

    .line 479
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    move-result-object v1

    .line 485
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 487
    instance-of v2, v1, Lco/nstant/in/cbor/model/Number;

    .line 489
    if-eqz v2, :cond_16

    .line 491
    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 499
    instance-of v2, v0, Lco/nstant/in/cbor/model/Number;

    .line 501
    if-eqz v2, :cond_15

    .line 503
    check-cast v1, Lco/nstant/in/cbor/model/Number;

    .line 505
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 507
    new-instance v2, Lco/nstant/in/cbor/model/RationalNumber;

    .line 509
    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 512
    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    .line 514
    const/16 v4, 0x1e

    .line 516
    int-to-long v4, v4

    .line 517
    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 520
    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 522
    if-eqz v1, :cond_14

    .line 524
    if-eqz v0, :cond_13

    .line 526
    iget-object v3, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 528
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 530
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 533
    move-result v3

    .line 534
    if-nez v3, :cond_12

    .line 536
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 539
    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 542
    return-object v2

    .line 543
    :cond_12
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 545
    const-string v1, "Denominator is zero"

    .line 547
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 550
    throw v0

    .line 551
    :cond_13
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 553
    const-string v1, "Denominator is null"

    .line 555
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 558
    throw v0

    .line 559
    :cond_14
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 561
    const-string v1, "Numerator is null"

    .line 563
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 566
    throw v0

    .line 567
    :cond_15
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 569
    const-string v1, "Error decoding RationalNumber: second data item is not a number"

    .line 571
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 574
    throw v0

    .line 575
    :cond_16
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 577
    const-string v1, "Error decoding RationalNumber: first data item is not a number"

    .line 579
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 582
    throw v0

    .line 583
    :cond_17
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 585
    const-string v1, "Error decoding RationalNumber: array size is not 2"

    .line 587
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 590
    throw v0

    .line 591
    :cond_18
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 593
    const-string v1, "Error decoding RationalNumber: not an array"

    .line 595
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 598
    throw v0

    .line 599
    :cond_19
    const-wide/16 v7, 0x26

    .line 601
    cmp-long v1, v5, v7

    .line 603
    if-nez v1, :cond_1e

    .line 605
    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    .line 607
    if-eqz v1, :cond_1d

    .line 609
    check-cast v0, Lco/nstant/in/cbor/model/Array;

    .line 611
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 616
    move-result v1

    .line 617
    if-ne v1, v9, :cond_1c

    .line 619
    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 621
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 627
    instance-of v2, v1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 629
    if-eqz v2, :cond_1b

    .line 631
    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 633
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 639
    instance-of v2, v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 641
    if-eqz v2, :cond_1a

    .line 643
    check-cast v1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 645
    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 647
    new-instance v2, Lco/nstant/in/cbor/model/LanguageTaggedString;

    .line 649
    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 652
    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    .line 654
    const/16 v4, 0x26

    .line 656
    int-to-long v4, v4

    .line 657
    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    .line 660
    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 662
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 668
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 674
    return-object v2

    .line 675
    :cond_1a
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 677
    const-string v1, "Error decoding LanguageTaggedString: second data item is not an UnicodeString"

    .line 679
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 682
    throw v0

    .line 683
    :cond_1b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 685
    const-string v1, "Error decoding LanguageTaggedString: first data item is not an UnicodeString"

    .line 687
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 690
    throw v0

    .line 691
    :cond_1c
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 693
    const-string v1, "Error decoding LanguageTaggedString: array size is not 2"

    .line 695
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 698
    throw v0

    .line 699
    :cond_1d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 701
    const-string v1, "Error decoding LanguageTaggedString: not an array"

    .line 703
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 706
    throw v0

    .line 707
    :cond_1e
    move-object v1, v0

    .line 708
    :goto_7
    iget-object v2, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 710
    if-eqz v2, :cond_1f

    .line 712
    move-object v1, v2

    .line 713
    goto :goto_7

    .line 714
    :cond_1f
    iput-object v4, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 716
    return-object v0

    .line 717
    :cond_20
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 719
    const-string v1, "Unexpected end of stream: tag without following data item."

    .line 721
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 724
    throw v0

    .line 725
    :pswitch_15
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 727
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 730
    move-result-wide v1

    .line 731
    cmp-long v4, v1, v15

    .line 733
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 735
    if-nez v4, :cond_24

    .line 737
    new-instance v1, Lco/nstant/in/cbor/model/Map;

    .line 739
    invoke-direct {v1}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 742
    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 744
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    :cond_21
    :goto_8
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 750
    move-result-object v2

    .line 751
    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 753
    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 756
    move-result v3

    .line 757
    if-eqz v3, :cond_22

    .line 759
    goto :goto_a

    .line 760
    :cond_22
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 763
    move-result-object v3

    .line 764
    if-eqz v2, :cond_23

    .line 766
    if-eqz v3, :cond_23

    .line 768
    iget-object v4, v1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 770
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    move-result-object v3

    .line 774
    if-nez v3, :cond_21

    .line 776
    iget-object v3, v1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 778
    check-cast v3, Ljava/util/LinkedList;

    .line 780
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 783
    goto :goto_8

    .line 784
    :cond_23
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 786
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 789
    throw v0

    .line 790
    :cond_24
    new-instance v3, Lco/nstant/in/cbor/model/Map;

    .line 792
    long-to-int v4, v1

    .line 793
    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/Map;-><init>(I)V

    .line 796
    :goto_9
    cmp-long v4, v12, v1

    .line 798
    if-gez v4, :cond_27

    .line 800
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 803
    move-result-object v4

    .line 804
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 807
    move-result-object v5

    .line 808
    if-eqz v4, :cond_26

    .line 810
    if-eqz v5, :cond_26

    .line 812
    iget-object v6, v3, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 814
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    move-result-object v5

    .line 818
    if-nez v5, :cond_25

    .line 820
    iget-object v5, v3, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 822
    check-cast v5, Ljava/util/LinkedList;

    .line 824
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_25
    add-long/2addr v12, v10

    .line 828
    goto :goto_9

    .line 829
    :cond_26
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 831
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

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

    .line 839
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 842
    move-result-wide v1

    .line 843
    cmp-long v4, v1, v15

    .line 845
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 847
    if-nez v4, :cond_2a

    .line 849
    new-instance v1, Lco/nstant/in/cbor/model/Array;

    .line 851
    invoke-direct {v1}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 854
    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 856
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    :goto_b
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 862
    move-result-object v2

    .line 863
    if-eqz v2, :cond_29

    .line 865
    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 867
    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 870
    move-result v4

    .line 871
    if-eqz v4, :cond_28

    .line 873
    invoke-virtual {v1, v3}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 876
    goto :goto_d

    .line 877
    :cond_28
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 880
    goto :goto_b

    .line 881
    :cond_29
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 883
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 886
    throw v0

    .line 887
    :cond_2a
    new-instance v3, Lco/nstant/in/cbor/model/Array;

    .line 889
    invoke-direct {v3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 892
    :goto_c
    cmp-long v4, v12, v1

    .line 894
    if-gez v4, :cond_2c

    .line 896
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 899
    move-result-object v4

    .line 900
    if-eqz v4, :cond_2b

    .line 902
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    .line 905
    add-long/2addr v12, v10

    .line 906
    goto :goto_c

    .line 907
    :cond_2b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 909
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

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

    .line 917
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 920
    move-result-wide v3

    .line 921
    cmp-long v1, v3, v15

    .line 923
    if-nez v1, :cond_30

    .line 925
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 932
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 935
    :goto_e
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 938
    move-result-object v3

    .line 939
    if-eqz v3, :cond_2f

    .line 941
    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 943
    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 946
    move-result v4

    .line 947
    if-eqz v4, :cond_2d

    .line 949
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 951
    new-instance v2, Ljava/lang/String;

    .line 953
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 956
    move-result-object v1

    .line 957
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 959
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 962
    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 965
    goto :goto_10

    .line 966
    :cond_2d
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 968
    if-ne v4, v7, :cond_2e

    .line 970
    check-cast v3, Lco/nstant/in/cbor/model/UnicodeString;

    .line 972
    invoke-virtual {v3}, Lco/nstant/in/cbor/model/UnicodeString;->toString()Ljava/lang/String;

    .line 975
    move-result-object v3

    .line 976
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 981
    move-result-object v3

    .line 982
    array-length v4, v3

    .line 983
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 986
    goto :goto_e

    .line 987
    :cond_2e
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .line 991
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1000
    move-result-object v1

    .line 1001
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1004
    throw v0

    .line 1005
    :cond_2f
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1007
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1010
    throw v0

    .line 1011
    :cond_30
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1013
    long-to-int v2, v3

    .line 1014
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1017
    :goto_f
    cmp-long v2, v12, v3

    .line 1019
    if-gez v2, :cond_31

    .line 1021
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 1024
    move-result v2

    .line 1025
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1028
    add-long/2addr v12, v10

    .line 1029
    goto :goto_f

    .line 1030
    :cond_31
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 1032
    new-instance v2, Ljava/lang/String;

    .line 1034
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1037
    move-result-object v1

    .line 1038
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1040
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1043
    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 1046
    :goto_10
    return-object v0

    .line 1047
    :pswitch_18
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 1049
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    .line 1052
    move-result-wide v3

    .line 1053
    cmp-long v1, v3, v15

    .line 1055
    if-nez v1, :cond_37

    .line 1057
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1064
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1067
    :cond_32
    :goto_11
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    .line 1070
    move-result-object v3

    .line 1071
    if-eqz v3, :cond_36

    .line 1073
    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 1075
    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 1078
    move-result v4

    .line 1079
    if-eqz v4, :cond_33

    .line 1081
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    .line 1083
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1086
    move-result-object v1

    .line 1087
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 1090
    goto :goto_13

    .line 1091
    :cond_33
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 1093
    if-ne v4, v6, :cond_35

    .line 1095
    check-cast v3, Lco/nstant/in/cbor/model/ByteString;

    .line 1097
    iget-object v3, v3, Lco/nstant/in/cbor/model/ByteString;->bytes:[B

    .line 1099
    if-nez v3, :cond_34

    .line 1101
    const/4 v3, 0x0

    .line 1102
    :cond_34
    if-eqz v3, :cond_32

    .line 1104
    array-length v4, v3

    .line 1105
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1108
    goto :goto_11

    .line 1109
    :cond_35
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1113
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    move-result-object v1

    .line 1123
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1126
    throw v0

    .line 1127
    :cond_36
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 1129
    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 1132
    throw v0

    .line 1133
    :cond_37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1135
    long-to-int v2, v3

    .line 1136
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1139
    :goto_12
    cmp-long v2, v12, v3

    .line 1141
    if-gez v2, :cond_38

    .line 1143
    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 1146
    move-result v2

    .line 1147
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1150
    add-long/2addr v12, v10

    .line 1151
    goto :goto_12

    .line 1152
    :cond_38
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    .line 1154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1157
    move-result-object v1

    .line 1158
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    .line 1161
    :goto_13
    return-object v0

    .line 1162
    :pswitch_19
    new-instance v2, Lco/nstant/in/cbor/model/NegativeInteger;

    .line 1164
    sget-object v3, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    .line 1166
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 1168
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    .line 1171
    move-result-object v0

    .line 1172
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 1175
    move-result-object v0

    .line 1176
    invoke-direct {v2, v5, v0}, Lco/nstant/in/cbor/model/Number;-><init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 1179
    return-object v2

    .line 1180
    :pswitch_1a
    new-instance v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 1182
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 1184
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    .line 1187
    move-result-object v0

    .line 1188
    invoke-direct {v2, v0}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

    .line 1191
    return-object v2

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    new-instance v1, Lco/nstant/in/cbor/CborException;

    .line 1195
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

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
