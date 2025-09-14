.class public abstract Lcom/android/server/compat/overrides/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;
    .locals 10

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "overrides"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1c

    .line 35
    .line 36
    new-instance p0, Lcom/android/server/compat/overrides/Overrides;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v2, :cond_1a

    .line 50
    .line 51
    if-eq v3, v4, :cond_1a

    .line 52
    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-eq v3, v5, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v6, "change-overrides"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_19

    .line 73
    .line 74
    new-instance v3, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v6, "changeId"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iput-object v6, v3, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 97
    .line 98
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eq v6, v2, :cond_17

    .line 106
    .line 107
    if-eq v6, v4, :cond_17

    .line 108
    .line 109
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eq v6, v5, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string/jumbo v7, "validated"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const-string/jumbo v8, "override-value"

    .line 128
    .line 129
    .line 130
    if-eqz v7, :cond_7

    .line 131
    .line 132
    new-instance v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 133
    .line 134
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eq v7, v2, :cond_5

    .line 145
    .line 146
    if-eq v7, v4, :cond_5

    .line 147
    .line 148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eq v7, v5, :cond_3

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_4

    .line 164
    .line 165
    invoke-static {v0}, Lcom/android/server/compat/overrides/OverrideValue;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/OverrideValue;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v6}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    if-ne v7, v4, :cond_6

    .line 182
    .line 183
    iput-object v6, v3, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 187
    .line 188
    const-string v0, "ChangeOverrides.Validated is not closed"

    .line 189
    .line 190
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_7
    const-string/jumbo v7, "deferred"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_d

    .line 202
    .line 203
    new-instance v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 204
    .line 205
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 209
    .line 210
    .line 211
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eq v7, v2, :cond_b

    .line 216
    .line 217
    if-eq v7, v4, :cond_b

    .line 218
    .line 219
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eq v7, v5, :cond_8

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_a

    .line 235
    .line 236
    invoke-static {v0}, Lcom/android/server/compat/overrides/OverrideValue;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/OverrideValue;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    iget-object v9, v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 241
    .line 242
    if-nez v9, :cond_9

    .line 243
    .line 244
    new-instance v9, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v9, v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 250
    .line 251
    :cond_9
    iget-object v9, v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 252
    .line 253
    check-cast v9, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_a
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_b
    if-ne v7, v4, :cond_c

    .line 264
    .line 265
    iput-object v6, v3, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 270
    .line 271
    const-string v0, "ChangeOverrides.Deferred is not closed"

    .line 272
    .line 273
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :cond_d
    const-string/jumbo v7, "raw"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_16

    .line 285
    .line 286
    new-instance v6, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 287
    .line 288
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 292
    .line 293
    .line 294
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eq v7, v2, :cond_14

    .line 299
    .line 300
    if-eq v7, v4, :cond_14

    .line 301
    .line 302
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eq v7, v5, :cond_e

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    const-string/jumbo v8, "raw-override-value"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_13

    .line 321
    .line 322
    new-instance v7, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 323
    .line 324
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string/jumbo v8, "packageName"

    .line 328
    .line 329
    .line 330
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    if-eqz v8, :cond_f

    .line 335
    .line 336
    iput-object v8, v7, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 337
    .line 338
    :cond_f
    const-string/jumbo v8, "minVersionCode"

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    if-eqz v8, :cond_10

    .line 346
    .line 347
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v8

    .line 351
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    iput-object v8, v7, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 356
    .line 357
    :cond_10
    const-string/jumbo v8, "maxVersionCode"

    .line 358
    .line 359
    .line 360
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    if-eqz v8, :cond_11

    .line 365
    .line 366
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 367
    .line 368
    .line 369
    move-result-wide v8

    .line 370
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    iput-object v8, v7, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 375
    .line 376
    :cond_11
    const-string/jumbo v8, "enabled"

    .line 377
    .line 378
    .line 379
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    if-eqz v8, :cond_12

    .line 384
    .line 385
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    iput-object v8, v7, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 394
    .line 395
    :cond_12
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_13
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 407
    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_14
    if-ne v7, v4, :cond_15

    .line 411
    .line 412
    iput-object v6, v3, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :cond_15
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 417
    .line 418
    const-string v0, "ChangeOverrides.Raw is not closed"

    .line 419
    .line 420
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw p0

    .line 424
    :cond_16
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :cond_17
    if-ne v6, v4, :cond_18

    .line 430
    .line 431
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_18
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 441
    .line 442
    const-string v0, "ChangeOverrides is not closed"

    .line 443
    .line 444
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw p0

    .line 448
    :cond_19
    invoke-static {v0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_1a
    if-ne v3, v4, :cond_1b

    .line 454
    .line 455
    return-object p0

    .line 456
    :cond_1b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 457
    .line 458
    const-string v0, "Overrides is not closed"

    .line 459
    .line 460
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw p0

    .line 464
    :cond_1c
    return-object v1
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

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
