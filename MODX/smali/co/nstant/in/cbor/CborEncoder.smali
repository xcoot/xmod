.class public final Lco/nstant/in/cbor/CborEncoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

.field public final byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

.field public final mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

.field public final negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

.field public final specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

.field public final tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

.field public final unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

.field public final unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 6
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 9
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 11
    new-instance v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 13
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 16
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 18
    new-instance v0, Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 20
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 23
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 25
    new-instance v0, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 27
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 30
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 32
    new-instance v0, Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 34
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 37
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 39
    new-instance v0, Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 41
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 44
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 46
    new-instance v0, Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 48
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 51
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 53
    new-instance v0, Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 55
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/SpecialEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 58
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 60
    return-void
.end method


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/DataItem;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 5
    :cond_0
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v2, 0x0

    .line 13
    :goto_0
    sget-object v3, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    .line 15
    iget-object v4, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 17
    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-wide v5, v0, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 24
    invoke-virtual {v4, v3, v5, v6}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 27
    :cond_2
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 38
    const-string p1, "Unknown major type"

    .line 40
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0

    .line 44
    :pswitch_0
    check-cast p1, Lco/nstant/in/cbor/model/Special;

    .line 46
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v0, p1, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result v0

    .line 57
    const/16 v2, 0xff

    .line 59
    const-string v3, "Wrong data item type"

    .line 61
    packed-switch v0, :pswitch_data_1

    .line 64
    goto/16 :goto_9

    .line 66
    :pswitch_1
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 69
    goto/16 :goto_9

    .line 71
    :pswitch_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 73
    const-string p1, "Unallocated special type"

    .line 75
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    :pswitch_3
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 81
    if-eqz v0, :cond_3

    .line 83
    check-cast p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 85
    const/16 v0, 0xfb

    .line 87
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    .line 89
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 92
    iget-wide v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 97
    move-result-wide v0

    .line 98
    const/16 p1, 0x38

    .line 100
    shr-long v2, v0, p1

    .line 102
    const-wide/16 v4, 0xff

    .line 104
    and-long/2addr v2, v4

    .line 105
    long-to-int p1, v2

    .line 106
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 109
    const/16 p1, 0x30

    .line 111
    shr-long v2, v0, p1

    .line 113
    and-long/2addr v2, v4

    .line 114
    long-to-int p1, v2

    .line 115
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 118
    const/16 p1, 0x28

    .line 120
    shr-long v2, v0, p1

    .line 122
    and-long/2addr v2, v4

    .line 123
    long-to-int p1, v2

    .line 124
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 127
    const/16 p1, 0x20

    .line 129
    shr-long v2, v0, p1

    .line 131
    and-long/2addr v2, v4

    .line 132
    long-to-int p1, v2

    .line 133
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 136
    const/16 p1, 0x18

    .line 138
    shr-long v2, v0, p1

    .line 140
    and-long/2addr v2, v4

    .line 141
    long-to-int p1, v2

    .line 142
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 145
    const/16 p1, 0x10

    .line 147
    shr-long v2, v0, p1

    .line 149
    and-long/2addr v2, v4

    .line 150
    long-to-int p1, v2

    .line 151
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 154
    const/16 p1, 0x8

    .line 156
    shr-long v2, v0, p1

    .line 158
    and-long/2addr v2, v4

    .line 159
    long-to-int p1, v2

    .line 160
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 163
    and-long/2addr v0, v4

    .line 164
    long-to-int p1, v0

    .line 165
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 168
    goto/16 :goto_9

    .line 170
    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 172
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p0

    .line 176
    :pswitch_4
    instance-of v0, p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 178
    if-eqz v0, :cond_4

    .line 180
    check-cast p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 182
    const/16 v0, 0xfa

    .line 184
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    .line 186
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 189
    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 191
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 194
    move-result p1

    .line 195
    shr-int/lit8 v0, p1, 0x18

    .line 197
    and-int/2addr v0, v2

    .line 198
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 201
    shr-int/lit8 v0, p1, 0x10

    .line 203
    and-int/2addr v0, v2

    .line 204
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 207
    shr-int/lit8 v0, p1, 0x8

    .line 209
    and-int/2addr v0, v2

    .line 210
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 213
    and-int/2addr p1, v2

    .line 214
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 217
    goto/16 :goto_9

    .line 219
    :cond_4
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 221
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 225
    :pswitch_5
    instance-of v0, p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 227
    if-eqz v0, :cond_a

    .line 229
    check-cast p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 231
    const/16 v0, 0xf9

    .line 233
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    .line 235
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 238
    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 240
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 243
    move-result p1

    .line 244
    ushr-int/lit8 v0, p1, 0x10

    .line 246
    const v1, 0x8000

    .line 249
    and-int/2addr v0, v1

    .line 250
    add-int/lit16 v1, p1, 0x1000

    .line 252
    const v3, 0x7fffffff

    .line 255
    and-int/2addr v1, v3

    .line 256
    const v4, 0x7fffff

    .line 259
    const/high16 v5, 0x47800000    # 65536.0f

    .line 261
    if-lt v1, v5, :cond_7

    .line 263
    and-int/2addr v3, p1

    .line 264
    if-lt v3, v5, :cond_6

    .line 266
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 268
    if-ge v1, v3, :cond_5

    .line 270
    or-int/lit16 v0, v0, 0x7c00

    .line 272
    goto :goto_2

    .line 273
    :cond_5
    or-int/lit16 v0, v0, 0x7c00

    .line 275
    and-int/2addr p1, v4

    .line 276
    ushr-int/lit8 p1, p1, 0xd

    .line 278
    :goto_1
    or-int/2addr v0, p1

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    or-int/lit16 v0, v0, 0x7bff

    .line 282
    goto :goto_2

    .line 283
    :cond_7
    const/high16 v5, 0x38800000

    .line 285
    if-lt v1, v5, :cond_8

    .line 287
    const/high16 p1, 0x38000000

    .line 289
    sub-int/2addr v1, p1

    .line 290
    ushr-int/lit8 p1, v1, 0xd

    .line 292
    goto :goto_1

    .line 293
    :cond_8
    const/high16 v5, 0x33000000

    .line 295
    if-ge v1, v5, :cond_9

    .line 297
    goto :goto_2

    .line 298
    :cond_9
    and-int v1, p1, v3

    .line 300
    ushr-int/lit8 v1, v1, 0x17

    .line 302
    and-int/2addr p1, v4

    .line 303
    const/high16 v3, 0x800000

    .line 305
    or-int/2addr p1, v3

    .line 306
    add-int/lit8 v4, v1, -0x66

    .line 308
    ushr-int/2addr v3, v4

    .line 309
    add-int/2addr p1, v3

    .line 310
    rsub-int/lit8 v1, v1, 0x7e

    .line 312
    ushr-int/2addr p1, v1

    .line 313
    goto :goto_1

    .line 314
    :goto_2
    shr-int/lit8 p1, v0, 0x8

    .line 316
    and-int/2addr p1, v2

    .line 317
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 320
    and-int/lit16 p1, v0, 0xff

    .line 322
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 325
    goto/16 :goto_9

    .line 327
    :cond_a
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 329
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 332
    throw p0

    .line 333
    :pswitch_6
    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 335
    if-eqz v0, :cond_b

    .line 337
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 339
    const/16 v0, 0xf8

    .line 341
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 344
    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 346
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 349
    goto/16 :goto_9

    .line 351
    :cond_b
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 353
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 356
    throw p0

    .line 357
    :pswitch_7
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 359
    iget-object v0, p1, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_d

    .line 367
    if-eq v2, v1, :cond_d

    .line 369
    const/4 v1, 0x2

    .line 370
    if-eq v2, v1, :cond_d

    .line 372
    const/4 v1, 0x3

    .line 373
    if-eq v2, v1, :cond_d

    .line 375
    const/4 v0, 0x5

    .line 376
    if-eq v2, v0, :cond_c

    .line 378
    goto/16 :goto_9

    .line 380
    :cond_c
    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 382
    or-int/lit16 p1, p1, 0xe0

    .line 384
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 387
    goto/16 :goto_9

    .line 389
    :cond_d
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    .line 392
    move-result p1

    .line 393
    or-int/lit16 p1, p1, 0xe0

    .line 395
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 398
    goto/16 :goto_9

    .line 400
    :pswitch_8
    check-cast p1, Lco/nstant/in/cbor/model/Tag;

    .line 402
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    iget-wide p0, p1, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 407
    invoke-virtual {v4, v3, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 410
    goto/16 :goto_9

    .line 412
    :pswitch_9
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    .line 414
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    iget-object v0, p1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 421
    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 423
    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    .line 425
    if-eqz v1, :cond_e

    .line 427
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 430
    goto :goto_3

    .line 431
    :cond_e
    move-object v1, v0

    .line 432
    check-cast v1, Ljava/util/LinkedList;

    .line 434
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 437
    move-result v1

    .line 438
    int-to-long v3, v1

    .line 439
    invoke-virtual {p0, v2, v3, v4}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 442
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_f

    .line 448
    goto/16 :goto_9

    .line 450
    :cond_f
    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 452
    if-eqz v1, :cond_11

    .line 454
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 457
    move-result-object v0

    .line 458
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    move-result v1

    .line 462
    iget-object v2, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 464
    if-eqz v1, :cond_10

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    move-result-object v1

    .line 470
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 472
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 475
    iget-object v3, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 477
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 483
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 486
    goto :goto_4

    .line 487
    :cond_10
    sget-object p0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 489
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 492
    goto/16 :goto_9

    .line 494
    :cond_11
    new-instance v1, Ljava/util/TreeMap;

    .line 496
    new-instance v2, Lco/nstant/in/cbor/encoder/MapEncoder$1;

    .line 498
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 501
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 504
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 506
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    .line 511
    invoke-direct {v3, v2}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 514
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 517
    move-result-object v0

    .line 518
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_12

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    move-result-object v4

    .line 528
    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 530
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 533
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 540
    iget-object v6, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 542
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 548
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 551
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 554
    move-result-object v4

    .line 555
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 558
    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    goto :goto_5

    .line 562
    :cond_12
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 565
    move-result-object p1

    .line 566
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 569
    move-result-object p1

    .line 570
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_14

    .line 576
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    move-result-object v0

    .line 580
    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 585
    move-result-object v1

    .line 586
    check-cast v1, [B

    .line 588
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 594
    move-result-object v0

    .line 595
    check-cast v0, [B

    .line 597
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 600
    goto :goto_6

    .line 601
    :pswitch_a
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 603
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    iget-object v0, p1, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 610
    iget-boolean p1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 612
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    .line 614
    if-eqz p1, :cond_13

    .line 616
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 619
    goto :goto_7

    .line 620
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 623
    move-result p1

    .line 624
    int-to-long v2, p1

    .line 625
    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 628
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 631
    move-result-object p1

    .line 632
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_14

    .line 638
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 644
    iget-object v1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 646
    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 649
    goto :goto_8

    .line 650
    :pswitch_b
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 652
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 654
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    .line 657
    goto :goto_9

    .line 658
    :pswitch_c
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 660
    check-cast p1, Lco/nstant/in/cbor/model/ByteString;

    .line 662
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    .line 665
    goto :goto_9

    .line 666
    :pswitch_d
    check-cast p1, Lco/nstant/in/cbor/model/NegativeInteger;

    .line 668
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 670
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 675
    sget-object v1, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    .line 677
    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 679
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 682
    move-result-object p1

    .line 683
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 690
    goto :goto_9

    .line 691
    :pswitch_e
    check-cast p1, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 693
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 695
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 700
    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 702
    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 705
    :cond_14
    :goto_9
    return-void

    .line 706
    nop

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 727
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
