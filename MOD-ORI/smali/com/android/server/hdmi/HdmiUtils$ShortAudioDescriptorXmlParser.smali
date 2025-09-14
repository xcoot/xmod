.class public abstract Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 18

    .line 1
    const/4 v9, 0x5

    .line 2
    const/4 v10, 0x4

    .line 3
    const/4 v11, 0x1

    .line 4
    const/4 v12, 0x0

    .line 5
    const/4 v13, 0x3

    .line 6
    const/4 v14, 0x2

    .line 7
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v15

    .line 11
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "config"

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v15, v14, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq v1, v13, :cond_1c

    .line 31
    .line 32
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eq v1, v14, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string/jumbo v3, "device"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1b

    .line 51
    .line 52
    const-string/jumbo v1, "type"

    .line 53
    .line 54
    .line 55
    invoke-interface {v15, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1a

    .line 60
    .line 61
    new-instance v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v15, v14, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eq v3, v13, :cond_18

    .line 74
    .line 75
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eq v3, v14, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string/jumbo v5, "supportedFormat"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_17

    .line 94
    .line 95
    const-string/jumbo v3, "format"

    .line 96
    .line 97
    .line 98
    invoke-interface {v15, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string/jumbo v6, "descriptor"

    .line 103
    .line 104
    .line 105
    invoke-interface {v15, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    :goto_2
    move v3, v12

    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_3
    const/16 v16, -0x1

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v17

    .line 120
    sparse-switch v17, :sswitch_data_0

    .line 121
    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :sswitch_0
    const-string v7, "AUDIO_FORMAT_TRUEHD"

    .line 126
    .line 127
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_4
    const/16 v16, 0xe

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :sswitch_1
    const-string v7, "AUDIO_FORMAT_DD"

    .line 140
    .line 141
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_5

    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_5
    const/16 v16, 0xd

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :sswitch_2
    const-string v7, "AUDIO_FORMAT_LPCM"

    .line 154
    .line 155
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_6

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_6
    const/16 v16, 0xc

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :sswitch_3
    const-string v7, "AUDIO_FORMAT_MP3"

    .line 168
    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_7

    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_7
    const/16 v16, 0xb

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :sswitch_4
    const-string v7, "AUDIO_FORMAT_MAX"

    .line 182
    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_8

    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_8
    const/16 v16, 0xa

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :sswitch_5
    const-string v7, "AUDIO_FORMAT_DTS"

    .line 196
    .line 197
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_9

    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :cond_9
    const/16 v16, 0x9

    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :sswitch_6
    const-string v7, "AUDIO_FORMAT_DST"

    .line 210
    .line 211
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_a

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_a
    const/16 v16, 0x8

    .line 220
    .line 221
    goto/16 :goto_3

    .line 222
    .line 223
    :sswitch_7
    const-string v7, "AUDIO_FORMAT_DDP"

    .line 224
    .line 225
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_b

    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_b
    const/16 v16, 0x7

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :sswitch_8
    const-string v7, "AUDIO_FORMAT_AAC"

    .line 237
    .line 238
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_c

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    const/16 v16, 0x6

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :sswitch_9
    const-string v7, "AUDIO_FORMAT_ONEBITAUDIO"

    .line 249
    .line 250
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-nez v3, :cond_d

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_d
    move/from16 v16, v9

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :sswitch_a
    const-string v7, "AUDIO_FORMAT_MPEG2"

    .line 261
    .line 262
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_e

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_e
    move/from16 v16, v10

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :sswitch_b
    const-string v7, "AUDIO_FORMAT_MPEG1"

    .line 273
    .line 274
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_f

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_f
    move/from16 v16, v13

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :sswitch_c
    const-string v7, "AUDIO_FORMAT_DTSHD"

    .line 285
    .line 286
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-nez v3, :cond_10

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_10
    move/from16 v16, v14

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :sswitch_d
    const-string v7, "AUDIO_FORMAT_ATRAC"

    .line 297
    .line 298
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_11

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_11
    move/from16 v16, v11

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :sswitch_e
    const-string v7, "AUDIO_FORMAT_WMAPRO"

    .line 309
    .line 310
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_12

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_12
    move/from16 v16, v12

    .line 318
    .line 319
    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 320
    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :pswitch_0
    const/16 v3, 0xc

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :pswitch_1
    move v3, v14

    .line 328
    goto :goto_4

    .line 329
    :pswitch_2
    move v3, v11

    .line 330
    goto :goto_4

    .line 331
    :pswitch_3
    move v3, v10

    .line 332
    goto :goto_4

    .line 333
    :pswitch_4
    const/16 v3, 0xf

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :pswitch_5
    const/4 v3, 0x7

    .line 337
    goto :goto_4

    .line 338
    :pswitch_6
    const/16 v3, 0xd

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :pswitch_7
    const/16 v3, 0xa

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :pswitch_8
    const/4 v3, 0x6

    .line 345
    goto :goto_4

    .line 346
    :pswitch_9
    const/16 v3, 0x9

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :pswitch_a
    move v3, v9

    .line 350
    goto :goto_4

    .line 351
    :pswitch_b
    move v3, v13

    .line 352
    goto :goto_4

    .line 353
    :pswitch_c
    const/16 v3, 0xb

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :pswitch_d
    const/16 v3, 0x8

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :pswitch_e
    const/16 v3, 0xe

    .line 360
    .line 361
    :goto_4
    if-eqz v6, :cond_14

    .line 362
    .line 363
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-nez v7, :cond_13

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_13
    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    array-length v7, v6

    .line 375
    if-eq v7, v13, :cond_15

    .line 376
    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v8, "SAD byte array length is not 3. Length = "

    .line 380
    .line 381
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    array-length v6, v6

    .line 385
    const-string v8, "HdmiUtils"

    .line 386
    .line 387
    invoke-static {v7, v6, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_14
    :goto_5
    move-object v6, v2

    .line 391
    :cond_15
    if-eqz v3, :cond_16

    .line 392
    .line 393
    if-eqz v6, :cond_16

    .line 394
    .line 395
    new-instance v7, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 396
    .line 397
    invoke-direct {v7, v3, v6}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    :cond_16
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 404
    .line 405
    .line 406
    invoke-interface {v15, v13, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :cond_17
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_19

    .line 421
    .line 422
    goto :goto_6

    .line 423
    :cond_19
    new-instance v3, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 424
    .line 425
    invoke-direct {v3, v1, v4}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_1a
    :goto_6
    move-object v3, v2

    .line 430
    :goto_7
    if-eqz v3, :cond_0

    .line 431
    .line 432
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_1b
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_1c
    return-object v0

    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x7f0fd0ff -> :sswitch_e
        -0x475c657e -> :sswitch_d
        -0x47321a60 -> :sswitch_c
        -0x46b54d13 -> :sswitch_b
        -0x46b54d12 -> :sswitch_a
        -0x156509f0 -> :sswitch_9
        -0x10db57fc -> :sswitch_8
        -0x10db4c4f -> :sswitch_7
        -0x10db4a7a -> :sswitch_6
        -0x10db4a5c -> :sswitch_5
        -0x10db2adb -> :sswitch_4
        -0x10db292f -> :sswitch_3
        -0xa8a6ed3 -> :sswitch_2
        0x7b6dc7f -> :sswitch_1
        0x7c210789 -> :sswitch_0
    .end sparse-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static skip(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eq v2, v1, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return-void

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
