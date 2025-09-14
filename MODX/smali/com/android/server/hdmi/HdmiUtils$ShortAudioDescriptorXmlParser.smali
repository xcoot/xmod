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

    .line 10
    move-result-object v15

    .line 11
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const-string/jumbo v1, "config"

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v15, v14, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 29
    move-result v1

    .line 30
    if-eq v1, v13, :cond_1c

    .line 32
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 35
    move-result v1

    .line 36
    if-eq v1, v14, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string/jumbo v3, "device"

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1b

    .line 52
    const-string/jumbo v1, "type"

    .line 55
    invoke-interface {v15, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1a

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v15, v14, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_1
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 72
    move-result v3

    .line 73
    if-eq v3, v13, :cond_18

    .line 75
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 78
    move-result v3

    .line 79
    if-eq v3, v14, :cond_2

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    const-string/jumbo v5, "supportedFormat"

    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_17

    .line 95
    const-string/jumbo v3, "format"

    .line 98
    invoke-interface {v15, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    const-string/jumbo v6, "descriptor"

    .line 105
    invoke-interface {v15, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v6

    .line 109
    if-nez v3, :cond_3

    .line 111
    :goto_2
    move v3, v12

    .line 112
    goto/16 :goto_4

    .line 114
    :cond_3
    const/16 v16, -0x1

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 119
    move-result v17

    .line 120
    sparse-switch v17, :sswitch_data_0

    .line 123
    goto/16 :goto_3

    .line 125
    :sswitch_0
    const-string v7, "AUDIO_FORMAT_TRUEHD"

    .line 127
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_4

    .line 133
    goto/16 :goto_3

    .line 135
    :cond_4
    const/16 v16, 0xe

    .line 137
    goto/16 :goto_3

    .line 139
    :sswitch_1
    const-string v7, "AUDIO_FORMAT_DD"

    .line 141
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_5

    .line 147
    goto/16 :goto_3

    .line 149
    :cond_5
    const/16 v16, 0xd

    .line 151
    goto/16 :goto_3

    .line 153
    :sswitch_2
    const-string v7, "AUDIO_FORMAT_LPCM"

    .line 155
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_6

    .line 161
    goto/16 :goto_3

    .line 163
    :cond_6
    const/16 v16, 0xc

    .line 165
    goto/16 :goto_3

    .line 167
    :sswitch_3
    const-string v7, "AUDIO_FORMAT_MP3"

    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_7

    .line 175
    goto/16 :goto_3

    .line 177
    :cond_7
    const/16 v16, 0xb

    .line 179
    goto/16 :goto_3

    .line 181
    :sswitch_4
    const-string v7, "AUDIO_FORMAT_MAX"

    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_8

    .line 189
    goto/16 :goto_3

    .line 191
    :cond_8
    const/16 v16, 0xa

    .line 193
    goto/16 :goto_3

    .line 195
    :sswitch_5
    const-string v7, "AUDIO_FORMAT_DTS"

    .line 197
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_9

    .line 203
    goto/16 :goto_3

    .line 205
    :cond_9
    const/16 v16, 0x9

    .line 207
    goto/16 :goto_3

    .line 209
    :sswitch_6
    const-string v7, "AUDIO_FORMAT_DST"

    .line 211
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_a

    .line 217
    goto/16 :goto_3

    .line 219
    :cond_a
    const/16 v16, 0x8

    .line 221
    goto/16 :goto_3

    .line 223
    :sswitch_7
    const-string v7, "AUDIO_FORMAT_DDP"

    .line 225
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_b

    .line 231
    goto/16 :goto_3

    .line 233
    :cond_b
    const/16 v16, 0x7

    .line 235
    goto :goto_3

    .line 236
    :sswitch_8
    const-string v7, "AUDIO_FORMAT_AAC"

    .line 238
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_c

    .line 244
    goto :goto_3

    .line 245
    :cond_c
    const/16 v16, 0x6

    .line 247
    goto :goto_3

    .line 248
    :sswitch_9
    const-string v7, "AUDIO_FORMAT_ONEBITAUDIO"

    .line 250
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v3

    .line 254
    if-nez v3, :cond_d

    .line 256
    goto :goto_3

    .line 257
    :cond_d
    move/from16 v16, v9

    .line 259
    goto :goto_3

    .line 260
    :sswitch_a
    const-string v7, "AUDIO_FORMAT_MPEG2"

    .line 262
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_e

    .line 268
    goto :goto_3

    .line 269
    :cond_e
    move/from16 v16, v10

    .line 271
    goto :goto_3

    .line 272
    :sswitch_b
    const-string v7, "AUDIO_FORMAT_MPEG1"

    .line 274
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_f

    .line 280
    goto :goto_3

    .line 281
    :cond_f
    move/from16 v16, v13

    .line 283
    goto :goto_3

    .line 284
    :sswitch_c
    const-string v7, "AUDIO_FORMAT_DTSHD"

    .line 286
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v3

    .line 290
    if-nez v3, :cond_10

    .line 292
    goto :goto_3

    .line 293
    :cond_10
    move/from16 v16, v14

    .line 295
    goto :goto_3

    .line 296
    :sswitch_d
    const-string v7, "AUDIO_FORMAT_ATRAC"

    .line 298
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_11

    .line 304
    goto :goto_3

    .line 305
    :cond_11
    move/from16 v16, v11

    .line 307
    goto :goto_3

    .line 308
    :sswitch_e
    const-string v7, "AUDIO_FORMAT_WMAPRO"

    .line 310
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_12

    .line 316
    goto :goto_3

    .line 317
    :cond_12
    move/from16 v16, v12

    .line 319
    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 322
    goto/16 :goto_2

    .line 324
    :pswitch_0
    const/16 v3, 0xc

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

    .line 340
    goto :goto_4

    .line 341
    :pswitch_7
    const/16 v3, 0xa

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

    .line 355
    goto :goto_4

    .line 356
    :pswitch_d
    const/16 v3, 0x8

    .line 358
    goto :goto_4

    .line 359
    :pswitch_e
    const/16 v3, 0xe

    .line 361
    :goto_4
    if-eqz v6, :cond_14

    .line 363
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 366
    move-result v7

    .line 367
    if-nez v7, :cond_13

    .line 369
    goto :goto_5

    .line 370
    :cond_13
    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 373
    move-result-object v6

    .line 374
    array-length v7, v6

    .line 375
    if-eq v7, v13, :cond_15

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    .line 379
    const-string v8, "SAD byte array length is not 3. Length = "

    .line 381
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    array-length v6, v6

    .line 385
    const-string v8, "HdmiUtils"

    .line 387
    invoke-static {v7, v6, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 390
    :cond_14
    :goto_5
    move-object v6, v2

    .line 391
    :cond_15
    if-eqz v3, :cond_16

    .line 393
    if-eqz v6, :cond_16

    .line 395
    new-instance v7, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 397
    invoke-direct {v7, v3, v6}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    .line 400
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_16
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 406
    invoke-interface {v15, v13, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    goto/16 :goto_1

    .line 411
    :cond_17
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 414
    goto/16 :goto_1

    .line 416
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_19

    .line 422
    goto :goto_6

    .line 423
    :cond_19
    new-instance v3, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 425
    invoke-direct {v3, v1, v4}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 428
    goto :goto_7

    .line 429
    :cond_1a
    :goto_6
    move-object v3, v2

    .line 430
    :goto_7
    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    goto/16 :goto_0

    .line 437
    :cond_1b
    invoke-static {v15}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 440
    goto/16 :goto_0

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

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 8
    const/4 v0, 0x1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 14
    move-result v2

    .line 15
    if-eq v2, v1, :cond_1

    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v2, v3, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return-void

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 33
    throw p0
.end method
