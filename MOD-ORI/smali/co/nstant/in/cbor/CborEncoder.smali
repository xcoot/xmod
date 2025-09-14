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

    .line 2
    .line 3
    .line 4
    new-instance v0, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 10
    .line 11
    new-instance v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 17
    .line 18
    new-instance v0, Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 24
    .line 25
    new-instance v0, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 31
    .line 32
    new-instance v0, Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 38
    .line 39
    new-instance v0, Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 45
    .line 46
    new-instance v0, Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 52
    .line 53
    new-instance v0, Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/SpecialEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/DataItem;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
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

    .line 14
    .line 15
    iget-object v4, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-wide v5, v0, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 23
    .line 24
    invoke-virtual {v4, v3, v5, v6}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 37
    .line 38
    const-string p1, "Unknown major type"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :pswitch_0
    check-cast p1, Lco/nstant/in/cbor/model/Special;

    .line 45
    .line 46
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v2, 0xff

    .line 58
    .line 59
    const-string v3, "Wrong data item type"

    .line 60
    .line 61
    packed-switch v0, :pswitch_data_1

    .line 62
    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :pswitch_1
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :pswitch_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 72
    .line 73
    const-string p1, "Unallocated special type"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :pswitch_3
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    check-cast p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 84
    .line 85
    const/16 v0, 0xfb

    .line 86
    .line 87
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 90
    .line 91
    .line 92
    iget-wide v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    const/16 p1, 0x38

    .line 99
    .line 100
    shr-long v2, v0, p1

    .line 101
    .line 102
    const-wide/16 v4, 0xff

    .line 103
    .line 104
    and-long/2addr v2, v4

    .line 105
    long-to-int p1, v2

    .line 106
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 107
    .line 108
    .line 109
    const/16 p1, 0x30

    .line 110
    .line 111
    shr-long v2, v0, p1

    .line 112
    .line 113
    and-long/2addr v2, v4

    .line 114
    long-to-int p1, v2

    .line 115
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 116
    .line 117
    .line 118
    const/16 p1, 0x28

    .line 119
    .line 120
    shr-long v2, v0, p1

    .line 121
    .line 122
    and-long/2addr v2, v4

    .line 123
    long-to-int p1, v2

    .line 124
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 125
    .line 126
    .line 127
    const/16 p1, 0x20

    .line 128
    .line 129
    shr-long v2, v0, p1

    .line 130
    .line 131
    and-long/2addr v2, v4

    .line 132
    long-to-int p1, v2

    .line 133
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 134
    .line 135
    .line 136
    const/16 p1, 0x18

    .line 137
    .line 138
    shr-long v2, v0, p1

    .line 139
    .line 140
    and-long/2addr v2, v4

    .line 141
    long-to-int p1, v2

    .line 142
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 143
    .line 144
    .line 145
    const/16 p1, 0x10

    .line 146
    .line 147
    shr-long v2, v0, p1

    .line 148
    .line 149
    and-long/2addr v2, v4

    .line 150
    long-to-int p1, v2

    .line 151
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 152
    .line 153
    .line 154
    const/16 p1, 0x8

    .line 155
    .line 156
    shr-long v2, v0, p1

    .line 157
    .line 158
    and-long/2addr v2, v4

    .line 159
    long-to-int p1, v2

    .line 160
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 161
    .line 162
    .line 163
    and-long/2addr v0, v4

    .line 164
    long-to-int p1, v0

    .line 165
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 171
    .line 172
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :pswitch_4
    instance-of v0, p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    check-cast p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    .line 181
    .line 182
    const/16 v0, 0xfa

    .line 183
    .line 184
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 187
    .line 188
    .line 189
    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    shr-int/lit8 v0, p1, 0x18

    .line 196
    .line 197
    and-int/2addr v0, v2

    .line 198
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 199
    .line 200
    .line 201
    shr-int/lit8 v0, p1, 0x10

    .line 202
    .line 203
    and-int/2addr v0, v2

    .line 204
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 205
    .line 206
    .line 207
    shr-int/lit8 v0, p1, 0x8

    .line 208
    .line 209
    and-int/2addr v0, v2

    .line 210
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 211
    .line 212
    .line 213
    and-int/2addr p1, v2

    .line 214
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_9

    .line 218
    .line 219
    :cond_4
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 220
    .line 221
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :pswitch_5
    instance-of v0, p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 226
    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    check-cast p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    .line 230
    .line 231
    const/16 v0, 0xf9

    .line 232
    .line 233
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    .line 234
    .line 235
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 236
    .line 237
    .line 238
    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    .line 239
    .line 240
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    ushr-int/lit8 v0, p1, 0x10

    .line 245
    .line 246
    const v1, 0x8000

    .line 247
    .line 248
    .line 249
    and-int/2addr v0, v1

    .line 250
    add-int/lit16 v1, p1, 0x1000

    .line 251
    .line 252
    const v3, 0x7fffffff

    .line 253
    .line 254
    .line 255
    and-int/2addr v1, v3

    .line 256
    const v4, 0x7fffff

    .line 257
    .line 258
    .line 259
    const/high16 v5, 0x47800000    # 65536.0f

    .line 260
    .line 261
    if-lt v1, v5, :cond_7

    .line 262
    .line 263
    and-int/2addr v3, p1

    .line 264
    if-lt v3, v5, :cond_6

    .line 265
    .line 266
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 267
    .line 268
    if-ge v1, v3, :cond_5

    .line 269
    .line 270
    or-int/lit16 v0, v0, 0x7c00

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_5
    or-int/lit16 v0, v0, 0x7c00

    .line 274
    .line 275
    and-int/2addr p1, v4

    .line 276
    ushr-int/lit8 p1, p1, 0xd

    .line 277
    .line 278
    :goto_1
    or-int/2addr v0, p1

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    or-int/lit16 v0, v0, 0x7bff

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_7
    const/high16 v5, 0x38800000

    .line 284
    .line 285
    if-lt v1, v5, :cond_8

    .line 286
    .line 287
    const/high16 p1, 0x38000000

    .line 288
    .line 289
    sub-int/2addr v1, p1

    .line 290
    ushr-int/lit8 p1, v1, 0xd

    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_8
    const/high16 v5, 0x33000000

    .line 294
    .line 295
    if-ge v1, v5, :cond_9

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_9
    and-int v1, p1, v3

    .line 299
    .line 300
    ushr-int/lit8 v1, v1, 0x17

    .line 301
    .line 302
    and-int/2addr p1, v4

    .line 303
    const/high16 v3, 0x800000

    .line 304
    .line 305
    or-int/2addr p1, v3

    .line 306
    add-int/lit8 v4, v1, -0x66

    .line 307
    .line 308
    ushr-int/2addr v3, v4

    .line 309
    add-int/2addr p1, v3

    .line 310
    rsub-int/lit8 v1, v1, 0x7e

    .line 311
    .line 312
    ushr-int/2addr p1, v1

    .line 313
    goto :goto_1

    .line 314
    :goto_2
    shr-int/lit8 p1, v0, 0x8

    .line 315
    .line 316
    and-int/2addr p1, v2

    .line 317
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 318
    .line 319
    .line 320
    and-int/lit16 p1, v0, 0xff

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_9

    .line 326
    .line 327
    :cond_a
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 328
    .line 329
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p0

    .line 333
    :pswitch_6
    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 334
    .line 335
    if-eqz v0, :cond_b

    .line 336
    .line 337
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 338
    .line 339
    const/16 v0, 0xf8

    .line 340
    .line 341
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 342
    .line 343
    .line 344
    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 345
    .line 346
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :cond_b
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 352
    .line 353
    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :pswitch_7
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    .line 358
    .line 359
    iget-object v0, p1, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    if-eq v2, v1, :cond_d

    .line 368
    .line 369
    const/4 v1, 0x2

    .line 370
    if-eq v2, v1, :cond_d

    .line 371
    .line 372
    const/4 v1, 0x3

    .line 373
    if-eq v2, v1, :cond_d

    .line 374
    .line 375
    const/4 v0, 0x5

    .line 376
    if-eq v2, v0, :cond_c

    .line 377
    .line 378
    goto/16 :goto_9

    .line 379
    .line 380
    :cond_c
    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    .line 381
    .line 382
    or-int/lit16 p1, p1, 0xe0

    .line 383
    .line 384
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_9

    .line 388
    .line 389
    :cond_d
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    or-int/lit16 p1, p1, 0xe0

    .line 394
    .line 395
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_9

    .line 399
    .line 400
    :pswitch_8
    check-cast p1, Lco/nstant/in/cbor/model/Tag;

    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    iget-wide p0, p1, Lco/nstant/in/cbor/model/Tag;->value:J

    .line 406
    .line 407
    invoke-virtual {v4, v3, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_9

    .line 411
    .line 412
    :pswitch_9
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    .line 413
    .line 414
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    .line 415
    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    iget-object v0, p1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    .line 420
    .line 421
    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 422
    .line 423
    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    .line 424
    .line 425
    if-eqz v1, :cond_e

    .line 426
    .line 427
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_e
    move-object v1, v0

    .line 432
    check-cast v1, Ljava/util/LinkedList;

    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    int-to-long v3, v1

    .line 439
    invoke-virtual {p0, v2, v3, v4}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 440
    .line 441
    .line 442
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_f

    .line 447
    .line 448
    goto/16 :goto_9

    .line 449
    .line 450
    :cond_f
    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 451
    .line 452
    if-eqz v1, :cond_11

    .line 453
    .line 454
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    iget-object v2, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 463
    .line 464
    if-eqz v1, :cond_10

    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 471
    .line 472
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 473
    .line 474
    .line 475
    iget-object v3, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 476
    .line 477
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 484
    .line 485
    .line 486
    goto :goto_4

    .line 487
    :cond_10
    sget-object p0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 488
    .line 489
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_9

    .line 493
    .line 494
    :cond_11
    new-instance v1, Ljava/util/TreeMap;

    .line 495
    .line 496
    new-instance v2, Lco/nstant/in/cbor/encoder/MapEncoder$1;

    .line 497
    .line 498
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 502
    .line 503
    .line 504
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 505
    .line 506
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    .line 508
    .line 509
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    .line 510
    .line 511
    invoke-direct {v3, v2}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_12

    .line 523
    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 529
    .line 530
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 538
    .line 539
    .line 540
    iget-object v6, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    .line 541
    .line 542
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 547
    .line 548
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    goto :goto_5

    .line 562
    :cond_12
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_14

    .line 575
    .line 576
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    check-cast v0, Ljava/util/Map$Entry;

    .line 581
    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, [B

    .line 587
    .line 588
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 589
    .line 590
    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, [B

    .line 596
    .line 597
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    .line 598
    .line 599
    .line 600
    goto :goto_6

    .line 601
    :pswitch_a
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 602
    .line 603
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    .line 604
    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    iget-object v0, p1, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    .line 609
    .line 610
    iget-boolean p1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 611
    .line 612
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    .line 613
    .line 614
    if-eqz p1, :cond_13

    .line 615
    .line 616
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    .line 617
    .line 618
    .line 619
    goto :goto_7

    .line 620
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 621
    .line 622
    .line 623
    move-result p1

    .line 624
    int-to-long v2, p1

    .line 625
    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 626
    .line 627
    .line 628
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_14

    .line 637
    .line 638
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 643
    .line 644
    iget-object v1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    .line 645
    .line 646
    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 647
    .line 648
    .line 649
    goto :goto_8

    .line 650
    :pswitch_b
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    .line 651
    .line 652
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 653
    .line 654
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :pswitch_c
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    .line 659
    .line 660
    check-cast p1, Lco/nstant/in/cbor/model/ByteString;

    .line 661
    .line 662
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    .line 663
    .line 664
    .line 665
    goto :goto_9

    .line 666
    :pswitch_d
    check-cast p1, Lco/nstant/in/cbor/model/NegativeInteger;

    .line 667
    .line 668
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    .line 669
    .line 670
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 674
    .line 675
    sget-object v1, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    .line 676
    .line 677
    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 678
    .line 679
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 688
    .line 689
    .line 690
    goto :goto_9

    .line 691
    :pswitch_e
    check-cast p1, Lco/nstant/in/cbor/model/UnsignedInteger;

    .line 692
    .line 693
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    .line 694
    .line 695
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 699
    .line 700
    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 701
    .line 702
    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    .line 703
    .line 704
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

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
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
