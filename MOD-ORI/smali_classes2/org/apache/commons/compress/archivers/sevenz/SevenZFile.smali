.class public final Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final sevenZSignature:[B


# instance fields
.field public final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field public channel:Ljava/nio/channels/SeekableByteChannel;

.field public currentEntryIndex:I

.field public currentFolderIndex:I

.field public currentFolderInputStream:Ljava/io/InputStream;

.field public final deferredBlockStreams:Ljava/util/ArrayList;

.field public final fileName:Ljava/lang/String;

.field public password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 8
    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 8
    .line 9
    iput v1, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 24
    .line 25
    const-string/jumbo v2, "unknown archive"

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v2, 0xc

    .line 31
    .line 32
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    new-array v4, v4, [B

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 52
    .line 53
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_36

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v4, :cond_35

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-long v4, v2

    .line 74
    const-wide v6, 0xffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    and-long v12, v4, v6

    .line 80
    .line 81
    new-instance v2, Ljava/io/DataInputStream;

    .line 82
    .line 83
    new-instance v4, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 84
    .line 85
    new-instance v9, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 86
    .line 87
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 88
    .line 89
    const-wide/16 v10, 0x14

    .line 90
    .line 91
    invoke-direct {v9, v5, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 92
    .line 93
    .line 94
    move-object v8, v4

    .line 95
    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    invoke-static {v8, v9}, Ljava/lang/Long;->reverseBytes(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 122
    .line 123
    .line 124
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 125
    int-to-long v10, v10

    .line 126
    and-long/2addr v6, v10

    .line 127
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 128
    .line 129
    .line 130
    long-to-int v2, v8

    .line 131
    int-to-long v10, v2

    .line 132
    cmp-long v10, v10, v8

    .line 133
    .line 134
    if-nez v10, :cond_34

    .line 135
    .line 136
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 137
    .line 138
    const-wide/16 v9, 0x20

    .line 139
    .line 140
    add-long/2addr v4, v9

    .line 141
    invoke-interface {v8, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Ljava/util/zip/CRC32;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    cmp-long v3, v6, v3

    .line 172
    .line 173
    if-nez v3, :cond_33

    .line 174
    .line 175
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    and-int/lit16 v4, v4, 0xff

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    const/16 v5, 0x17

    .line 188
    .line 189
    const-wide/16 v13, 0x1

    .line 190
    .line 191
    if-ne v4, v5, :cond_5

    .line 192
    .line 193
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 197
    .line 198
    aget-object v15, v2, v8

    .line 199
    .line 200
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 201
    .line 202
    add-long/2addr v4, v9

    .line 203
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 204
    .line 205
    invoke-interface {v2, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 206
    .line 207
    .line 208
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 209
    .line 210
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 211
    .line 212
    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 213
    .line 214
    aget-wide v5, v3, v8

    .line 215
    .line 216
    invoke-direct {v2, v4, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    move-object/from16 v17, v2

    .line 228
    .line 229
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_3

    .line 234
    .line 235
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move-object v6, v2

    .line 240
    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 241
    .line 242
    iget-wide v2, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 243
    .line 244
    cmp-long v2, v2, v13

    .line 245
    .line 246
    if-nez v2, :cond_2

    .line 247
    .line 248
    iget-wide v2, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 249
    .line 250
    cmp-long v2, v2, v13

    .line 251
    .line 252
    if-nez v2, :cond_2

    .line 253
    .line 254
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v3, v15, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 257
    .line 258
    if-eqz v3, :cond_1

    .line 259
    .line 260
    move v3, v8

    .line 261
    :goto_1
    iget-object v4, v15, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 262
    .line 263
    array-length v5, v4

    .line 264
    if-ge v3, v5, :cond_1

    .line 265
    .line 266
    aget-object v4, v4, v3

    .line 267
    .line 268
    if-ne v4, v6, :cond_0

    .line 269
    .line 270
    iget-object v4, v15, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 271
    .line 272
    aget-wide v3, v4, v3

    .line 273
    .line 274
    move-wide v4, v3

    .line 275
    goto :goto_2

    .line 276
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_1
    const-wide/16 v4, 0x0

    .line 280
    .line 281
    :goto_2
    move-object/from16 v3, v17

    .line 282
    .line 283
    move-object v7, v1

    .line 284
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    .line 285
    .line 286
    .line 287
    move-result-object v17

    .line 288
    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 290
    .line 291
    const-string v1, "Multi input/output stream coders are not yet supported"

    .line 292
    .line 293
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_3
    iget-boolean v2, v15, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 298
    .line 299
    if-eqz v2, :cond_4

    .line 300
    .line 301
    new-instance v2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 302
    .line 303
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 304
    .line 305
    .line 306
    move-result-wide v18

    .line 307
    iget-wide v3, v15, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 308
    .line 309
    move-object/from16 v16, v2

    .line 310
    .line 311
    move-wide/from16 v20, v3

    .line 312
    .line 313
    invoke-direct/range {v16 .. v21}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_4
    move-object/from16 v2, v17

    .line 318
    .line 319
    :goto_3
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 320
    .line 321
    .line 322
    move-result-wide v3

    .line 323
    long-to-int v3, v3

    .line 324
    new-array v3, v3, [B

    .line 325
    .line 326
    new-instance v4, Ljava/io/DataInputStream;

    .line 327
    .line 328
    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 329
    .line 330
    .line 331
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 335
    .line 336
    .line 337
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    and-int/lit16 v4, v4, 0xff

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :catchall_0
    move-exception v0

    .line 360
    move-object v1, v0

    .line 361
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :catchall_1
    move-exception v0

    .line 366
    move-object v2, v0

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    :goto_4
    throw v1

    .line 371
    :cond_5
    :goto_5
    const/4 v5, 0x1

    .line 372
    if-ne v4, v5, :cond_32

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    and-int/lit16 v4, v4, 0xff

    .line 379
    .line 380
    const/4 v6, 0x2

    .line 381
    if-ne v4, v6, :cond_7

    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    :goto_6
    and-int/lit16 v4, v4, 0xff

    .line 388
    .line 389
    if-eqz v4, :cond_6

    .line 390
    .line 391
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 392
    .line 393
    .line 394
    move-result-wide v6

    .line 395
    long-to-int v4, v6

    .line 396
    new-array v4, v4, [B

    .line 397
    .line 398
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    goto :goto_6

    .line 406
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    and-int/lit16 v4, v4, 0xff

    .line 411
    .line 412
    :cond_7
    const/4 v6, 0x3

    .line 413
    if-eq v4, v6, :cond_31

    .line 414
    .line 415
    const/4 v6, 0x4

    .line 416
    if-ne v4, v6, :cond_8

    .line 417
    .line 418
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    and-int/lit16 v4, v4, 0xff

    .line 426
    .line 427
    :cond_8
    const/4 v6, 0x5

    .line 428
    if-ne v4, v6, :cond_2f

    .line 429
    .line 430
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 431
    .line 432
    .line 433
    move-result-wide v6

    .line 434
    long-to-int v6, v6

    .line 435
    new-array v7, v6, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 436
    .line 437
    move v4, v8

    .line 438
    :goto_7
    if-ge v4, v6, :cond_9

    .line 439
    .line 440
    new-instance v9, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 441
    .line 442
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 443
    .line 444
    .line 445
    aput-object v9, v7, v4

    .line 446
    .line 447
    add-int/lit8 v4, v4, 0x1

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_9
    const/4 v4, 0x0

    .line 451
    move-object v9, v4

    .line 452
    move-object v10, v9

    .line 453
    :goto_8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 454
    .line 455
    .line 456
    move-result v15

    .line 457
    and-int/lit16 v15, v15, 0xff

    .line 458
    .line 459
    if-nez v15, :cond_1c

    .line 460
    .line 461
    move v13, v8

    .line 462
    move v14, v13

    .line 463
    move v15, v14

    .line 464
    :goto_9
    if-ge v13, v6, :cond_f

    .line 465
    .line 466
    aget-object v5, v7, v13

    .line 467
    .line 468
    if-eqz v4, :cond_b

    .line 469
    .line 470
    invoke-virtual {v4, v13}, Ljava/util/BitSet;->get(I)Z

    .line 471
    .line 472
    .line 473
    move-result v16

    .line 474
    if-nez v16, :cond_a

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_a
    move v1, v8

    .line 478
    goto :goto_b

    .line 479
    :cond_b
    :goto_a
    const/4 v1, 0x1

    .line 480
    :goto_b
    iput-boolean v1, v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 481
    .line 482
    aget-object v1, v7, v13

    .line 483
    .line 484
    iget-boolean v5, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 485
    .line 486
    if-eqz v5, :cond_c

    .line 487
    .line 488
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 489
    .line 490
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 491
    .line 492
    invoke-virtual {v5, v14}, Ljava/util/BitSet;->get(I)Z

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    iput-boolean v5, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    .line 497
    .line 498
    aget-object v1, v7, v13

    .line 499
    .line 500
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 501
    .line 502
    iget-object v11, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 503
    .line 504
    aget-wide v11, v11, v14

    .line 505
    .line 506
    iput-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 507
    .line 508
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 509
    .line 510
    aget-wide v11, v5, v14

    .line 511
    .line 512
    iput-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 513
    .line 514
    add-int/lit8 v14, v14, 0x1

    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_c
    if-eqz v9, :cond_d

    .line 518
    .line 519
    invoke-virtual {v9, v15}, Ljava/util/BitSet;->get(I)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    :cond_d
    aget-object v1, v7, v13

    .line 524
    .line 525
    if-eqz v10, :cond_e

    .line 526
    .line 527
    invoke-virtual {v10, v15}, Ljava/util/BitSet;->get(I)Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    aget-object v1, v7, v13

    .line 535
    .line 536
    iput-boolean v8, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    .line 537
    .line 538
    const-wide/16 v11, 0x0

    .line 539
    .line 540
    iput-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 541
    .line 542
    add-int/lit8 v15, v15, 0x1

    .line 543
    .line 544
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    const/4 v5, 0x1

    .line 548
    goto :goto_9

    .line 549
    :cond_f
    iput-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 550
    .line 551
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 552
    .line 553
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 554
    .line 555
    .line 556
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 557
    .line 558
    if-eqz v4, :cond_10

    .line 559
    .line 560
    array-length v4, v4

    .line 561
    goto :goto_d

    .line 562
    :cond_10
    move v4, v8

    .line 563
    :goto_d
    new-array v5, v4, [I

    .line 564
    .line 565
    iput-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 566
    .line 567
    move v5, v8

    .line 568
    move v6, v5

    .line 569
    :goto_e
    if-ge v5, v4, :cond_11

    .line 570
    .line 571
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 572
    .line 573
    aput v6, v7, v5

    .line 574
    .line 575
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 576
    .line 577
    aget-object v7, v7, v5

    .line 578
    .line 579
    iget-object v7, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 580
    .line 581
    array-length v7, v7

    .line 582
    add-int/2addr v6, v7

    .line 583
    add-int/lit8 v5, v5, 0x1

    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_11
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 587
    .line 588
    if-eqz v5, :cond_12

    .line 589
    .line 590
    array-length v5, v5

    .line 591
    goto :goto_f

    .line 592
    :cond_12
    move v5, v8

    .line 593
    :goto_f
    new-array v6, v5, [J

    .line 594
    .line 595
    iput-object v6, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 596
    .line 597
    move v6, v8

    .line 598
    const-wide/16 v11, 0x0

    .line 599
    .line 600
    :goto_10
    if-ge v6, v5, :cond_13

    .line 601
    .line 602
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 603
    .line 604
    aput-wide v11, v7, v6

    .line 605
    .line 606
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 607
    .line 608
    aget-wide v9, v7, v6

    .line 609
    .line 610
    add-long/2addr v11, v9

    .line 611
    add-int/lit8 v6, v6, 0x1

    .line 612
    .line 613
    goto :goto_10

    .line 614
    :cond_13
    new-array v4, v4, [I

    .line 615
    .line 616
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 617
    .line 618
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 619
    .line 620
    array-length v4, v4

    .line 621
    new-array v4, v4, [I

    .line 622
    .line 623
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 624
    .line 625
    move v4, v8

    .line 626
    move v5, v4

    .line 627
    move v6, v5

    .line 628
    :goto_11
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 629
    .line 630
    array-length v9, v7

    .line 631
    if-ge v4, v9, :cond_1b

    .line 632
    .line 633
    aget-object v7, v7, v4

    .line 634
    .line 635
    iget-boolean v7, v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 636
    .line 637
    if-nez v7, :cond_14

    .line 638
    .line 639
    if-nez v5, :cond_14

    .line 640
    .line 641
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 642
    .line 643
    const/4 v9, -0x1

    .line 644
    aput v9, v7, v4

    .line 645
    .line 646
    goto :goto_15

    .line 647
    :cond_14
    if-nez v5, :cond_18

    .line 648
    .line 649
    :goto_12
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 650
    .line 651
    array-length v9, v7

    .line 652
    if-ge v6, v9, :cond_16

    .line 653
    .line 654
    iget-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 655
    .line 656
    aput v4, v9, v6

    .line 657
    .line 658
    aget-object v9, v7, v6

    .line 659
    .line 660
    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 661
    .line 662
    if-lez v9, :cond_15

    .line 663
    .line 664
    goto :goto_13

    .line 665
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 666
    .line 667
    goto :goto_12

    .line 668
    :cond_16
    :goto_13
    array-length v7, v7

    .line 669
    if-ge v6, v7, :cond_17

    .line 670
    .line 671
    goto :goto_14

    .line 672
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 673
    .line 674
    const-string v1, "Too few folders in archive"

    .line 675
    .line 676
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    throw v0

    .line 680
    :cond_18
    :goto_14
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 681
    .line 682
    aput v6, v7, v4

    .line 683
    .line 684
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 685
    .line 686
    aget-object v7, v7, v4

    .line 687
    .line 688
    iget-boolean v7, v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 689
    .line 690
    if-nez v7, :cond_19

    .line 691
    .line 692
    goto :goto_15

    .line 693
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 694
    .line 695
    iget-object v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 696
    .line 697
    aget-object v7, v7, v6

    .line 698
    .line 699
    iget v7, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 700
    .line 701
    if-lt v5, v7, :cond_1a

    .line 702
    .line 703
    add-int/lit8 v6, v6, 0x1

    .line 704
    .line 705
    move v5, v8

    .line 706
    :cond_1a
    :goto_15
    add-int/lit8 v4, v4, 0x1

    .line 707
    .line 708
    goto :goto_11

    .line 709
    :cond_1b
    iput-object v1, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    and-int/lit16 v4, v1, 0xff

    .line 716
    .line 717
    goto/16 :goto_1d

    .line 718
    .line 719
    :cond_1c
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 720
    .line 721
    .line 722
    move-result-wide v11

    .line 723
    const-string v1, "Unimplemented"

    .line 724
    .line 725
    packed-switch v15, :pswitch_data_0

    .line 726
    .line 727
    .line 728
    :pswitch_0
    invoke-static {v11, v12, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(JLjava/nio/ByteBuffer;)J

    .line 729
    .line 730
    .line 731
    move-result-wide v19

    .line 732
    cmp-long v1, v19, v11

    .line 733
    .line 734
    if-ltz v1, :cond_1e

    .line 735
    .line 736
    :cond_1d
    :goto_16
    const-wide/16 v17, 0x0

    .line 737
    .line 738
    goto/16 :goto_1c

    .line 739
    .line 740
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    .line 741
    .line 742
    const-string v1, "Incomplete property of type "

    .line 743
    .line 744
    invoke-static {v15, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    :pswitch_1
    invoke-static {v11, v12, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(JLjava/nio/ByteBuffer;)J

    .line 753
    .line 754
    .line 755
    move-result-wide v19

    .line 756
    cmp-long v1, v19, v11

    .line 757
    .line 758
    if-ltz v1, :cond_1f

    .line 759
    .line 760
    goto :goto_16

    .line 761
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 762
    .line 763
    const-string v1, "Incomplete kDummy property"

    .line 764
    .line 765
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    throw v0

    .line 769
    :pswitch_2
    new-instance v0, Ljava/io/IOException;

    .line 770
    .line 771
    const-string v1, "kStartPos is unsupported, please report"

    .line 772
    .line 773
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    throw v0

    .line 777
    :pswitch_3
    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 782
    .line 783
    .line 784
    move-result v11

    .line 785
    and-int/lit16 v11, v11, 0xff

    .line 786
    .line 787
    if-nez v11, :cond_21

    .line 788
    .line 789
    move v1, v8

    .line 790
    :goto_17
    if-ge v1, v6, :cond_1d

    .line 791
    .line 792
    aget-object v11, v7, v1

    .line 793
    .line 794
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    .line 795
    .line 796
    .line 797
    move-result v12

    .line 798
    iput-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    .line 799
    .line 800
    aget-object v11, v7, v1

    .line 801
    .line 802
    iget-boolean v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    .line 803
    .line 804
    if-eqz v11, :cond_20

    .line 805
    .line 806
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 807
    .line 808
    .line 809
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 810
    .line 811
    goto :goto_17

    .line 812
    :cond_21
    new-instance v0, Ljava/io/IOException;

    .line 813
    .line 814
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    throw v0

    .line 818
    :pswitch_4
    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 823
    .line 824
    .line 825
    move-result v11

    .line 826
    and-int/lit16 v11, v11, 0xff

    .line 827
    .line 828
    if-nez v11, :cond_23

    .line 829
    .line 830
    move v1, v8

    .line 831
    :goto_18
    if-ge v1, v6, :cond_1d

    .line 832
    .line 833
    aget-object v11, v7, v1

    .line 834
    .line 835
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    .line 836
    .line 837
    .line 838
    move-result v12

    .line 839
    iput-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 840
    .line 841
    aget-object v11, v7, v1

    .line 842
    .line 843
    iget-boolean v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 844
    .line 845
    if-eqz v11, :cond_22

    .line 846
    .line 847
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 848
    .line 849
    .line 850
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 851
    .line 852
    goto :goto_18

    .line 853
    :cond_23
    new-instance v0, Ljava/io/IOException;

    .line 854
    .line 855
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v0

    .line 859
    :pswitch_5
    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 864
    .line 865
    .line 866
    move-result v11

    .line 867
    and-int/lit16 v11, v11, 0xff

    .line 868
    .line 869
    if-nez v11, :cond_25

    .line 870
    .line 871
    move v1, v8

    .line 872
    :goto_19
    if-ge v1, v6, :cond_1d

    .line 873
    .line 874
    aget-object v11, v7, v1

    .line 875
    .line 876
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    .line 877
    .line 878
    .line 879
    move-result v12

    .line 880
    iput-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 881
    .line 882
    aget-object v11, v7, v1

    .line 883
    .line 884
    iget-boolean v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 885
    .line 886
    if-eqz v11, :cond_24

    .line 887
    .line 888
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 889
    .line 890
    .line 891
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 892
    .line 893
    goto :goto_19

    .line 894
    :cond_25
    new-instance v0, Ljava/io/IOException;

    .line 895
    .line 896
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    throw v0

    .line 900
    :pswitch_6
    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 901
    .line 902
    .line 903
    move-result-object v5

    .line 904
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 905
    .line 906
    .line 907
    move-result v11

    .line 908
    and-int/lit16 v11, v11, 0xff

    .line 909
    .line 910
    if-nez v11, :cond_27

    .line 911
    .line 912
    move v1, v8

    .line 913
    :goto_1a
    if-ge v1, v6, :cond_1d

    .line 914
    .line 915
    aget-object v11, v7, v1

    .line 916
    .line 917
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    .line 918
    .line 919
    .line 920
    move-result v12

    .line 921
    iput-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 922
    .line 923
    aget-object v11, v7, v1

    .line 924
    .line 925
    iget-boolean v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 926
    .line 927
    if-eqz v11, :cond_26

    .line 928
    .line 929
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 930
    .line 931
    .line 932
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 933
    .line 934
    goto :goto_1a

    .line 935
    :cond_27
    new-instance v0, Ljava/io/IOException;

    .line 936
    .line 937
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    throw v0

    .line 941
    :pswitch_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    and-int/lit16 v1, v1, 0xff

    .line 946
    .line 947
    if-nez v1, :cond_2c

    .line 948
    .line 949
    sub-long/2addr v11, v13

    .line 950
    and-long v19, v11, v13

    .line 951
    .line 952
    const-wide/16 v17, 0x0

    .line 953
    .line 954
    cmp-long v1, v19, v17

    .line 955
    .line 956
    if-nez v1, :cond_2b

    .line 957
    .line 958
    long-to-int v1, v11

    .line 959
    new-array v5, v1, [B

    .line 960
    .line 961
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 962
    .line 963
    .line 964
    move v11, v8

    .line 965
    move v12, v11

    .line 966
    move v15, v12

    .line 967
    :goto_1b
    if-ge v11, v1, :cond_29

    .line 968
    .line 969
    aget-byte v19, v5, v11

    .line 970
    .line 971
    if-nez v19, :cond_28

    .line 972
    .line 973
    add-int/lit8 v19, v11, 0x1

    .line 974
    .line 975
    aget-byte v19, v5, v19

    .line 976
    .line 977
    if-nez v19, :cond_28

    .line 978
    .line 979
    add-int/lit8 v19, v15, 0x1

    .line 980
    .line 981
    aget-object v15, v7, v15

    .line 982
    .line 983
    new-instance v8, Ljava/lang/String;

    .line 984
    .line 985
    sub-int v13, v11, v12

    .line 986
    .line 987
    const-string v14, "UTF-16LE"

    .line 988
    .line 989
    invoke-direct {v8, v5, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 990
    .line 991
    .line 992
    iput-object v8, v15, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    .line 993
    .line 994
    add-int/lit8 v12, v11, 0x2

    .line 995
    .line 996
    move/from16 v15, v19

    .line 997
    .line 998
    :cond_28
    add-int/lit8 v11, v11, 0x2

    .line 999
    .line 1000
    const/4 v8, 0x0

    .line 1001
    const-wide/16 v13, 0x1

    .line 1002
    .line 1003
    goto :goto_1b

    .line 1004
    :cond_29
    if-ne v12, v1, :cond_2a

    .line 1005
    .line 1006
    if-ne v15, v6, :cond_2a

    .line 1007
    .line 1008
    goto :goto_1c

    .line 1009
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    .line 1010
    .line 1011
    const-string v1, "Error parsing file names"

    .line 1012
    .line 1013
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    throw v0

    .line 1017
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    .line 1018
    .line 1019
    const-string v1, "File names length invalid"

    .line 1020
    .line 1021
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    throw v0

    .line 1025
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    .line 1026
    .line 1027
    const-string v1, "Not implemented"

    .line 1028
    .line 1029
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    throw v0

    .line 1033
    :pswitch_8
    const-wide/16 v17, 0x0

    .line 1034
    .line 1035
    if-eqz v4, :cond_2d

    .line 1036
    .line 1037
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    move-object v10, v1

    .line 1046
    goto :goto_1c

    .line 1047
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    .line 1048
    .line 1049
    const-string v1, "Header format error: kEmptyStream must appear before kAnti"

    .line 1050
    .line 1051
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    throw v0

    .line 1055
    :pswitch_9
    const-wide/16 v17, 0x0

    .line 1056
    .line 1057
    if-eqz v4, :cond_2e

    .line 1058
    .line 1059
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    move-object v9, v1

    .line 1068
    goto :goto_1c

    .line 1069
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    .line 1070
    .line 1071
    const-string v1, "Header format error: kEmptyStream must appear before kEmptyFile"

    .line 1072
    .line 1073
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    throw v0

    .line 1077
    :pswitch_a
    const-wide/16 v17, 0x0

    .line 1078
    .line 1079
    invoke-static {v2, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    move-object v4, v1

    .line 1084
    :goto_1c
    const/4 v1, 0x0

    .line 1085
    const/4 v5, 0x1

    .line 1086
    const/4 v8, 0x0

    .line 1087
    const-wide/16 v13, 0x1

    .line 1088
    .line 1089
    goto/16 :goto_8

    .line 1090
    .line 1091
    :cond_2f
    :goto_1d
    if-nez v4, :cond_30

    .line 1092
    .line 1093
    iput-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 1094
    .line 1095
    const/4 v1, 0x0

    .line 1096
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 1097
    .line 1098
    return-void

    .line 1099
    :cond_30
    new-instance v0, Ljava/io/IOException;

    .line 1100
    .line 1101
    const-string v1, "Badly terminated header, found "

    .line 1102
    .line 1103
    invoke-static {v4, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    throw v0

    .line 1111
    :cond_31
    new-instance v0, Ljava/io/IOException;

    .line 1112
    .line 1113
    const-string v1, "Additional streams unsupported"

    .line 1114
    .line 1115
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    throw v0

    .line 1119
    :cond_32
    new-instance v0, Ljava/io/IOException;

    .line 1120
    .line 1121
    const-string v1, "Broken or unsupported archive: no Header"

    .line 1122
    .line 1123
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :cond_33
    new-instance v0, Ljava/io/IOException;

    .line 1128
    .line 1129
    const-string v1, "NextHeader CRC mismatch"

    .line 1130
    .line 1131
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    throw v0

    .line 1135
    :cond_34
    new-instance v0, Ljava/io/IOException;

    .line 1136
    .line 1137
    const-string v1, "cannot handle nextHeaderSize "

    .line 1138
    .line 1139
    invoke-static {v8, v9, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    throw v0

    .line 1147
    :catchall_2
    move-exception v0

    .line 1148
    move-object v1, v0

    .line 1149
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1150
    .line 1151
    .line 1152
    goto :goto_1e

    .line 1153
    :catchall_3
    move-exception v0

    .line 1154
    move-object v2, v0

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1156
    .line 1157
    .line 1158
    :goto_1e
    throw v1

    .line 1159
    :cond_35
    new-instance v0, Ljava/io/IOException;

    .line 1160
    .line 1161
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v2

    .line 1169
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    const-string v2, "Unsupported 7z version (%d,%d)"

    .line 1174
    .line 1175
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    throw v0

    .line 1183
    :cond_36
    new-instance v0, Ljava/io/IOException;

    .line 1184
    .line 1185
    const-string v1, "Bad 7z signature"

    .line 1186
    .line 1187
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    throw v0

    .line 1191
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/util/BitSet;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_1
    return-object p0
.end method

.method public static readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v2, p1, :cond_2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    const/16 v3, 0x80

    .line 21
    .line 22
    :cond_0
    and-int v5, v4, v3

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v5, v1

    .line 29
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 30
    .line 31
    .line 32
    ushr-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v0
.end method

.method public static readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    const/16 v4, 0x9

    .line 13
    .line 14
    const-wide v5, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/16 v7, 0xa

    .line 20
    .line 21
    if-ne v2, v3, :cond_6

    .line 22
    .line 23
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 28
    .line 29
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    and-int/lit16 v9, v9, 0xff

    .line 38
    .line 39
    if-ne v9, v4, :cond_1

    .line 40
    .line 41
    long-to-int v9, v2

    .line 42
    new-array v9, v9, [J

    .line 43
    .line 44
    iput-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    :goto_0
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 48
    .line 49
    array-length v11, v10

    .line 50
    if-ge v9, v11, :cond_0

    .line 51
    .line 52
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v11

    .line 56
    aput-wide v11, v10, v9

    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    and-int/lit16 v9, v9, 0xff

    .line 66
    .line 67
    :cond_1
    if-ne v9, v7, :cond_4

    .line 68
    .line 69
    long-to-int v2, v2

    .line 70
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 75
    .line 76
    new-array v3, v2, [J

    .line 77
    .line 78
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    :goto_1
    if-ge v3, v2, :cond_3

    .line 82
    .line 83
    iget-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 84
    .line 85
    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_2

    .line 90
    .line 91
    iget-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    int-to-long v10, v10

    .line 98
    and-long/2addr v10, v5

    .line 99
    aput-wide v10, v9, v3

    .line 100
    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    and-int/lit16 v9, v2, 0xff

    .line 109
    .line 110
    :cond_4
    if-nez v9, :cond_5

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    and-int/lit16 v2, v2, 0xff

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 120
    .line 121
    const-string v1, "Badly terminated PackInfo ("

    .line 122
    .line 123
    const-string v2, ")"

    .line 124
    .line 125
    invoke-static {v9, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    :goto_2
    const/4 v9, 0x7

    .line 134
    if-ne v2, v9, :cond_22

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    and-int/lit16 v2, v2, 0xff

    .line 141
    .line 142
    const/16 v9, 0xb

    .line 143
    .line 144
    if-ne v2, v9, :cond_21

    .line 145
    .line 146
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v12

    .line 150
    long-to-int v2, v12

    .line 151
    new-array v9, v2, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 152
    .line 153
    iput-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    and-int/lit16 v12, v12, 0xff

    .line 160
    .line 161
    if-nez v12, :cond_20

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    :goto_3
    if-ge v12, v2, :cond_18

    .line 165
    .line 166
    new-instance v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 167
    .line 168
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v14

    .line 175
    long-to-int v14, v14

    .line 176
    new-array v15, v14, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    const-wide/16 v5, 0x0

    .line 180
    .line 181
    const-wide/16 v7, 0x0

    .line 182
    .line 183
    :goto_4
    if-ge v4, v14, :cond_d

    .line 184
    .line 185
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 188
    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    iput-object v10, v3, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 192
    .line 193
    aput-object v3, v15, v4

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    and-int/lit8 v10, v3, 0xf

    .line 200
    .line 201
    and-int/lit8 v11, v3, 0x10

    .line 202
    .line 203
    if-nez v11, :cond_7

    .line 204
    .line 205
    const/4 v11, 0x1

    .line 206
    goto :goto_5

    .line 207
    :cond_7
    const/4 v11, 0x0

    .line 208
    :goto_5
    and-int/lit8 v18, v3, 0x20

    .line 209
    .line 210
    if-eqz v18, :cond_8

    .line 211
    .line 212
    const/16 v18, 0x1

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_8
    const/16 v18, 0x0

    .line 216
    .line 217
    :goto_6
    and-int/lit16 v3, v3, 0x80

    .line 218
    .line 219
    move/from16 v19, v14

    .line 220
    .line 221
    if-eqz v3, :cond_9

    .line 222
    .line 223
    const/4 v3, 0x1

    .line 224
    goto :goto_7

    .line 225
    :cond_9
    const/4 v3, 0x0

    .line 226
    :goto_7
    aget-object v14, v15, v4

    .line 227
    .line 228
    new-array v10, v10, [B

    .line 229
    .line 230
    iput-object v10, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 231
    .line 232
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    .line 235
    if-eqz v11, :cond_a

    .line 236
    .line 237
    aget-object v10, v15, v4

    .line 238
    .line 239
    move v11, v2

    .line 240
    const-wide/16 v1, 0x1

    .line 241
    .line 242
    iput-wide v1, v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 243
    .line 244
    iput-wide v1, v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 245
    .line 246
    move v2, v11

    .line 247
    goto :goto_8

    .line 248
    :cond_a
    move v11, v2

    .line 249
    aget-object v1, v15, v4

    .line 250
    .line 251
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 256
    .line 257
    aget-object v1, v15, v4

    .line 258
    .line 259
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v10

    .line 263
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 264
    .line 265
    :goto_8
    aget-object v1, v15, v4

    .line 266
    .line 267
    iget-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 268
    .line 269
    add-long/2addr v5, v10

    .line 270
    iget-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 271
    .line 272
    add-long/2addr v7, v10

    .line 273
    if-eqz v18, :cond_b

    .line 274
    .line 275
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v10

    .line 279
    aget-object v1, v15, v4

    .line 280
    .line 281
    long-to-int v10, v10

    .line 282
    new-array v10, v10, [B

    .line 283
    .line 284
    iput-object v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 285
    .line 286
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    .line 289
    :cond_b
    if-nez v3, :cond_c

    .line 290
    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 292
    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    move/from16 v14, v19

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 299
    .line 300
    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 301
    .line 302
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_d
    iput-object v15, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 307
    .line 308
    iput-wide v5, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 309
    .line 310
    iput-wide v7, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 311
    .line 312
    const-wide/16 v3, 0x0

    .line 313
    .line 314
    cmp-long v1, v7, v3

    .line 315
    .line 316
    if-eqz v1, :cond_17

    .line 317
    .line 318
    const-wide/16 v10, 0x1

    .line 319
    .line 320
    sub-long/2addr v7, v10

    .line 321
    long-to-int v1, v7

    .line 322
    new-array v10, v1, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 323
    .line 324
    const/4 v11, 0x0

    .line 325
    :goto_9
    if-ge v11, v1, :cond_e

    .line 326
    .line 327
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 328
    .line 329
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 330
    .line 331
    .line 332
    aput-object v14, v10, v11

    .line 333
    .line 334
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 335
    .line 336
    .line 337
    move-result-wide v3

    .line 338
    iput-wide v3, v14, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 339
    .line 340
    aget-object v3, v10, v11

    .line 341
    .line 342
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v14

    .line 346
    iput-wide v14, v3, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 347
    .line 348
    add-int/lit8 v11, v11, 0x1

    .line 349
    .line 350
    const-wide/16 v3, 0x0

    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_e
    iput-object v10, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 354
    .line 355
    cmp-long v1, v5, v7

    .line 356
    .line 357
    if-ltz v1, :cond_16

    .line 358
    .line 359
    sub-long v3, v5, v7

    .line 360
    .line 361
    long-to-int v1, v3

    .line 362
    new-array v7, v1, [J

    .line 363
    .line 364
    const-wide/16 v10, 0x1

    .line 365
    .line 366
    cmp-long v3, v3, v10

    .line 367
    .line 368
    if-nez v3, :cond_14

    .line 369
    .line 370
    const/4 v1, 0x0

    .line 371
    :goto_a
    long-to-int v3, v5

    .line 372
    if-ge v1, v3, :cond_12

    .line 373
    .line 374
    const/4 v4, 0x0

    .line 375
    :goto_b
    iget-object v8, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 376
    .line 377
    array-length v10, v8

    .line 378
    if-ge v4, v10, :cond_10

    .line 379
    .line 380
    aget-object v8, v8, v4

    .line 381
    .line 382
    iget-wide v10, v8, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 383
    .line 384
    int-to-long v14, v1

    .line 385
    cmp-long v8, v10, v14

    .line 386
    .line 387
    if-nez v8, :cond_f

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_10
    const/4 v4, -0x1

    .line 394
    :goto_c
    if-gez v4, :cond_11

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_12
    :goto_d
    if-eq v1, v3, :cond_13

    .line 401
    .line 402
    int-to-long v3, v1

    .line 403
    const/4 v1, 0x0

    .line 404
    aput-wide v3, v7, v1

    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 408
    .line 409
    const-string v1, "Couldn\'t find stream\'s bind pair index"

    .line 410
    .line 411
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :cond_14
    const/4 v3, 0x0

    .line 416
    :goto_e
    if-ge v3, v1, :cond_15

    .line 417
    .line 418
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4

    .line 422
    aput-wide v4, v7, v3

    .line 423
    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_15
    :goto_f
    iput-object v7, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 428
    .line 429
    aput-object v13, v9, v12

    .line 430
    .line 431
    add-int/lit8 v12, v12, 0x1

    .line 432
    .line 433
    move-object/from16 v1, p1

    .line 434
    .line 435
    const/16 v4, 0x9

    .line 436
    .line 437
    const-wide v5, 0xffffffffL

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    const/16 v7, 0xa

    .line 443
    .line 444
    goto/16 :goto_3

    .line 445
    .line 446
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 447
    .line 448
    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    .line 449
    .line 450
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 455
    .line 456
    const-string v1, "Total output streams can\'t be 0"

    .line 457
    .line 458
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    and-int/lit16 v1, v1, 0xff

    .line 467
    .line 468
    const/16 v3, 0xc

    .line 469
    .line 470
    if-ne v1, v3, :cond_1f

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    :goto_10
    if-ge v1, v2, :cond_1a

    .line 474
    .line 475
    aget-object v3, v9, v1

    .line 476
    .line 477
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 478
    .line 479
    long-to-int v4, v4

    .line 480
    new-array v4, v4, [J

    .line 481
    .line 482
    iput-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 483
    .line 484
    const/4 v4, 0x0

    .line 485
    :goto_11
    int-to-long v5, v4

    .line 486
    iget-wide v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 487
    .line 488
    cmp-long v5, v5, v7

    .line 489
    .line 490
    if-gez v5, :cond_19

    .line 491
    .line 492
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 493
    .line 494
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 495
    .line 496
    .line 497
    move-result-wide v6

    .line 498
    aput-wide v6, v5, v4

    .line 499
    .line 500
    add-int/lit8 v4, v4, 0x1

    .line 501
    .line 502
    goto :goto_11

    .line 503
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 504
    .line 505
    goto :goto_10

    .line 506
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    and-int/lit16 v1, v1, 0xff

    .line 511
    .line 512
    const/16 v3, 0xa

    .line 513
    .line 514
    if-ne v1, v3, :cond_1d

    .line 515
    .line 516
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    const/4 v3, 0x0

    .line 521
    :goto_12
    if-ge v3, v2, :cond_1c

    .line 522
    .line 523
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    if-eqz v4, :cond_1b

    .line 528
    .line 529
    aget-object v4, v9, v3

    .line 530
    .line 531
    const/4 v5, 0x1

    .line 532
    iput-boolean v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 533
    .line 534
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    int-to-long v5, v5

    .line 539
    const-wide v7, 0xffffffffL

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    and-long/2addr v5, v7

    .line 545
    iput-wide v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 546
    .line 547
    goto :goto_13

    .line 548
    :cond_1b
    aget-object v4, v9, v3

    .line 549
    .line 550
    const/4 v5, 0x0

    .line 551
    iput-boolean v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 552
    .line 553
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 554
    .line 555
    goto :goto_12

    .line 556
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    and-int/lit16 v1, v1, 0xff

    .line 561
    .line 562
    :cond_1d
    if-nez v1, :cond_1e

    .line 563
    .line 564
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    and-int/lit16 v2, v1, 0xff

    .line 569
    .line 570
    move-object/from16 v4, p1

    .line 571
    .line 572
    const/4 v1, 0x0

    .line 573
    goto :goto_14

    .line 574
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    .line 575
    .line 576
    const-string v1, "Badly terminated UnpackInfo"

    .line 577
    .line 578
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v0

    .line 582
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 583
    .line 584
    const-string v2, "Expected kCodersUnpackSize, got "

    .line 585
    .line 586
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v0

    .line 594
    :cond_20
    new-instance v0, Ljava/io/IOException;

    .line 595
    .line 596
    const-string v1, "External unsupported"

    .line 597
    .line 598
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :cond_21
    new-instance v0, Ljava/io/IOException;

    .line 603
    .line 604
    const-string v1, "Expected kFolder, got "

    .line 605
    .line 606
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v0

    .line 614
    :cond_22
    const/4 v1, 0x0

    .line 615
    new-array v3, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 616
    .line 617
    move-object/from16 v4, p1

    .line 618
    .line 619
    iput-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 620
    .line 621
    :goto_14
    const/16 v3, 0x8

    .line 622
    .line 623
    if-ne v2, v3, :cond_35

    .line 624
    .line 625
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 626
    .line 627
    array-length v3, v2

    .line 628
    move v5, v1

    .line 629
    :goto_15
    if-ge v5, v3, :cond_23

    .line 630
    .line 631
    aget-object v6, v2, v5

    .line 632
    .line 633
    const/4 v7, 0x1

    .line 634
    iput v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 635
    .line 636
    add-int/lit8 v5, v5, 0x1

    .line 637
    .line 638
    goto :goto_15

    .line 639
    :cond_23
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 640
    .line 641
    array-length v2, v2

    .line 642
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    and-int/lit16 v3, v3, 0xff

    .line 647
    .line 648
    const/16 v5, 0xd

    .line 649
    .line 650
    if-ne v3, v5, :cond_25

    .line 651
    .line 652
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 653
    .line 654
    array-length v3, v2

    .line 655
    move v5, v1

    .line 656
    move v6, v5

    .line 657
    :goto_16
    if-ge v5, v3, :cond_24

    .line 658
    .line 659
    aget-object v7, v2, v5

    .line 660
    .line 661
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 662
    .line 663
    .line 664
    move-result-wide v8

    .line 665
    long-to-int v10, v8

    .line 666
    iput v10, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 667
    .line 668
    int-to-long v6, v6

    .line 669
    add-long/2addr v6, v8

    .line 670
    long-to-int v6, v6

    .line 671
    add-int/lit8 v5, v5, 0x1

    .line 672
    .line 673
    goto :goto_16

    .line 674
    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    and-int/lit16 v3, v2, 0xff

    .line 679
    .line 680
    move v2, v6

    .line 681
    :cond_25
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 682
    .line 683
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 684
    .line 685
    .line 686
    new-array v6, v2, [J

    .line 687
    .line 688
    iput-object v6, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 689
    .line 690
    new-instance v6, Ljava/util/BitSet;

    .line 691
    .line 692
    invoke-direct {v6, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 693
    .line 694
    .line 695
    iput-object v6, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 696
    .line 697
    new-array v2, v2, [J

    .line 698
    .line 699
    iput-object v2, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 700
    .line 701
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 702
    .line 703
    array-length v6, v2

    .line 704
    move v7, v1

    .line 705
    move v8, v7

    .line 706
    :goto_17
    if-ge v7, v6, :cond_29

    .line 707
    .line 708
    aget-object v9, v2, v7

    .line 709
    .line 710
    iget v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 711
    .line 712
    if-nez v10, :cond_26

    .line 713
    .line 714
    goto :goto_1a

    .line 715
    :cond_26
    const/16 v10, 0x9

    .line 716
    .line 717
    if-ne v3, v10, :cond_28

    .line 718
    .line 719
    move v10, v8

    .line 720
    const-wide/16 v11, 0x0

    .line 721
    .line 722
    move v8, v1

    .line 723
    :goto_18
    iget v13, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 724
    .line 725
    const/4 v14, 0x1

    .line 726
    sub-int/2addr v13, v14

    .line 727
    if-ge v8, v13, :cond_27

    .line 728
    .line 729
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 730
    .line 731
    .line 732
    move-result-wide v13

    .line 733
    iget-object v15, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 734
    .line 735
    add-int/lit8 v17, v10, 0x1

    .line 736
    .line 737
    aput-wide v13, v15, v10

    .line 738
    .line 739
    add-long/2addr v11, v13

    .line 740
    add-int/lit8 v8, v8, 0x1

    .line 741
    .line 742
    move/from16 v10, v17

    .line 743
    .line 744
    goto :goto_18

    .line 745
    :cond_27
    move v8, v10

    .line 746
    goto :goto_19

    .line 747
    :cond_28
    const-wide/16 v11, 0x0

    .line 748
    .line 749
    :goto_19
    iget-object v10, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 750
    .line 751
    add-int/lit8 v13, v8, 0x1

    .line 752
    .line 753
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 754
    .line 755
    .line 756
    move-result-wide v14

    .line 757
    sub-long/2addr v14, v11

    .line 758
    aput-wide v14, v10, v8

    .line 759
    .line 760
    move v8, v13

    .line 761
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    .line 762
    .line 763
    goto :goto_17

    .line 764
    :cond_29
    const/16 v7, 0x9

    .line 765
    .line 766
    if-ne v3, v7, :cond_2a

    .line 767
    .line 768
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    and-int/lit16 v3, v2, 0xff

    .line 773
    .line 774
    :cond_2a
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 775
    .line 776
    array-length v6, v2

    .line 777
    move v7, v1

    .line 778
    move v8, v7

    .line 779
    :goto_1b
    if-ge v7, v6, :cond_2d

    .line 780
    .line 781
    aget-object v9, v2, v7

    .line 782
    .line 783
    iget v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 784
    .line 785
    const/4 v11, 0x1

    .line 786
    if-ne v10, v11, :cond_2b

    .line 787
    .line 788
    iget-boolean v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 789
    .line 790
    if-nez v9, :cond_2c

    .line 791
    .line 792
    :cond_2b
    add-int/2addr v8, v10

    .line 793
    :cond_2c
    add-int/lit8 v7, v7, 0x1

    .line 794
    .line 795
    goto :goto_1b

    .line 796
    :cond_2d
    const/16 v7, 0xa

    .line 797
    .line 798
    if-ne v3, v7, :cond_33

    .line 799
    .line 800
    invoke-static {v0, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    new-array v3, v8, [J

    .line 805
    .line 806
    move v6, v1

    .line 807
    :goto_1c
    if-ge v6, v8, :cond_2f

    .line 808
    .line 809
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    .line 810
    .line 811
    .line 812
    move-result v7

    .line 813
    if-eqz v7, :cond_2e

    .line 814
    .line 815
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    int-to-long v9, v7

    .line 820
    const-wide v11, 0xffffffffL

    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    and-long/2addr v9, v11

    .line 826
    aput-wide v9, v3, v6

    .line 827
    .line 828
    goto :goto_1d

    .line 829
    :cond_2e
    const-wide v11, 0xffffffffL

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    :goto_1d
    add-int/lit8 v6, v6, 0x1

    .line 835
    .line 836
    goto :goto_1c

    .line 837
    :cond_2f
    iget-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 838
    .line 839
    array-length v7, v6

    .line 840
    move v8, v1

    .line 841
    move v9, v8

    .line 842
    move v10, v9

    .line 843
    :goto_1e
    if-ge v8, v7, :cond_32

    .line 844
    .line 845
    aget-object v11, v6, v8

    .line 846
    .line 847
    iget v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 848
    .line 849
    const/4 v13, 0x1

    .line 850
    if-ne v12, v13, :cond_30

    .line 851
    .line 852
    iget-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 853
    .line 854
    if-eqz v12, :cond_30

    .line 855
    .line 856
    iget-object v12, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 857
    .line 858
    invoke-virtual {v12, v9, v13}, Ljava/util/BitSet;->set(IZ)V

    .line 859
    .line 860
    .line 861
    iget-object v12, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 862
    .line 863
    iget-wide v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 864
    .line 865
    aput-wide v14, v12, v9

    .line 866
    .line 867
    add-int/lit8 v9, v9, 0x1

    .line 868
    .line 869
    goto :goto_20

    .line 870
    :cond_30
    move v12, v10

    .line 871
    move v10, v9

    .line 872
    move v9, v1

    .line 873
    :goto_1f
    iget v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 874
    .line 875
    if-ge v9, v14, :cond_31

    .line 876
    .line 877
    iget-object v14, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 878
    .line 879
    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    .line 880
    .line 881
    .line 882
    move-result v15

    .line 883
    invoke-virtual {v14, v10, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 884
    .line 885
    .line 886
    iget-object v14, v5, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 887
    .line 888
    aget-wide v15, v3, v12

    .line 889
    .line 890
    aput-wide v15, v14, v10

    .line 891
    .line 892
    add-int/lit8 v10, v10, 0x1

    .line 893
    .line 894
    add-int/lit8 v12, v12, 0x1

    .line 895
    .line 896
    add-int/lit8 v9, v9, 0x1

    .line 897
    .line 898
    goto :goto_1f

    .line 899
    :cond_31
    move v9, v10

    .line 900
    move v10, v12

    .line 901
    :goto_20
    add-int/lit8 v8, v8, 0x1

    .line 902
    .line 903
    goto :goto_1e

    .line 904
    :cond_32
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 905
    .line 906
    .line 907
    move-result v1

    .line 908
    and-int/lit16 v3, v1, 0xff

    .line 909
    .line 910
    :cond_33
    if-nez v3, :cond_34

    .line 911
    .line 912
    iput-object v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 913
    .line 914
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 915
    .line 916
    .line 917
    move-result v0

    .line 918
    and-int/lit16 v2, v0, 0xff

    .line 919
    .line 920
    goto :goto_21

    .line 921
    :cond_34
    new-instance v0, Ljava/io/IOException;

    .line 922
    .line 923
    const-string v1, "Badly terminated SubStreamsInfo"

    .line 924
    .line 925
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    throw v0

    .line 929
    :cond_35
    :goto_21
    if-nez v2, :cond_36

    .line 930
    .line 931
    return-void

    .line 932
    :cond_36
    new-instance v0, Ljava/io/IOException;

    .line 933
    .line 934
    const-string v1, "Badly terminated StreamsInfo"

    .line 935
    .line 936
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    throw v0
.end method

.method public static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const/16 v2, 0x80

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move-wide v6, v3

    .line 14
    :goto_0
    const/16 v8, 0x8

    .line 15
    .line 16
    if-ge v5, v8, :cond_1

    .line 17
    .line 18
    int-to-long v9, v2

    .line 19
    and-long/2addr v9, v0

    .line 20
    cmp-long v9, v9, v3

    .line 21
    .line 22
    if-nez v9, :cond_0

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    int-to-long v2, v2

    .line 27
    and-long/2addr v0, v2

    .line 28
    mul-int/2addr v5, v8

    .line 29
    shl-long/2addr v0, v5

    .line 30
    or-long/2addr v0, v6

    .line 31
    return-wide v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    and-int/lit16 v8, v8, 0xff

    .line 37
    .line 38
    int-to-long v8, v8

    .line 39
    mul-int/lit8 v10, v5, 0x8

    .line 40
    .line 41
    shl-long/2addr v8, v10

    .line 42
    or-long/2addr v6, v8

    .line 43
    ushr-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-wide v6
.end method

.method public static skipBytesFully(JLjava/nio/ByteBuffer;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    cmp-long v3, v1, p0

    .line 20
    .line 21
    if-gez v3, :cond_1

    .line 22
    .line 23
    move-wide p0, v1

    .line 24
    :cond_1
    long-to-int v1, p0

    .line 25
    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    return-wide p0
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 24
    .line 25
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 14

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x1

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    .line 13
    return-object v4

    .line 14
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 15
    .line 16
    iput v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 17
    .line 18
    aget-object v5, v2, v3

    .line 19
    .line 20
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 21
    .line 22
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 23
    .line 24
    aget v1, v1, v3

    .line 25
    .line 26
    if-gez v1, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 36
    .line 37
    if-ne v3, v1, :cond_2

    .line 38
    .line 39
    aget-object v0, v2, v0

    .line 40
    .line 41
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 49
    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 65
    .line 66
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 67
    .line 68
    aget-object v2, v2, v1

    .line 69
    .line 70
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 71
    .line 72
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 73
    .line 74
    aget v1, v4, v1

    .line 75
    .line 76
    const-wide/16 v6, 0x20

    .line 77
    .line 78
    iget-wide v8, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 79
    .line 80
    add-long/2addr v8, v6

    .line 81
    iget-object v0, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 82
    .line 83
    aget-wide v3, v0, v1

    .line 84
    .line 85
    add-long/2addr v8, v3

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 87
    .line 88
    invoke-interface {v0, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    .line 92
    .line 93
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 94
    .line 95
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 96
    .line 97
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 98
    .line 99
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 100
    .line 101
    iget-object v7, v7, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 102
    .line 103
    aget-wide v7, v7, v1

    .line 104
    .line 105
    invoke-direct {v4, v6, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/util/LinkedList;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    move-object v7, v0

    .line 128
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 139
    .line 140
    iget-wide v8, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 141
    .line 142
    const-wide/16 v10, 0x1

    .line 143
    .line 144
    cmp-long v4, v8, v10

    .line 145
    .line 146
    if-nez v4, :cond_6

    .line 147
    .line 148
    iget-wide v8, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 149
    .line 150
    cmp-long v4, v8, v10

    .line 151
    .line 152
    if-nez v4, :cond_6

    .line 153
    .line 154
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 155
    .line 156
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v8, v2, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 163
    .line 164
    if-eqz v8, :cond_5

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    :goto_1
    iget-object v9, v2, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 168
    .line 169
    array-length v10, v9

    .line 170
    if-ge v8, v10, :cond_5

    .line 171
    .line 172
    aget-object v9, v9, v8

    .line 173
    .line 174
    if-ne v9, v0, :cond_4

    .line 175
    .line 176
    iget-object v9, v2, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 177
    .line 178
    aget-wide v8, v9, v8

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    const-wide/16 v8, 0x0

    .line 185
    .line 186
    :goto_2
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 187
    .line 188
    move-object v10, v0

    .line 189
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 194
    .line 195
    sget-object v8, Lorg/apache/commons/compress/archivers/sevenz/Coders;->CODER_MAP:Ljava/util/Map;

    .line 196
    .line 197
    check-cast v8, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    .line 204
    .line 205
    invoke-virtual {v8, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v6, v4, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 217
    .line 218
    const-string v0, "Multi input/output stream coders are not yet supported"

    .line 219
    .line 220
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :cond_7
    invoke-virtual {v5, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 225
    .line 226
    .line 227
    iget-boolean v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 228
    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 232
    .line 233
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 234
    .line 235
    .line 236
    move-result-wide v8

    .line 237
    iget-wide v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 238
    .line 239
    move-object v6, v0

    .line 240
    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 241
    .line 242
    .line 243
    move-object v7, v0

    .line 244
    :cond_8
    iput-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 245
    .line 246
    :goto_3
    new-instance v9, Lorg/apache/commons/compress/utils/BoundedInputStream;

    .line 247
    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 249
    .line 250
    iget-wide v1, v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 251
    .line 252
    invoke-direct {v9, v0, v1, v2}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 253
    .line 254
    .line 255
    iget-boolean v0, v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    .line 256
    .line 257
    if-eqz v0, :cond_9

    .line 258
    .line 259
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 260
    .line 261
    iget-wide v10, v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 262
    .line 263
    iget-wide v12, v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 264
    .line 265
    move-object v8, v0

    .line 266
    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 267
    .line 268
    .line 269
    move-object v9, v0

    .line 270
    :cond_9
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :goto_4
    return-object v5
.end method

.method public final read(I[B)I
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 6
    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    new-array v0, v1, [B

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_b

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v4, 0x1

    .line 42
    if-le v0, v4, :cond_a

    .line 43
    .line 44
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/io/InputStream;

    .line 51
    .line 52
    const-wide v5, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :goto_1
    cmp-long v7, v5, v2

    .line 58
    .line 59
    if-lez v7, :cond_3

    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    cmp-long v9, v7, v2

    .line 66
    .line 67
    if-nez v9, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    sub-long/2addr v5, v7

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_5

    .line 74
    :cond_3
    :goto_2
    cmp-long v7, v5, v2

    .line 75
    .line 76
    if-lez v7, :cond_9

    .line 77
    .line 78
    sget-object v7, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    .line 79
    .line 80
    const-wide/16 v8, 0x1000

    .line 81
    .line 82
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    long-to-int v8, v8

    .line 87
    if-ltz v8, :cond_7

    .line 88
    .line 89
    const/16 v9, 0x1000

    .line 90
    .line 91
    if-gt v8, v9, :cond_7

    .line 92
    .line 93
    move v9, v1

    .line 94
    :goto_3
    if-eq v9, v8, :cond_5

    .line 95
    .line 96
    sub-int v10, v8, v9

    .line 97
    .line 98
    invoke-virtual {v0, v7, v9, v10}, Ljava/io/InputStream;->read([BII)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const/4 v11, -0x1

    .line 103
    if-ne v10, v11, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    add-int/2addr v9, v10

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    :goto_4
    if-ge v9, v4, :cond_6

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_6
    int-to-long v7, v9

    .line 112
    sub-long/2addr v5, v7

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 115
    .line 116
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 117
    .line 118
    .line 119
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_5
    if-eqz v0, :cond_8

    .line 121
    .line 122
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_6

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_6
    throw p0

    .line 131
    :cond_9
    :goto_7
    if-eqz v0, :cond_1

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_a
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Ljava/io/InputStream;

    .line 144
    .line 145
    :goto_8
    invoke-virtual {p0, p2, v1, p1}, Ljava/io/InputStream;->read([BII)I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    return p0

    .line 150
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string p1, "No current 7z entry (call getNextEntry() first)."

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0
.end method

.method public final readFully(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    if-lt v1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
