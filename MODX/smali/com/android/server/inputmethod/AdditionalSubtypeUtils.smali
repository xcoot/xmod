.class public abstract Lcom/android/server/inputmethod/AdditionalSubtypeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/io/File;

    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "system"

    .line 12
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 19
    move-result-object p0

    .line 20
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 22
    const-string/jumbo v1, "inputmethod"

    .line 25
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    new-instance p0, Ljava/io/File;

    .line 30
    const-string/jumbo v1, "subtypes.xml"

    .line 33
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/util/AtomicFile;

    .line 38
    const-string/jumbo v1, "input-subtypes"

    .line 41
    invoke-direct {v0, p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 50
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->loadFromFile(Landroid/util/AtomicFile;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 57
    return-object p0
.end method

.method public static loadFromFile(Landroid/util/AtomicFile;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 20

    .line 1
    const-string v0, "1"

    .line 3
    const-string v1, "AdditionalSubtypeUtils"

    .line 5
    new-instance v2, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 13
    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 21
    move-result v5

    .line 22
    :goto_0
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x2

    .line 24
    if-eq v5, v7, :cond_0

    .line 26
    if-eq v5, v6, :cond_0

    .line 28
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 31
    move-result v5

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object/from16 v17, v2

    .line 36
    move-object/from16 v18, v3

    .line 38
    move-object v2, v1

    .line 39
    :goto_1
    move-object v1, v0

    .line 40
    goto/16 :goto_c

    .line 42
    :cond_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    const-string/jumbo v8, "subtypes"

    .line 49
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_d

    .line 55
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 58
    move-result v5

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v9, v8

    .line 61
    move-object v10, v9

    .line 62
    :goto_2
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 65
    move-result v11

    .line 66
    const/4 v12, 0x3

    .line 67
    if-ne v11, v12, :cond_2

    .line 69
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 72
    move-result v12

    .line 73
    if-le v12, v5, :cond_1

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    move-object/from16 v17, v2

    .line 78
    move-object/from16 v18, v3

    .line 80
    move-object v2, v1

    .line 81
    goto/16 :goto_b

    .line 83
    :cond_2
    :goto_3
    if-eq v11, v6, :cond_1

    .line 85
    if-eq v11, v7, :cond_4

    .line 87
    :cond_3
    :goto_4
    move-object/from16 v17, v2

    .line 89
    move-object/from16 v18, v3

    .line 91
    move/from16 v16, v5

    .line 93
    move-object v5, v8

    .line 94
    move-object v2, v1

    .line 95
    goto/16 :goto_a

    .line 97
    :cond_4
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 100
    move-result-object v11

    .line 101
    const-string/jumbo v12, "imi"

    .line 104
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v12

    .line 108
    if-eqz v12, :cond_6

    .line 110
    const-string/jumbo v9, "id"

    .line 113
    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v9

    .line 117
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_5

    .line 123
    const-string v11, "Invalid imi id found in subtypes.xml"

    .line 125
    invoke-static {v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v2, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    const-string/jumbo v12, "subtype"

    .line 141
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_3

    .line 147
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-nez v11, :cond_7

    .line 153
    if-nez v10, :cond_8

    .line 155
    :cond_7
    move-object/from16 v19, v1

    .line 157
    move-object/from16 v17, v2

    .line 159
    move-object/from16 v18, v3

    .line 161
    move/from16 v16, v5

    .line 163
    move-object v5, v8

    .line 164
    goto/16 :goto_9

    .line 166
    :cond_8
    :try_start_2
    const-string/jumbo v11, "icon"

    .line 169
    invoke-interface {v4, v8, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-result v11

    .line 173
    const-string/jumbo v12, "label"

    .line 176
    invoke-interface {v4, v8, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-result v12

    .line 180
    const-string/jumbo v13, "nameOverride"

    .line 183
    invoke-interface {v4, v8, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v13

    .line 187
    const-string/jumbo v14, "pkLanguageTag"

    .line 190
    invoke-interface {v4, v8, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v14

    .line 194
    const-string/jumbo v15, "pkLayoutType"

    .line 197
    invoke-interface {v4, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v15

    .line 201
    const-string/jumbo v6, "imeSubtypeLocale"

    .line 204
    invoke-interface {v4, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v6

    .line 208
    const-string/jumbo v7, "languageTag"

    .line 211
    invoke-interface {v4, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v7

    .line 215
    move/from16 v16, v5

    .line 217
    const-string/jumbo v5, "imeSubtypeMode"

    .line 220
    invoke-interface {v4, v8, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 224
    move-object/from16 v17, v2

    .line 226
    :try_start_3
    const-string/jumbo v2, "imeSubtypeExtraValue"

    .line 229
    invoke-interface {v4, v8, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 233
    move-object/from16 v18, v3

    .line 235
    :try_start_4
    const-string/jumbo v3, "isAuxiliary"

    .line 238
    invoke-interface {v4, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v3

    .line 242
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 250
    move-object/from16 v19, v1

    .line 252
    :try_start_5
    const-string/jumbo v1, "isAsciiCapable"

    .line 255
    invoke-interface {v4, v8, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v1

    .line 267
    new-instance v8, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 269
    invoke-direct {v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 272
    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 275
    move-result-object v8

    .line 276
    if-nez v14, :cond_9

    .line 278
    const/4 v12, 0x0

    .line 279
    goto :goto_5

    .line 280
    :cond_9
    new-instance v12, Landroid/icu/util/ULocale;

    .line 282
    invoke-direct {v12, v14}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 285
    :goto_5
    if-nez v15, :cond_a

    .line 287
    const-string v15, ""

    .line 289
    goto :goto_7

    .line 290
    :catchall_1
    move-exception v0

    .line 291
    :goto_6
    move-object v1, v0

    .line 292
    move-object/from16 v2, v19

    .line 294
    goto/16 :goto_c

    .line 296
    :cond_a
    :goto_7
    invoke-virtual {v8, v12, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 299
    move-result-object v8

    .line 300
    invoke-virtual {v8, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 303
    move-result-object v8

    .line 304
    invoke-virtual {v8, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v6, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 327
    move-result-object v1

    .line 328
    const-string/jumbo v2, "subtypeId"

    .line 331
    const/4 v3, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    invoke-interface {v4, v5, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_b

    .line 339
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 342
    :cond_b
    if-eqz v13, :cond_c

    .line 344
    invoke-virtual {v1, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameOverride(Ljava/lang/CharSequence;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 347
    :cond_c
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 354
    move-object/from16 v2, v19

    .line 356
    goto :goto_a

    .line 357
    :catchall_2
    move-exception v0

    .line 358
    move-object/from16 v19, v1

    .line 360
    goto :goto_6

    .line 361
    :catchall_3
    move-exception v0

    .line 362
    move-object/from16 v19, v1

    .line 364
    :goto_8
    move-object/from16 v18, v3

    .line 366
    goto :goto_6

    .line 367
    :catchall_4
    move-exception v0

    .line 368
    move-object/from16 v19, v1

    .line 370
    move-object/from16 v17, v2

    .line 372
    goto :goto_8

    .line 373
    :goto_9
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v2, "IME uninstalled or not valid.: "

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 390
    move-object/from16 v2, v19

    .line 392
    :try_start_7
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 395
    :goto_a
    move-object v1, v2

    .line 396
    move-object v8, v5

    .line 397
    move/from16 v5, v16

    .line 399
    move-object/from16 v2, v17

    .line 401
    move-object/from16 v3, v18

    .line 403
    const/4 v6, 0x1

    .line 404
    const/4 v7, 0x2

    .line 405
    goto/16 :goto_2

    .line 407
    :catchall_5
    move-exception v0

    .line 408
    goto/16 :goto_1

    .line 410
    :catchall_6
    move-exception v0

    .line 411
    move-object/from16 v2, v19

    .line 413
    goto/16 :goto_1

    .line 415
    :goto_b
    if-eqz v18, :cond_f

    .line 417
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    .line 420
    goto :goto_f

    .line 421
    :catch_0
    move-exception v0

    .line 422
    goto :goto_e

    .line 423
    :cond_d
    move-object/from16 v17, v2

    .line 425
    move-object/from16 v18, v3

    .line 427
    move-object v2, v1

    .line 428
    :try_start_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 430
    const-string v1, "Xml doesn\'t start with subtypes"

    .line 432
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 435
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 436
    :goto_c
    if-eqz v18, :cond_e

    .line 438
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 441
    goto :goto_d

    .line 442
    :catchall_7
    move-exception v0

    .line 443
    move-object v3, v0

    .line 444
    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 447
    :cond_e
    :goto_d
    throw v1
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    .line 448
    :catch_1
    move-exception v0

    .line 449
    move-object/from16 v17, v2

    .line 451
    move-object v2, v1

    .line 452
    :goto_e
    const-string v1, "Error reading subtypes"

    .line 454
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :cond_f
    :goto_f
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 459
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_10

    .line 465
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 467
    goto :goto_10

    .line 468
    :cond_10
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 470
    move-object/from16 v1, v17

    .line 472
    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    .line 475
    :goto_10
    return-object v0
.end method

.method public static saveToFile(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;Landroid/util/AtomicFile;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "subtype"

    .line 4
    const-string/jumbo v1, "imi"

    .line 7
    const-string/jumbo v2, "subtypes"

    .line 10
    const-string v3, "AdditionalSubtypeUtils"

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object v5, p1, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 20
    move-result v5

    .line 21
    if-lez v5, :cond_0

    .line 23
    move v5, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    :goto_0
    const/4 v6, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 30
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 34
    move-result-object v8

    .line 35
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    invoke-interface {v8, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 40
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 43
    invoke-interface {v8, v9, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 46
    invoke-interface {v8, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    iget-object v4, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v4

    .line 59
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_6

    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Ljava/lang/String;

    .line 71
    if-eqz v5, :cond_1

    .line 73
    iget-object v10, p1, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_1

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v11, "IME uninstalled or not valid.: "

    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v9

    .line 98
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    move-object v6, v7

    .line 104
    goto/16 :goto_5

    .line 106
    :catch_0
    move-exception p0

    .line 107
    move-object v6, v7

    .line 108
    goto/16 :goto_3

    .line 110
    :cond_1
    iget-object v10, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Ljava/util/List;

    .line 118
    if-nez v10, :cond_2

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v11, "Null subtype list for IME "

    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v9

    .line 137
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string/jumbo v11, "id"

    .line 147
    invoke-interface {v8, v6, v11, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object v9

    .line 154
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_5

    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 166
    invoke-interface {v8, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_3

    .line 175
    const-string/jumbo v11, "subtypeId"

    .line 178
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    .line 181
    move-result v12

    .line 182
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    :cond_3
    const-string/jumbo v11, "icon"

    .line 188
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    .line 191
    move-result v12

    .line 192
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string/jumbo v11, "label"

    .line 198
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    .line 201
    move-result v12

    .line 202
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string/jumbo v11, "nameOverride"

    .line 208
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getNameOverride()Ljava/lang/CharSequence;

    .line 211
    move-result-object v12

    .line 212
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 215
    move-result-object v12

    .line 216
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    .line 222
    move-result-object v11

    .line 223
    if-eqz v11, :cond_4

    .line 225
    const-string/jumbo v12, "pkLanguageTag"

    .line 228
    invoke-virtual {v11}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    .line 231
    move-result-object v11

    .line 232
    invoke-interface {v8, v6, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    :cond_4
    const-string/jumbo v11, "pkLayoutType"

    .line 238
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    .line 241
    move-result-object v12

    .line 242
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string/jumbo v11, "imeSubtypeLocale"

    .line 248
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 251
    move-result-object v12

    .line 252
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const-string/jumbo v11, "languageTag"

    .line 258
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    .line 261
    move-result-object v12

    .line 262
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    const-string/jumbo v11, "imeSubtypeMode"

    .line 268
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 271
    move-result-object v12

    .line 272
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const-string/jumbo v11, "imeSubtypeExtraValue"

    .line 278
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    .line 281
    move-result-object v12

    .line 282
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const-string/jumbo v11, "isAuxiliary"

    .line 288
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    .line 291
    move-result v12

    .line 292
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string/jumbo v11, "isAsciiCapable"

    .line 298
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    .line 301
    move-result v10

    .line 302
    invoke-interface {v8, v6, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-interface {v8, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    goto/16 :goto_2

    .line 310
    :cond_5
    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    goto/16 :goto_1

    .line 315
    :cond_6
    invoke-interface {v8, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 321
    invoke-virtual {p2, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 327
    goto :goto_4

    .line 328
    :catchall_1
    move-exception p0

    .line 329
    goto :goto_5

    .line 330
    :catch_1
    move-exception p0

    .line 331
    :goto_3
    :try_start_2
    const-string p1, "Error writing subtypes"

    .line 333
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    if-eqz v6, :cond_7

    .line 338
    invoke-virtual {p2, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :cond_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    :goto_4
    return-void

    .line 345
    :goto_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 348
    throw p0
.end method
