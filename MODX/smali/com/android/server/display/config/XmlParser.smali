.class public abstract Lcom/android/server/display/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 14

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "displayConfiguration"

    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_d7

    .line 36
    new-instance p0, Lcom/android/server/display/config/DisplayConfiguration;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v2, :cond_d5

    .line 51
    if-eq v3, v4, :cond_d5

    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-eq v3, v5, :cond_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v6, "name"

    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 74
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v6, "densityMapping"

    .line 84
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_d

    .line 90
    new-instance v3, Lcom/android/server/display/config/DensityMapping;

    .line 92
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 98
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 101
    move-result v6

    .line 102
    if-eq v6, v2, :cond_b

    .line 104
    if-eq v6, v4, :cond_b

    .line 106
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 109
    move-result v6

    .line 110
    if-eq v6, v5, :cond_2

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    const-string/jumbo v7, "density"

    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_a

    .line 126
    new-instance v6, Lcom/android/server/display/config/Density;

    .line 128
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 134
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 137
    move-result v8

    .line 138
    if-eq v8, v2, :cond_7

    .line 140
    if-eq v8, v4, :cond_7

    .line 142
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 145
    move-result v8

    .line 146
    if-eq v8, v5, :cond_3

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 152
    move-result-object v8

    .line 153
    const-string/jumbo v9, "width"

    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_4

    .line 162
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 165
    move-result-object v8

    .line 166
    new-instance v9, Ljava/math/BigInteger;

    .line 168
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 171
    iput-object v9, v6, Lcom/android/server/display/config/Density;->width:Ljava/math/BigInteger;

    .line 173
    goto :goto_2

    .line 174
    :cond_4
    const-string/jumbo v9, "height"

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_5

    .line 183
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 186
    move-result-object v8

    .line 187
    new-instance v9, Ljava/math/BigInteger;

    .line 189
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 192
    iput-object v9, v6, Lcom/android/server/display/config/Density;->height:Ljava/math/BigInteger;

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_6

    .line 201
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 204
    move-result-object v8

    .line 205
    new-instance v9, Ljava/math/BigInteger;

    .line 207
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 210
    iput-object v9, v6, Lcom/android/server/display/config/Density;->density:Ljava/math/BigInteger;

    .line 212
    goto :goto_2

    .line 213
    :cond_6
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 216
    goto :goto_2

    .line 217
    :cond_7
    if-ne v8, v4, :cond_9

    .line 219
    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 221
    if-nez v7, :cond_8

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    .line 225
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iput-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 230
    :cond_8
    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 232
    check-cast v7, Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    goto/16 :goto_1

    .line 239
    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 241
    const-string v0, "Density is not closed"

    .line 243
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 246
    throw p0

    .line 247
    :cond_a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 250
    goto/16 :goto_1

    .line 252
    :cond_b
    if-ne v6, v4, :cond_c

    .line 254
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 260
    const-string v0, "DensityMapping is not closed"

    .line 262
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 265
    throw p0

    .line 266
    :cond_d
    const-string/jumbo v6, "screenBrightnessMap"

    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_e

    .line 275
    invoke-static {v0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    .line 278
    move-result-object v3

    .line 279
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 281
    goto/16 :goto_0

    .line 283
    :cond_e
    const-string/jumbo v6, "screenBrightnessDefault"

    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_f

    .line 292
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 295
    move-result-object v3

    .line 296
    new-instance v4, Ljava/math/BigDecimal;

    .line 298
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 301
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 303
    goto/16 :goto_0

    .line 305
    :cond_f
    const-string/jumbo v6, "thermalThrottling"

    .line 308
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result v6

    .line 312
    const-string/jumbo v7, "refreshRateRange"

    .line 315
    const-string/jumbo v8, "brightness"

    .line 318
    const-string/jumbo v9, "thermalStatus"

    .line 321
    const-string/jumbo v10, "id"

    .line 324
    if-eqz v6, :cond_2d

    .line 326
    new-instance v3, Lcom/android/server/display/config/ThermalThrottling;

    .line 328
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 334
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 337
    move-result v6

    .line 338
    if-eq v6, v2, :cond_2b

    .line 340
    if-eq v6, v4, :cond_2b

    .line 342
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 345
    move-result v6

    .line 346
    if-eq v6, v5, :cond_10

    .line 348
    goto :goto_3

    .line 349
    :cond_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 352
    move-result-object v6

    .line 353
    const-string/jumbo v11, "brightnessThrottlingMap"

    .line 356
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    move-result v11

    .line 360
    if-eqz v11, :cond_1d

    .line 362
    new-instance v6, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 364
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 367
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-result-object v11

    .line 371
    if-eqz v11, :cond_11

    .line 373
    iput-object v11, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->id:Ljava/lang/String;

    .line 375
    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 378
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 381
    move-result v11

    .line 382
    if-eq v11, v2, :cond_1a

    .line 384
    if-eq v11, v4, :cond_1a

    .line 386
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 389
    move-result v11

    .line 390
    if-eq v11, v5, :cond_12

    .line 392
    goto :goto_4

    .line 393
    :cond_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 396
    move-result-object v11

    .line 397
    const-string/jumbo v12, "brightnessThrottlingPoint"

    .line 400
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    move-result v11

    .line 404
    if-eqz v11, :cond_19

    .line 406
    new-instance v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 408
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 414
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 417
    move-result v12

    .line 418
    if-eq v12, v2, :cond_16

    .line 420
    if-eq v12, v4, :cond_16

    .line 422
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 425
    move-result v12

    .line 426
    if-eq v12, v5, :cond_13

    .line 428
    goto :goto_5

    .line 429
    :cond_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 432
    move-result-object v12

    .line 433
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v13

    .line 437
    if-eqz v13, :cond_14

    .line 439
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 442
    move-result-object v12

    .line 443
    invoke-static {v12}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 446
    move-result-object v12

    .line 447
    iput-object v12, v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 449
    goto :goto_5

    .line 450
    :cond_14
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result v12

    .line 454
    if-eqz v12, :cond_15

    .line 456
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 459
    move-result-object v12

    .line 460
    new-instance v13, Ljava/math/BigDecimal;

    .line 462
    invoke-direct {v13, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 465
    iput-object v13, v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    .line 467
    goto :goto_5

    .line 468
    :cond_15
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 471
    goto :goto_5

    .line 472
    :cond_16
    if-ne v12, v4, :cond_18

    .line 474
    iget-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 476
    if-nez v12, :cond_17

    .line 478
    new-instance v12, Ljava/util/ArrayList;

    .line 480
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iput-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 485
    :cond_17
    iget-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 487
    check-cast v12, Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    goto :goto_4

    .line 493
    :cond_18
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 495
    const-string v0, "BrightnessThrottlingPoint is not closed"

    .line 497
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 500
    throw p0

    .line 501
    :cond_19
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 504
    goto :goto_4

    .line 505
    :cond_1a
    if-ne v11, v4, :cond_1c

    .line 507
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 509
    if-nez v11, :cond_1b

    .line 511
    new-instance v11, Ljava/util/ArrayList;

    .line 513
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 516
    iput-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 518
    :cond_1b
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 520
    check-cast v11, Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    goto/16 :goto_3

    .line 527
    :cond_1c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 529
    const-string v0, "BrightnessThrottlingMap is not closed"

    .line 531
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 534
    throw p0

    .line 535
    :cond_1d
    const-string/jumbo v11, "refreshRateThrottlingMap"

    .line 538
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_2a

    .line 544
    new-instance v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 546
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    move-result-object v11

    .line 553
    if-eqz v11, :cond_1e

    .line 555
    iput-object v11, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->id:Ljava/lang/String;

    .line 557
    :cond_1e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 560
    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 563
    move-result v11

    .line 564
    if-eq v11, v2, :cond_27

    .line 566
    if-eq v11, v4, :cond_27

    .line 568
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 571
    move-result v11

    .line 572
    if-eq v11, v5, :cond_1f

    .line 574
    goto :goto_6

    .line 575
    :cond_1f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 578
    move-result-object v11

    .line 579
    const-string/jumbo v12, "refreshRateThrottlingPoint"

    .line 582
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    move-result v11

    .line 586
    if-eqz v11, :cond_26

    .line 588
    new-instance v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 590
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 593
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 596
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 599
    move-result v12

    .line 600
    if-eq v12, v2, :cond_23

    .line 602
    if-eq v12, v4, :cond_23

    .line 604
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 607
    move-result v12

    .line 608
    if-eq v12, v5, :cond_20

    .line 610
    goto :goto_7

    .line 611
    :cond_20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 614
    move-result-object v12

    .line 615
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    move-result v13

    .line 619
    if-eqz v13, :cond_21

    .line 621
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 624
    move-result-object v12

    .line 625
    invoke-static {v12}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 628
    move-result-object v12

    .line 629
    iput-object v12, v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 631
    goto :goto_7

    .line 632
    :cond_21
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    move-result v12

    .line 636
    if-eqz v12, :cond_22

    .line 638
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 641
    move-result-object v12

    .line 642
    iput-object v12, v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 644
    goto :goto_7

    .line 645
    :cond_22
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 648
    goto :goto_7

    .line 649
    :cond_23
    if-ne v12, v4, :cond_25

    .line 651
    iget-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 653
    if-nez v12, :cond_24

    .line 655
    new-instance v12, Ljava/util/ArrayList;

    .line 657
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 660
    iput-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 662
    :cond_24
    iget-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 664
    check-cast v12, Ljava/util/ArrayList;

    .line 666
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    goto :goto_6

    .line 670
    :cond_25
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 672
    const-string v0, "RefreshRateThrottlingPoint is not closed"

    .line 674
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 677
    throw p0

    .line 678
    :cond_26
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 681
    goto :goto_6

    .line 682
    :cond_27
    if-ne v11, v4, :cond_29

    .line 684
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 686
    if-nez v11, :cond_28

    .line 688
    new-instance v11, Ljava/util/ArrayList;

    .line 690
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 693
    iput-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 695
    :cond_28
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 697
    check-cast v11, Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    goto/16 :goto_3

    .line 704
    :cond_29
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 706
    const-string v0, "RefreshRateThrottlingMap is not closed"

    .line 708
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 711
    throw p0

    .line 712
    :cond_2a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 715
    goto/16 :goto_3

    .line 717
    :cond_2b
    if-ne v6, v4, :cond_2c

    .line 719
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    .line 721
    goto/16 :goto_0

    .line 723
    :cond_2c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 725
    const-string v0, "ThermalThrottling is not closed"

    .line 727
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 730
    throw p0

    .line 731
    :cond_2d
    const-string/jumbo v6, "powerThrottlingConfig"

    .line 734
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    move-result v6

    .line 738
    if-eqz v6, :cond_40

    .line 740
    new-instance v3, Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 742
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 745
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 748
    :goto_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 751
    move-result v6

    .line 752
    if-eq v6, v2, :cond_3e

    .line 754
    if-eq v6, v4, :cond_3e

    .line 756
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 759
    move-result v6

    .line 760
    if-eq v6, v5, :cond_2e

    .line 762
    goto :goto_8

    .line 763
    :cond_2e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 766
    move-result-object v6

    .line 767
    const-string/jumbo v7, "brightnessLowestCapAllowed"

    .line 770
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_2f

    .line 776
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 779
    move-result-object v6

    .line 780
    new-instance v7, Ljava/math/BigDecimal;

    .line 782
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 785
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    .line 787
    goto :goto_8

    .line 788
    :cond_2f
    const-string/jumbo v7, "pollingWindowMillis"

    .line 791
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    move-result v7

    .line 795
    if-eqz v7, :cond_30

    .line 797
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 800
    move-result-object v6

    .line 801
    new-instance v7, Ljava/math/BigInteger;

    .line 803
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 806
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMillis:Ljava/math/BigInteger;

    .line 808
    goto :goto_8

    .line 809
    :cond_30
    const-string/jumbo v7, "powerThrottlingMap"

    .line 812
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    move-result v6

    .line 816
    if-eqz v6, :cond_3d

    .line 818
    new-instance v6, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 820
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 823
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    move-result-object v7

    .line 827
    if-eqz v7, :cond_31

    .line 829
    iput-object v7, v6, Lcom/android/server/display/config/PowerThrottlingMap;->id:Ljava/lang/String;

    .line 831
    :cond_31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 834
    :goto_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 837
    move-result v7

    .line 838
    if-eq v7, v2, :cond_3a

    .line 840
    if-eq v7, v4, :cond_3a

    .line 842
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 845
    move-result v7

    .line 846
    if-eq v7, v5, :cond_32

    .line 848
    goto :goto_9

    .line 849
    :cond_32
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 852
    move-result-object v7

    .line 853
    const-string/jumbo v8, "powerThrottlingPoint"

    .line 856
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    move-result v7

    .line 860
    if-eqz v7, :cond_39

    .line 862
    new-instance v7, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 864
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 867
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 870
    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 873
    move-result v8

    .line 874
    if-eq v8, v2, :cond_36

    .line 876
    if-eq v8, v4, :cond_36

    .line 878
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 881
    move-result v8

    .line 882
    if-eq v8, v5, :cond_33

    .line 884
    goto :goto_a

    .line 885
    :cond_33
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 888
    move-result-object v8

    .line 889
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 892
    move-result v11

    .line 893
    if-eqz v11, :cond_34

    .line 895
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 898
    move-result-object v8

    .line 899
    invoke-static {v8}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 902
    move-result-object v8

    .line 903
    iput-object v8, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 905
    goto :goto_a

    .line 906
    :cond_34
    const-string/jumbo v11, "powerQuotaMilliWatts"

    .line 909
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    move-result v8

    .line 913
    if-eqz v8, :cond_35

    .line 915
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 918
    move-result-object v8

    .line 919
    new-instance v11, Ljava/math/BigDecimal;

    .line 921
    invoke-direct {v11, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 924
    iput-object v11, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->powerQuotaMilliWatts:Ljava/math/BigDecimal;

    .line 926
    goto :goto_a

    .line 927
    :cond_35
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 930
    goto :goto_a

    .line 931
    :cond_36
    if-ne v8, v4, :cond_38

    .line 933
    iget-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 935
    if-nez v8, :cond_37

    .line 937
    new-instance v8, Ljava/util/ArrayList;

    .line 939
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 942
    iput-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 944
    :cond_37
    iget-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 946
    check-cast v8, Ljava/util/ArrayList;

    .line 948
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    goto :goto_9

    .line 952
    :cond_38
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 954
    const-string v0, "PowerThrottlingPoint is not closed"

    .line 956
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 959
    throw p0

    .line 960
    :cond_39
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 963
    goto/16 :goto_9

    .line 965
    :cond_3a
    if-ne v7, v4, :cond_3c

    .line 967
    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 969
    if-nez v7, :cond_3b

    .line 971
    new-instance v7, Ljava/util/ArrayList;

    .line 973
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 976
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 978
    :cond_3b
    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 980
    check-cast v7, Ljava/util/ArrayList;

    .line 982
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    goto/16 :goto_8

    .line 987
    :cond_3c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 989
    const-string v0, "PowerThrottlingMap is not closed"

    .line 991
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 994
    throw p0

    .line 995
    :cond_3d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 998
    goto/16 :goto_8

    .line 1000
    :cond_3e
    if-ne v6, v4, :cond_3f

    .line 1002
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 1004
    goto/16 :goto_0

    .line 1006
    :cond_3f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1008
    const-string v0, "PowerThrottlingConfig is not closed"

    .line 1010
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1013
    throw p0

    .line 1014
    :cond_40
    const-string/jumbo v6, "luxThrottling"

    .line 1017
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1020
    move-result v6

    .line 1021
    const-string/jumbo v9, "map"

    .line 1024
    if-eqz v6, :cond_4b

    .line 1026
    new-instance v3, Lcom/android/server/display/config/LuxThrottling;

    .line 1028
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1031
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1034
    :goto_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1037
    move-result v6

    .line 1038
    if-eq v6, v2, :cond_49

    .line 1040
    if-eq v6, v4, :cond_49

    .line 1042
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1045
    move-result v6

    .line 1046
    if-eq v6, v5, :cond_41

    .line 1048
    goto :goto_b

    .line 1049
    :cond_41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1052
    move-result-object v6

    .line 1053
    const-string/jumbo v7, "brightnessLimitMap"

    .line 1056
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    move-result v6

    .line 1060
    if-eqz v6, :cond_48

    .line 1062
    new-instance v6, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 1064
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1067
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1070
    :goto_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1073
    move-result v7

    .line 1074
    if-eq v7, v2, :cond_45

    .line 1076
    if-eq v7, v4, :cond_45

    .line 1078
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1081
    move-result v7

    .line 1082
    if-eq v7, v5, :cond_42

    .line 1084
    goto :goto_c

    .line 1085
    :cond_42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1088
    move-result-object v7

    .line 1089
    const-string/jumbo v8, "type"

    .line 1092
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1095
    move-result v8

    .line 1096
    if-eqz v8, :cond_43

    .line 1098
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1101
    move-result-object v7

    .line 1102
    invoke-static {v7}, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    .line 1105
    move-result-object v7

    .line 1106
    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    .line 1108
    goto :goto_c

    .line 1109
    :cond_43
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    move-result v7

    .line 1113
    if-eqz v7, :cond_44

    .line 1115
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1118
    move-result-object v7

    .line 1119
    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1121
    goto :goto_c

    .line 1122
    :cond_44
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1125
    goto :goto_c

    .line 1126
    :cond_45
    if-ne v7, v4, :cond_47

    .line 1128
    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1130
    if-nez v7, :cond_46

    .line 1132
    new-instance v7, Ljava/util/ArrayList;

    .line 1134
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    iput-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1139
    :cond_46
    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1141
    check-cast v7, Ljava/util/ArrayList;

    .line 1143
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    goto :goto_b

    .line 1147
    :cond_47
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1149
    const-string v0, "BrightnessLimitMap is not closed"

    .line 1151
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1154
    throw p0

    .line 1155
    :cond_48
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1158
    goto :goto_b

    .line 1159
    :cond_49
    if-ne v6, v4, :cond_4a

    .line 1161
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    .line 1163
    goto/16 :goto_0

    .line 1165
    :cond_4a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1167
    const-string v0, "LuxThrottling is not closed"

    .line 1169
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1172
    throw p0

    .line 1173
    :cond_4b
    const-string/jumbo v6, "highBrightnessMode"

    .line 1176
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1179
    move-result v6

    .line 1180
    const-string/jumbo v11, "refreshRate"

    .line 1183
    const-string/jumbo v12, "transitionPoint"

    .line 1186
    const-string/jumbo v13, "enabled"

    .line 1189
    if-eqz v6, :cond_67

    .line 1191
    new-instance v3, Lcom/android/server/display/config/HighBrightnessMode;

    .line 1193
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1196
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    move-result-object v6

    .line 1200
    if-eqz v6, :cond_4c

    .line 1202
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1205
    move-result v6

    .line 1206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1209
    move-result-object v6

    .line 1210
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    .line 1212
    :cond_4c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1215
    :goto_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1218
    move-result v6

    .line 1219
    if-eq v6, v2, :cond_65

    .line 1221
    if-eq v6, v4, :cond_65

    .line 1223
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1226
    move-result v6

    .line 1227
    if-eq v6, v5, :cond_4d

    .line 1229
    goto :goto_d

    .line 1230
    :cond_4d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1233
    move-result-object v6

    .line 1234
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1237
    move-result v7

    .line 1238
    if-eqz v7, :cond_4e

    .line 1240
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1243
    move-result-object v6

    .line 1244
    new-instance v7, Ljava/math/BigDecimal;

    .line 1246
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1249
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 1251
    goto :goto_d

    .line 1252
    :cond_4e
    const-string/jumbo v7, "minimumLux"

    .line 1255
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    move-result v7

    .line 1259
    if-eqz v7, :cond_4f

    .line 1261
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1264
    move-result-object v6

    .line 1265
    new-instance v7, Ljava/math/BigDecimal;

    .line 1267
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1270
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    .line 1272
    goto :goto_d

    .line 1273
    :cond_4f
    const-string/jumbo v7, "timing"

    .line 1276
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1279
    move-result v7

    .line 1280
    if-eqz v7, :cond_56

    .line 1282
    new-instance v6, Lcom/android/server/display/config/HbmTiming;

    .line 1284
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1287
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1290
    :goto_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1293
    move-result v7

    .line 1294
    if-eq v7, v2, :cond_54

    .line 1296
    if-eq v7, v4, :cond_54

    .line 1298
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1301
    move-result v7

    .line 1302
    if-eq v7, v5, :cond_50

    .line 1304
    goto :goto_e

    .line 1305
    :cond_50
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1308
    move-result-object v7

    .line 1309
    const-string/jumbo v8, "timeWindowSecs"

    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1315
    move-result v8

    .line 1316
    if-eqz v8, :cond_51

    .line 1318
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1321
    move-result-object v7

    .line 1322
    new-instance v8, Ljava/math/BigInteger;

    .line 1324
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1327
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    .line 1329
    goto :goto_e

    .line 1330
    :cond_51
    const-string/jumbo v8, "timeMaxSecs"

    .line 1333
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1336
    move-result v8

    .line 1337
    if-eqz v8, :cond_52

    .line 1339
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1342
    move-result-object v7

    .line 1343
    new-instance v8, Ljava/math/BigInteger;

    .line 1345
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1348
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    .line 1350
    goto :goto_e

    .line 1351
    :cond_52
    const-string/jumbo v8, "timeMinSecs"

    .line 1354
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1357
    move-result v7

    .line 1358
    if-eqz v7, :cond_53

    .line 1360
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1363
    move-result-object v7

    .line 1364
    new-instance v8, Ljava/math/BigInteger;

    .line 1366
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1369
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    .line 1371
    goto :goto_e

    .line 1372
    :cond_53
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1375
    goto :goto_e

    .line 1376
    :cond_54
    if-ne v7, v4, :cond_55

    .line 1378
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    .line 1380
    goto/16 :goto_d

    .line 1382
    :cond_55
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1384
    const-string v0, "HbmTiming is not closed"

    .line 1386
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1389
    throw p0

    .line 1390
    :cond_56
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1393
    move-result v7

    .line 1394
    if-eqz v7, :cond_57

    .line 1396
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 1399
    move-result-object v6

    .line 1400
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    .line 1402
    goto/16 :goto_d

    .line 1404
    :cond_57
    const-string v7, "allowInLowPowerMode"

    .line 1406
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1409
    move-result v7

    .line 1410
    if-eqz v7, :cond_58

    .line 1412
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1415
    move-result-object v6

    .line 1416
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1419
    move-result v6

    .line 1420
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1423
    move-result-object v6

    .line 1424
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    .line 1426
    goto/16 :goto_d

    .line 1428
    :cond_58
    const-string/jumbo v7, "minimumHdrPercentOfScreen"

    .line 1431
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    move-result v7

    .line 1435
    if-eqz v7, :cond_59

    .line 1437
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1440
    move-result-object v6

    .line 1441
    new-instance v7, Ljava/math/BigDecimal;

    .line 1443
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1446
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    .line 1448
    goto/16 :goto_d

    .line 1450
    :cond_59
    const-string/jumbo v7, "sdrHdrRatioMap"

    .line 1453
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1456
    move-result v6

    .line 1457
    if-eqz v6, :cond_64

    .line 1459
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1462
    move-object v6, v1

    .line 1463
    :goto_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1466
    move-result v7

    .line 1467
    if-eq v7, v2, :cond_62

    .line 1469
    if-eq v7, v4, :cond_62

    .line 1471
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1474
    move-result v7

    .line 1475
    if-eq v7, v5, :cond_5a

    .line 1477
    goto :goto_f

    .line 1478
    :cond_5a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1481
    move-result-object v7

    .line 1482
    const-string/jumbo v8, "point"

    .line 1485
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    move-result v7

    .line 1489
    if-eqz v7, :cond_61

    .line 1491
    new-instance v7, Lcom/android/server/display/config/SdrHdrRatioPoint;

    .line 1493
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1496
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1499
    :goto_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1502
    move-result v8

    .line 1503
    if-eq v8, v2, :cond_5e

    .line 1505
    if-eq v8, v4, :cond_5e

    .line 1507
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1510
    move-result v8

    .line 1511
    if-eq v8, v5, :cond_5b

    .line 1513
    goto :goto_10

    .line 1514
    :cond_5b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1517
    move-result-object v8

    .line 1518
    const-string/jumbo v9, "sdrNits"

    .line 1521
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1524
    move-result v9

    .line 1525
    if-eqz v9, :cond_5c

    .line 1527
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1530
    move-result-object v8

    .line 1531
    new-instance v9, Ljava/math/BigDecimal;

    .line 1533
    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1536
    goto :goto_10

    .line 1537
    :cond_5c
    const-string/jumbo v9, "hdrRatio"

    .line 1540
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1543
    move-result v8

    .line 1544
    if-eqz v8, :cond_5d

    .line 1546
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1549
    move-result-object v8

    .line 1550
    new-instance v9, Ljava/math/BigDecimal;

    .line 1552
    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1555
    goto :goto_10

    .line 1556
    :cond_5d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1559
    goto :goto_10

    .line 1560
    :cond_5e
    if-ne v8, v4, :cond_60

    .line 1562
    if-nez v6, :cond_5f

    .line 1564
    new-instance v6, Ljava/util/ArrayList;

    .line 1566
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    :cond_5f
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    goto :goto_f

    .line 1573
    :cond_60
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1575
    const-string v0, "SdrHdrRatioPoint is not closed"

    .line 1577
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1580
    throw p0

    .line 1581
    :cond_61
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1584
    goto :goto_f

    .line 1585
    :cond_62
    if-ne v7, v4, :cond_63

    .line 1587
    goto/16 :goto_d

    .line 1589
    :cond_63
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1591
    const-string v0, "SdrHdrRatioMap is not closed"

    .line 1593
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1596
    throw p0

    .line 1597
    :cond_64
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1600
    goto/16 :goto_d

    .line 1602
    :cond_65
    if-ne v6, v4, :cond_66

    .line 1604
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 1606
    goto/16 :goto_0

    .line 1608
    :cond_66
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1610
    const-string v0, "HighBrightnessMode is not closed"

    .line 1612
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1615
    throw p0

    .line 1616
    :cond_67
    const-string/jumbo v6, "hdrBrightnessConfig"

    .line 1619
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1622
    move-result v6

    .line 1623
    if-eqz v6, :cond_70

    .line 1625
    new-instance v3, Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 1627
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1630
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1633
    :goto_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1636
    move-result v6

    .line 1637
    if-eq v6, v2, :cond_6e

    .line 1639
    if-eq v6, v4, :cond_6e

    .line 1641
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1644
    move-result v6

    .line 1645
    if-eq v6, v5, :cond_68

    .line 1647
    goto :goto_11

    .line 1648
    :cond_68
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1651
    move-result-object v6

    .line 1652
    const-string/jumbo v7, "brightnessMap"

    .line 1655
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1658
    move-result v7

    .line 1659
    if-eqz v7, :cond_69

    .line 1661
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1664
    move-result-object v6

    .line 1665
    iput-object v6, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1667
    goto :goto_11

    .line 1668
    :cond_69
    const-string/jumbo v7, "brightnessIncreaseDebounceMillis"

    .line 1671
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    move-result v7

    .line 1675
    if-eqz v7, :cond_6a

    .line 1677
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1680
    move-result-object v6

    .line 1681
    new-instance v7, Ljava/math/BigInteger;

    .line 1683
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1686
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    .line 1688
    goto :goto_11

    .line 1689
    :cond_6a
    const-string/jumbo v7, "brightnessDecreaseDebounceMillis"

    .line 1692
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1695
    move-result v7

    .line 1696
    if-eqz v7, :cond_6b

    .line 1698
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1701
    move-result-object v6

    .line 1702
    new-instance v7, Ljava/math/BigInteger;

    .line 1704
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1707
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    .line 1709
    goto :goto_11

    .line 1710
    :cond_6b
    const-string/jumbo v7, "screenBrightnessRampIncrease"

    .line 1713
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1716
    move-result v7

    .line 1717
    if-eqz v7, :cond_6c

    .line 1719
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1722
    move-result-object v6

    .line 1723
    new-instance v7, Ljava/math/BigDecimal;

    .line 1725
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1728
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    .line 1730
    goto :goto_11

    .line 1731
    :cond_6c
    const-string/jumbo v7, "screenBrightnessRampDecrease"

    .line 1734
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1737
    move-result v6

    .line 1738
    if-eqz v6, :cond_6d

    .line 1740
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1743
    move-result-object v6

    .line 1744
    new-instance v7, Ljava/math/BigDecimal;

    .line 1746
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1749
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    .line 1751
    goto :goto_11

    .line 1752
    :cond_6d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1755
    goto :goto_11

    .line 1756
    :cond_6e
    if-ne v6, v4, :cond_6f

    .line 1758
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 1760
    goto/16 :goto_0

    .line 1762
    :cond_6f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1764
    const-string v0, "HdrBrightnessConfig is not closed"

    .line 1766
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1769
    throw p0

    .line 1770
    :cond_70
    const-string/jumbo v6, "quirks"

    .line 1773
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1776
    move-result v6

    .line 1777
    if-eqz v6, :cond_76

    .line 1779
    new-instance v3, Lcom/android/server/display/config/DisplayQuirks;

    .line 1781
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1784
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1787
    :goto_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1790
    move-result v6

    .line 1791
    if-eq v6, v2, :cond_74

    .line 1793
    if-eq v6, v4, :cond_74

    .line 1795
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1798
    move-result v6

    .line 1799
    if-eq v6, v5, :cond_71

    .line 1801
    goto :goto_12

    .line 1802
    :cond_71
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1805
    move-result-object v6

    .line 1806
    const-string/jumbo v7, "quirk"

    .line 1809
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1812
    move-result v6

    .line 1813
    if-eqz v6, :cond_73

    .line 1815
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1818
    move-result-object v6

    .line 1819
    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1821
    if-nez v7, :cond_72

    .line 1823
    new-instance v7, Ljava/util/ArrayList;

    .line 1825
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    iput-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1830
    :cond_72
    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1832
    check-cast v7, Ljava/util/ArrayList;

    .line 1834
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    goto :goto_12

    .line 1838
    :cond_73
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1841
    goto :goto_12

    .line 1842
    :cond_74
    if-ne v6, v4, :cond_75

    .line 1844
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 1846
    goto/16 :goto_0

    .line 1848
    :cond_75
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1850
    const-string v0, "DisplayQuirks is not closed"

    .line 1852
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1855
    throw p0

    .line 1856
    :cond_76
    const-string v6, "autoBrightness"

    .line 1858
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1861
    move-result v6

    .line 1862
    if-eqz v6, :cond_86

    .line 1864
    new-instance v3, Lcom/android/server/display/config/AutoBrightness;

    .line 1866
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1869
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1872
    move-result-object v6

    .line 1873
    if-eqz v6, :cond_77

    .line 1875
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1878
    move-result v6

    .line 1879
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1882
    move-result-object v6

    .line 1883
    iput-object v6, v3, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    .line 1885
    :cond_77
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1888
    :goto_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1891
    move-result v6

    .line 1892
    if-eq v6, v2, :cond_84

    .line 1894
    if-eq v6, v4, :cond_84

    .line 1896
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1899
    move-result v6

    .line 1900
    if-eq v6, v5, :cond_78

    .line 1902
    goto :goto_13

    .line 1903
    :cond_78
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1906
    move-result-object v6

    .line 1907
    const-string/jumbo v7, "brighteningLightDebounceMillis"

    .line 1910
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1913
    move-result v7

    .line 1914
    if-eqz v7, :cond_79

    .line 1916
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1919
    move-result-object v6

    .line 1920
    new-instance v7, Ljava/math/BigInteger;

    .line 1922
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1925
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    .line 1927
    goto :goto_13

    .line 1928
    :cond_79
    const-string/jumbo v7, "darkeningLightDebounceMillis"

    .line 1931
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1934
    move-result v7

    .line 1935
    if-eqz v7, :cond_7a

    .line 1937
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1940
    move-result-object v6

    .line 1941
    new-instance v7, Ljava/math/BigInteger;

    .line 1943
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1946
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    .line 1948
    goto :goto_13

    .line 1949
    :cond_7a
    const-string/jumbo v7, "brighteningLightDebounceIdleMillis"

    .line 1952
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1955
    move-result v7

    .line 1956
    if-eqz v7, :cond_7b

    .line 1958
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1961
    move-result-object v6

    .line 1962
    new-instance v7, Ljava/math/BigInteger;

    .line 1964
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1967
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 1969
    goto :goto_13

    .line 1970
    :cond_7b
    const-string/jumbo v7, "darkeningLightDebounceIdleMillis"

    .line 1973
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1976
    move-result v7

    .line 1977
    if-eqz v7, :cond_7c

    .line 1979
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1982
    move-result-object v6

    .line 1983
    new-instance v7, Ljava/math/BigInteger;

    .line 1985
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1988
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 1990
    goto :goto_13

    .line 1991
    :cond_7c
    const-string/jumbo v7, "luxToBrightnessMapping"

    .line 1994
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1997
    move-result v6

    .line 1998
    if-eqz v6, :cond_83

    .line 2000
    new-instance v6, Lcom/android/server/display/config/LuxToBrightnessMapping;

    .line 2002
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2005
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2008
    :goto_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2011
    move-result v7

    .line 2012
    if-eq v7, v2, :cond_81

    .line 2014
    if-eq v7, v4, :cond_81

    .line 2016
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2019
    move-result v7

    .line 2020
    if-eq v7, v5, :cond_7d

    .line 2022
    goto :goto_14

    .line 2023
    :cond_7d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2026
    move-result-object v7

    .line 2027
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2030
    move-result v8

    .line 2031
    if-eqz v8, :cond_7e

    .line 2033
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2036
    move-result-object v7

    .line 2037
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2039
    goto :goto_14

    .line 2040
    :cond_7e
    const-string/jumbo v8, "mode"

    .line 2043
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2046
    move-result v8

    .line 2047
    if-eqz v8, :cond_7f

    .line 2049
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2052
    move-result-object v7

    .line 2053
    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessModeName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 2056
    move-result-object v7

    .line 2057
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 2059
    goto :goto_14

    .line 2060
    :cond_7f
    const-string/jumbo v8, "setting"

    .line 2063
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2066
    move-result v7

    .line 2067
    if-eqz v7, :cond_80

    .line 2069
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2072
    move-result-object v7

    .line 2073
    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessSettingName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 2076
    move-result-object v7

    .line 2077
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 2079
    goto :goto_14

    .line 2080
    :cond_80
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2083
    goto :goto_14

    .line 2084
    :cond_81
    if-ne v7, v4, :cond_82

    .line 2086
    invoke-virtual {v3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 2089
    move-result-object v7

    .line 2090
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    goto/16 :goto_13

    .line 2095
    :cond_82
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2097
    const-string v0, "LuxToBrightnessMapping is not closed"

    .line 2099
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2102
    throw p0

    .line 2103
    :cond_83
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2106
    goto/16 :goto_13

    .line 2108
    :cond_84
    if-ne v6, v4, :cond_85

    .line 2110
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    .line 2112
    goto/16 :goto_0

    .line 2114
    :cond_85
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2116
    const-string v0, "AutoBrightness is not closed"

    .line 2118
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2121
    throw p0

    .line 2122
    :cond_86
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2125
    move-result v6

    .line 2126
    if-eqz v6, :cond_9c

    .line 2128
    new-instance v3, Lcom/android/server/display/config/RefreshRateConfigs;

    .line 2130
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2133
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2136
    :goto_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2139
    move-result v6

    .line 2140
    if-eq v6, v2, :cond_9a

    .line 2142
    if-eq v6, v4, :cond_9a

    .line 2144
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2147
    move-result v6

    .line 2148
    if-eq v6, v5, :cond_87

    .line 2150
    goto :goto_15

    .line 2151
    :cond_87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2154
    move-result-object v6

    .line 2155
    const-string/jumbo v8, "defaultRefreshRate"

    .line 2158
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2161
    move-result v8

    .line 2162
    if-eqz v8, :cond_88

    .line 2164
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2167
    move-result-object v6

    .line 2168
    new-instance v8, Ljava/math/BigInteger;

    .line 2170
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2173
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 2175
    goto :goto_15

    .line 2176
    :cond_88
    const-string/jumbo v8, "defaultPeakRefreshRate"

    .line 2179
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2182
    move-result v8

    .line 2183
    if-eqz v8, :cond_89

    .line 2185
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2188
    move-result-object v6

    .line 2189
    new-instance v8, Ljava/math/BigInteger;

    .line 2191
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2194
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    .line 2196
    goto :goto_15

    .line 2197
    :cond_89
    const-string/jumbo v8, "refreshRateZoneProfiles"

    .line 2200
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2203
    move-result v8

    .line 2204
    if-eqz v8, :cond_94

    .line 2206
    new-instance v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;

    .line 2208
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2211
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2214
    :goto_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2217
    move-result v8

    .line 2218
    if-eq v8, v2, :cond_92

    .line 2220
    if-eq v8, v4, :cond_92

    .line 2222
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2225
    move-result v8

    .line 2226
    if-eq v8, v5, :cond_8a

    .line 2228
    goto :goto_16

    .line 2229
    :cond_8a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2232
    move-result-object v8

    .line 2233
    const-string/jumbo v9, "refreshRateZoneProfile"

    .line 2236
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2239
    move-result v8

    .line 2240
    if-eqz v8, :cond_91

    .line 2242
    new-instance v8, Lcom/android/server/display/config/RefreshRateZone;

    .line 2244
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 2247
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2250
    move-result-object v9

    .line 2251
    if-eqz v9, :cond_8b

    .line 2253
    iput-object v9, v8, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    .line 2255
    :cond_8b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2258
    :goto_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2261
    move-result v9

    .line 2262
    if-eq v9, v2, :cond_8e

    .line 2264
    if-eq v9, v4, :cond_8e

    .line 2266
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2269
    move-result v9

    .line 2270
    if-eq v9, v5, :cond_8c

    .line 2272
    goto :goto_17

    .line 2273
    :cond_8c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2276
    move-result-object v9

    .line 2277
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2280
    move-result v9

    .line 2281
    if-eqz v9, :cond_8d

    .line 2283
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 2286
    move-result-object v9

    .line 2287
    iput-object v9, v8, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 2289
    goto :goto_17

    .line 2290
    :cond_8d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2293
    goto :goto_17

    .line 2294
    :cond_8e
    if-ne v9, v4, :cond_90

    .line 2296
    iget-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2298
    if-nez v9, :cond_8f

    .line 2300
    new-instance v9, Ljava/util/ArrayList;

    .line 2302
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    iput-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2307
    :cond_8f
    iget-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2309
    check-cast v9, Ljava/util/ArrayList;

    .line 2311
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    goto :goto_16

    .line 2315
    :cond_90
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2317
    const-string v0, "RefreshRateZone is not closed"

    .line 2319
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2322
    throw p0

    .line 2323
    :cond_91
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2326
    goto :goto_16

    .line 2327
    :cond_92
    if-ne v8, v4, :cond_93

    .line 2329
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    .line 2331
    goto/16 :goto_15

    .line 2333
    :cond_93
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2335
    const-string v0, "RefreshRateZoneProfiles is not closed"

    .line 2337
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2340
    throw p0

    .line 2341
    :cond_94
    const-string/jumbo v8, "defaultRefreshRateInHbmHdr"

    .line 2344
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2347
    move-result v8

    .line 2348
    if-eqz v8, :cond_95

    .line 2350
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2353
    move-result-object v6

    .line 2354
    new-instance v8, Ljava/math/BigInteger;

    .line 2356
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2359
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    .line 2361
    goto/16 :goto_15

    .line 2363
    :cond_95
    const-string/jumbo v8, "defaultRefreshRateInHbmSunlight"

    .line 2366
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2369
    move-result v8

    .line 2370
    if-eqz v8, :cond_96

    .line 2372
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2375
    move-result-object v6

    .line 2376
    new-instance v8, Ljava/math/BigInteger;

    .line 2378
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2381
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    .line 2383
    goto/16 :goto_15

    .line 2385
    :cond_96
    const-string/jumbo v8, "lowerBlockingZoneConfigs"

    .line 2388
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2391
    move-result v8

    .line 2392
    if-eqz v8, :cond_97

    .line 2394
    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2397
    move-result-object v6

    .line 2398
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2400
    goto/16 :goto_15

    .line 2402
    :cond_97
    const-string/jumbo v8, "higherBlockingZoneConfigs"

    .line 2405
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2408
    move-result v8

    .line 2409
    if-eqz v8, :cond_98

    .line 2411
    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2414
    move-result-object v6

    .line 2415
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2417
    goto/16 :goto_15

    .line 2419
    :cond_98
    const-string/jumbo v8, "lowPowerSupportedModes"

    .line 2422
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2425
    move-result v6

    .line 2426
    if-eqz v6, :cond_99

    .line 2428
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2431
    move-result-object v6

    .line 2432
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2434
    goto/16 :goto_15

    .line 2436
    :cond_99
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2439
    goto/16 :goto_15

    .line 2441
    :cond_9a
    if-ne v6, v4, :cond_9b

    .line 2443
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    .line 2445
    goto/16 :goto_0

    .line 2447
    :cond_9b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2449
    const-string v0, "RefreshRateConfigs is not closed"

    .line 2451
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2454
    throw p0

    .line 2455
    :cond_9c
    const-string/jumbo v6, "screenBrightnessRampFastDecrease"

    .line 2458
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2461
    move-result v6

    .line 2462
    if-eqz v6, :cond_9d

    .line 2464
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2467
    move-result-object v3

    .line 2468
    new-instance v4, Ljava/math/BigDecimal;

    .line 2470
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2473
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 2475
    goto/16 :goto_0

    .line 2477
    :cond_9d
    const-string/jumbo v6, "screenBrightnessRampFastIncrease"

    .line 2480
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2483
    move-result v6

    .line 2484
    if-eqz v6, :cond_9e

    .line 2486
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2489
    move-result-object v3

    .line 2490
    new-instance v4, Ljava/math/BigDecimal;

    .line 2492
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2495
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 2497
    goto/16 :goto_0

    .line 2499
    :cond_9e
    const-string/jumbo v6, "screenBrightnessRampSlowDecrease"

    .line 2502
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2505
    move-result v6

    .line 2506
    if-eqz v6, :cond_9f

    .line 2508
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2511
    move-result-object v3

    .line 2512
    new-instance v4, Ljava/math/BigDecimal;

    .line 2514
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2517
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 2519
    goto/16 :goto_0

    .line 2521
    :cond_9f
    const-string/jumbo v6, "screenBrightnessRampSlowIncrease"

    .line 2524
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2527
    move-result v6

    .line 2528
    if-eqz v6, :cond_a0

    .line 2530
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2533
    move-result-object v3

    .line 2534
    new-instance v4, Ljava/math/BigDecimal;

    .line 2536
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2539
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 2541
    goto/16 :goto_0

    .line 2543
    :cond_a0
    const-string/jumbo v6, "screenBrightnessRampSlowDecreaseIdle"

    .line 2546
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2549
    move-result v6

    .line 2550
    if-eqz v6, :cond_a1

    .line 2552
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2555
    move-result-object v3

    .line 2556
    new-instance v4, Ljava/math/BigDecimal;

    .line 2558
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2561
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    .line 2563
    goto/16 :goto_0

    .line 2565
    :cond_a1
    const-string/jumbo v6, "screenBrightnessRampSlowIncreaseIdle"

    .line 2568
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2571
    move-result v6

    .line 2572
    if-eqz v6, :cond_a2

    .line 2574
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2577
    move-result-object v3

    .line 2578
    new-instance v4, Ljava/math/BigDecimal;

    .line 2580
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2583
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    .line 2585
    goto/16 :goto_0

    .line 2587
    :cond_a2
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxMillis"

    .line 2590
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2593
    move-result v6

    .line 2594
    if-eqz v6, :cond_a3

    .line 2596
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2599
    move-result-object v3

    .line 2600
    new-instance v4, Ljava/math/BigInteger;

    .line 2602
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2605
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    .line 2607
    goto/16 :goto_0

    .line 2609
    :cond_a3
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxMillis"

    .line 2612
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2615
    move-result v6

    .line 2616
    if-eqz v6, :cond_a4

    .line 2618
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2621
    move-result-object v3

    .line 2622
    new-instance v4, Ljava/math/BigInteger;

    .line 2624
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2627
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    .line 2629
    goto/16 :goto_0

    .line 2631
    :cond_a4
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxIdleMillis"

    .line 2634
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2637
    move-result v6

    .line 2638
    if-eqz v6, :cond_a5

    .line 2640
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2643
    move-result-object v3

    .line 2644
    new-instance v4, Ljava/math/BigInteger;

    .line 2646
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2649
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 2651
    goto/16 :goto_0

    .line 2653
    :cond_a5
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxIdleMillis"

    .line 2656
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2659
    move-result v6

    .line 2660
    if-eqz v6, :cond_a6

    .line 2662
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2665
    move-result-object v3

    .line 2666
    new-instance v4, Ljava/math/BigInteger;

    .line 2668
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2671
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 2673
    goto/16 :goto_0

    .line 2675
    :cond_a6
    const-string/jumbo v6, "lightSensor"

    .line 2678
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2681
    move-result v6

    .line 2682
    if-eqz v6, :cond_a7

    .line 2684
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2687
    move-result-object v3

    .line 2688
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2690
    goto/16 :goto_0

    .line 2692
    :cond_a7
    const-string/jumbo v6, "screenOffBrightnessSensor"

    .line 2695
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2698
    move-result v6

    .line 2699
    if-eqz v6, :cond_a8

    .line 2701
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2704
    move-result-object v3

    .line 2705
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2707
    goto/16 :goto_0

    .line 2709
    :cond_a8
    const-string/jumbo v6, "proxSensor"

    .line 2712
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2715
    move-result v6

    .line 2716
    if-eqz v6, :cond_aa

    .line 2718
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2721
    move-result-object v3

    .line 2722
    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2724
    if-nez v4, :cond_a9

    .line 2726
    new-instance v4, Ljava/util/ArrayList;

    .line 2728
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2731
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2733
    :cond_a9
    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2735
    check-cast v4, Ljava/util/ArrayList;

    .line 2737
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    goto/16 :goto_0

    .line 2742
    :cond_aa
    const-string/jumbo v6, "tempSensor"

    .line 2745
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2748
    move-result v6

    .line 2749
    if-eqz v6, :cond_ab

    .line 2751
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2754
    move-result-object v3

    .line 2755
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2757
    goto/16 :goto_0

    .line 2759
    :cond_ab
    const-string v6, "ambientLightHorizonLong"

    .line 2761
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2764
    move-result v6

    .line 2765
    if-eqz v6, :cond_ac

    .line 2767
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2770
    move-result-object v3

    .line 2771
    new-instance v4, Ljava/math/BigInteger;

    .line 2773
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2776
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    .line 2778
    goto/16 :goto_0

    .line 2780
    :cond_ac
    const-string v6, "ambientLightHorizonShort"

    .line 2782
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2785
    move-result v6

    .line 2786
    if-eqz v6, :cond_ad

    .line 2788
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2791
    move-result-object v3

    .line 2792
    new-instance v4, Ljava/math/BigInteger;

    .line 2794
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2797
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    .line 2799
    goto/16 :goto_0

    .line 2801
    :cond_ad
    const-string/jumbo v6, "displayBrightnessChangeThresholds"

    .line 2804
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2807
    move-result v6

    .line 2808
    if-eqz v6, :cond_ae

    .line 2810
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2813
    goto/16 :goto_0

    .line 2815
    :cond_ae
    const-string v6, "ambientBrightnessChangeThresholds"

    .line 2817
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2820
    move-result v6

    .line 2821
    if-eqz v6, :cond_af

    .line 2823
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2826
    goto/16 :goto_0

    .line 2828
    :cond_af
    const-string/jumbo v6, "displayBrightnessChangeThresholdsIdle"

    .line 2831
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2834
    move-result v6

    .line 2835
    if-eqz v6, :cond_b0

    .line 2837
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2840
    goto/16 :goto_0

    .line 2842
    :cond_b0
    const-string v6, "ambientBrightnessChangeThresholdsIdle"

    .line 2844
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2847
    move-result v6

    .line 2848
    if-eqz v6, :cond_b1

    .line 2850
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2853
    goto/16 :goto_0

    .line 2855
    :cond_b1
    const-string/jumbo v6, "screenOffBrightnessSensorValueToLux"

    .line 2858
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2861
    move-result v6

    .line 2862
    if-eqz v6, :cond_b7

    .line 2864
    new-instance v3, Lcom/android/server/display/config/IntegerArray;

    .line 2866
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2869
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2872
    :goto_18
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2875
    move-result v6

    .line 2876
    if-eq v6, v2, :cond_b5

    .line 2878
    if-eq v6, v4, :cond_b5

    .line 2880
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2883
    move-result v6

    .line 2884
    if-eq v6, v5, :cond_b2

    .line 2886
    goto :goto_18

    .line 2887
    :cond_b2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2890
    move-result-object v6

    .line 2891
    const-string/jumbo v7, "item"

    .line 2894
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2897
    move-result v6

    .line 2898
    if-eqz v6, :cond_b4

    .line 2900
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2903
    move-result-object v6

    .line 2904
    new-instance v7, Ljava/math/BigInteger;

    .line 2906
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2909
    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2911
    if-nez v6, :cond_b3

    .line 2913
    new-instance v6, Ljava/util/ArrayList;

    .line 2915
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    iput-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2920
    :cond_b3
    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2922
    check-cast v6, Ljava/util/ArrayList;

    .line 2924
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2927
    goto :goto_18

    .line 2928
    :cond_b4
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2931
    goto :goto_18

    .line 2932
    :cond_b5
    if-ne v6, v4, :cond_b6

    .line 2934
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    .line 2936
    goto/16 :goto_0

    .line 2938
    :cond_b6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2940
    const-string v0, "IntegerArray is not closed"

    .line 2942
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2945
    throw p0

    .line 2946
    :cond_b7
    const-string/jumbo v6, "usiVersion"

    .line 2949
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2952
    move-result v6

    .line 2953
    if-eqz v6, :cond_bd

    .line 2955
    new-instance v3, Lcom/android/server/display/config/UsiVersion;

    .line 2957
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2960
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2963
    :goto_19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2966
    move-result v6

    .line 2967
    if-eq v6, v2, :cond_bb

    .line 2969
    if-eq v6, v4, :cond_bb

    .line 2971
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2974
    move-result v6

    .line 2975
    if-eq v6, v5, :cond_b8

    .line 2977
    goto :goto_19

    .line 2978
    :cond_b8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2981
    move-result-object v6

    .line 2982
    const-string/jumbo v7, "majorVersion"

    .line 2985
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2988
    move-result v7

    .line 2989
    if-eqz v7, :cond_b9

    .line 2991
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2994
    move-result-object v6

    .line 2995
    new-instance v7, Ljava/math/BigInteger;

    .line 2997
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 3000
    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    .line 3002
    goto :goto_19

    .line 3003
    :cond_b9
    const-string/jumbo v7, "minorVersion"

    .line 3006
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3009
    move-result v6

    .line 3010
    if-eqz v6, :cond_ba

    .line 3012
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3015
    move-result-object v6

    .line 3016
    new-instance v7, Ljava/math/BigInteger;

    .line 3018
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 3021
    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    .line 3023
    goto :goto_19

    .line 3024
    :cond_ba
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3027
    goto :goto_19

    .line 3028
    :cond_bb
    if-ne v6, v4, :cond_bc

    .line 3030
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    .line 3032
    goto/16 :goto_0

    .line 3034
    :cond_bc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3036
    const-string v0, "UsiVersion is not closed"

    .line 3038
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3041
    throw p0

    .line 3042
    :cond_bd
    const-string/jumbo v6, "evenDimmer"

    .line 3045
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3048
    move-result v6

    .line 3049
    if-eqz v6, :cond_d1

    .line 3051
    new-instance v3, Lcom/android/server/display/config/EvenDimmerMode;

    .line 3053
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3056
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3059
    move-result-object v6

    .line 3060
    if-eqz v6, :cond_be

    .line 3062
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 3065
    move-result v6

    .line 3066
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3069
    move-result-object v6

    .line 3070
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    .line 3072
    :cond_be
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3075
    :goto_1a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3078
    move-result v6

    .line 3079
    if-eq v6, v2, :cond_cf

    .line 3081
    if-eq v6, v4, :cond_cf

    .line 3083
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3086
    move-result v6

    .line 3087
    if-eq v6, v5, :cond_bf

    .line 3089
    goto :goto_1a

    .line 3090
    :cond_bf
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3093
    move-result-object v6

    .line 3094
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3097
    move-result v7

    .line 3098
    if-eqz v7, :cond_c0

    .line 3100
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3103
    move-result-object v6

    .line 3104
    new-instance v7, Ljava/math/BigDecimal;

    .line 3106
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3109
    iput-object v7, v3, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    .line 3111
    goto :goto_1a

    .line 3112
    :cond_c0
    const-string/jumbo v7, "brightnessMapping"

    .line 3115
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3118
    move-result v7

    .line 3119
    if-eqz v7, :cond_cd

    .line 3121
    new-instance v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 3123
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 3126
    const-string/jumbo v7, "interpolation"

    .line 3129
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3132
    move-result-object v7

    .line 3133
    if-eqz v7, :cond_c1

    .line 3135
    iput-object v7, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->interpolation:Ljava/lang/String;

    .line 3137
    :cond_c1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3140
    :goto_1b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3143
    move-result v7

    .line 3144
    if-eq v7, v2, :cond_cb

    .line 3146
    if-eq v7, v4, :cond_cb

    .line 3148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3151
    move-result v7

    .line 3152
    if-eq v7, v5, :cond_c2

    .line 3154
    goto :goto_1b

    .line 3155
    :cond_c2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3158
    move-result-object v7

    .line 3159
    const-string/jumbo v9, "brightnessPoint"

    .line 3162
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3165
    move-result v7

    .line 3166
    if-eqz v7, :cond_ca

    .line 3168
    new-instance v7, Lcom/android/server/display/config/BrightnessPoint;

    .line 3170
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 3173
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3176
    :goto_1c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3179
    move-result v9

    .line 3180
    if-eq v9, v2, :cond_c7

    .line 3182
    if-eq v9, v4, :cond_c7

    .line 3184
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3187
    move-result v9

    .line 3188
    if-eq v9, v5, :cond_c3

    .line 3190
    goto :goto_1c

    .line 3191
    :cond_c3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3194
    move-result-object v9

    .line 3195
    const-string/jumbo v10, "nits"

    .line 3198
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3201
    move-result v10

    .line 3202
    if-eqz v10, :cond_c4

    .line 3204
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3207
    move-result-object v9

    .line 3208
    new-instance v10, Ljava/math/BigDecimal;

    .line 3210
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3213
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 3215
    goto :goto_1c

    .line 3216
    :cond_c4
    const-string v10, "backlight"

    .line 3218
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3221
    move-result v10

    .line 3222
    if-eqz v10, :cond_c5

    .line 3224
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3227
    move-result-object v9

    .line 3228
    new-instance v10, Ljava/math/BigDecimal;

    .line 3230
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3233
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->backlight:Ljava/math/BigDecimal;

    .line 3235
    goto :goto_1c

    .line 3236
    :cond_c5
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3239
    move-result v9

    .line 3240
    if-eqz v9, :cond_c6

    .line 3242
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3245
    move-result-object v9

    .line 3246
    new-instance v10, Ljava/math/BigDecimal;

    .line 3248
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3251
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->brightness:Ljava/math/BigDecimal;

    .line 3253
    goto :goto_1c

    .line 3254
    :cond_c6
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3257
    goto :goto_1c

    .line 3258
    :cond_c7
    if-ne v9, v4, :cond_c9

    .line 3260
    iget-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3262
    if-nez v9, :cond_c8

    .line 3264
    new-instance v9, Ljava/util/ArrayList;

    .line 3266
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    iput-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3271
    :cond_c8
    iget-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3273
    check-cast v9, Ljava/util/ArrayList;

    .line 3275
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    goto/16 :goto_1b

    .line 3280
    :cond_c9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3282
    const-string v0, "BrightnessPoint is not closed"

    .line 3284
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3287
    throw p0

    .line 3288
    :cond_ca
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3291
    goto/16 :goto_1b

    .line 3293
    :cond_cb
    if-ne v7, v4, :cond_cc

    .line 3295
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 3297
    goto/16 :goto_1a

    .line 3299
    :cond_cc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3301
    const-string v0, "ComprehensiveBrightnessMap is not closed"

    .line 3303
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3306
    throw p0

    .line 3307
    :cond_cd
    const-string/jumbo v7, "luxToMinimumNitsMap"

    .line 3310
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3313
    move-result v6

    .line 3314
    if-eqz v6, :cond_ce

    .line 3316
    invoke-static {v0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    .line 3319
    move-result-object v6

    .line 3320
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    .line 3322
    goto/16 :goto_1a

    .line 3324
    :cond_ce
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3327
    goto/16 :goto_1a

    .line 3329
    :cond_cf
    if-ne v6, v4, :cond_d0

    .line 3331
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    .line 3333
    goto/16 :goto_0

    .line 3335
    :cond_d0
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3337
    const-string v0, "EvenDimmerMode is not closed"

    .line 3339
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3342
    throw p0

    .line 3343
    :cond_d1
    const-string/jumbo v4, "screenBrightnessCapForWearBedtimeMode"

    .line 3346
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3349
    move-result v4

    .line 3350
    if-eqz v4, :cond_d2

    .line 3352
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3355
    move-result-object v3

    .line 3356
    new-instance v4, Ljava/math/BigDecimal;

    .line 3358
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3361
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    .line 3363
    goto/16 :goto_0

    .line 3365
    :cond_d2
    const-string/jumbo v4, "idleScreenRefreshRateTimeout"

    .line 3368
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3371
    move-result v4

    .line 3372
    if-eqz v4, :cond_d3

    .line 3374
    invoke-static {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 3377
    move-result-object v3

    .line 3378
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 3380
    goto/16 :goto_0

    .line 3382
    :cond_d3
    const-string/jumbo v4, "supportsVrr"

    .line 3385
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3388
    move-result v3

    .line 3389
    if-eqz v3, :cond_d4

    .line 3391
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3394
    move-result-object v3

    .line 3395
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 3398
    move-result v3

    .line 3399
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3402
    move-result-object v3

    .line 3403
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    .line 3405
    goto/16 :goto_0

    .line 3407
    :cond_d4
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3410
    goto/16 :goto_0

    .line 3412
    :cond_d5
    if-ne v3, v4, :cond_d6

    .line 3414
    return-object p0

    .line 3415
    :cond_d6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3417
    const-string v0, "DisplayConfiguration is not closed"

    .line 3419
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3422
    throw p0

    .line 3423
    :cond_d7
    return-object v1
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 18
    :goto_0
    return-object v0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

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
