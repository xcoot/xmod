.class public abstract Lcom/android/server/policy/devicestate/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .locals 11

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
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "device-state-config"

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_29

    .line 33
    .line 34
    new-instance p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v1, v2, :cond_27

    .line 48
    .line 49
    if-eq v1, v3, :cond_27

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v4, 0x2

    .line 56
    if-eq v1, v4, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v5, "device-state"

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_26

    .line 70
    .line 71
    new-instance v1, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eq v5, v2, :cond_23

    .line 84
    .line 85
    if-eq v5, v3, :cond_23

    .line 86
    .line 87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eq v5, v4, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v6, "identifier"

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    new-instance v6, Ljava/math/BigInteger;

    .line 111
    .line 112
    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v6, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const-string/jumbo v6, "name"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_3

    .line 126
    .line 127
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo v7, "properties"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_9

    .line 142
    .line 143
    new-instance v5, Lcom/android/server/policy/devicestate/config/Properties;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eq v6, v2, :cond_7

    .line 156
    .line 157
    if-eq v6, v3, :cond_7

    .line 158
    .line 159
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eq v6, v4, :cond_4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const-string/jumbo v7, "property"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 184
    .line 185
    if-nez v7, :cond_5

    .line 186
    .line 187
    new-instance v7, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 193
    .line 194
    :cond_5
    iget-object v7, v5, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 195
    .line 196
    check-cast v7, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_6
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    if-ne v6, v3, :cond_8

    .line 207
    .line 208
    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_8
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 213
    .line 214
    const-string v0, "Properties is not closed"

    .line 215
    .line 216
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_9
    const-string v7, "conditions"

    .line 221
    .line 222
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_22

    .line 227
    .line 228
    new-instance v5, Lcom/android/server/policy/devicestate/config/Conditions;

    .line 229
    .line 230
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 234
    .line 235
    .line 236
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-eq v7, v2, :cond_20

    .line 241
    .line 242
    if-eq v7, v3, :cond_20

    .line 243
    .line 244
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eq v7, v4, :cond_a

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    const-string v8, "lid-switch"

    .line 256
    .line 257
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-eqz v8, :cond_f

    .line 262
    .line 263
    new-instance v7, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    .line 264
    .line 265
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 269
    .line 270
    .line 271
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-eq v8, v2, :cond_d

    .line 276
    .line 277
    if-eq v8, v3, :cond_d

    .line 278
    .line 279
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eq v8, v4, :cond_b

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    const-string/jumbo v9, "open"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_c

    .line 298
    .line 299
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_c
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_d
    if-ne v8, v3, :cond_e

    .line 319
    .line 320
    iput-object v7, v5, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_e
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 324
    .line 325
    const-string v0, "LidSwitchCondition is not closed"

    .line 326
    .line 327
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p0

    .line 331
    :cond_f
    const-string/jumbo v8, "sensor"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_1f

    .line 339
    .line 340
    new-instance v7, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 341
    .line 342
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 346
    .line 347
    .line 348
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    if-eq v8, v2, :cond_1c

    .line 353
    .line 354
    if-eq v8, v3, :cond_1c

    .line 355
    .line 356
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    if-eq v8, v4, :cond_10

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    const-string/jumbo v9, "type"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    if-eqz v9, :cond_11

    .line 375
    .line 376
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_11
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    if-eqz v9, :cond_12

    .line 388
    .line 389
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    iput-object v8, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_12
    const-string/jumbo v9, "value"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    if-eqz v8, :cond_1b

    .line 404
    .line 405
    new-instance v8, Lcom/android/server/policy/devicestate/config/NumericRange;

    .line 406
    .line 407
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 411
    .line 412
    .line 413
    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    if-eq v9, v2, :cond_18

    .line 418
    .line 419
    if-eq v9, v3, :cond_18

    .line 420
    .line 421
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 422
    .line 423
    .line 424
    move-result v9

    .line 425
    if-eq v9, v4, :cond_13

    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    const-string/jumbo v10, "min"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    if-eqz v10, :cond_14

    .line 440
    .line 441
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    new-instance v10, Ljava/math/BigDecimal;

    .line 446
    .line 447
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_14
    const-string/jumbo v10, "min-inclusive"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v10

    .line 460
    if-eqz v10, :cond_15

    .line 461
    .line 462
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    new-instance v10, Ljava/math/BigDecimal;

    .line 467
    .line 468
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    .line 472
    .line 473
    goto :goto_6

    .line 474
    :cond_15
    const-string/jumbo v10, "max"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-eqz v10, :cond_16

    .line 482
    .line 483
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    new-instance v10, Ljava/math/BigDecimal;

    .line 488
    .line 489
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_16
    const-string/jumbo v10, "max-inclusive"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v9

    .line 502
    if-eqz v9, :cond_17

    .line 503
    .line 504
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    new-instance v10, Ljava/math/BigDecimal;

    .line 509
    .line 510
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iput-object v10, v8, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_17
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 517
    .line 518
    .line 519
    goto :goto_6

    .line 520
    :cond_18
    if-ne v9, v3, :cond_1a

    .line 521
    .line 522
    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 523
    .line 524
    if-nez v9, :cond_19

    .line 525
    .line 526
    new-instance v9, Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .line 530
    .line 531
    iput-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 532
    .line 533
    :cond_19
    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 534
    .line 535
    check-cast v9, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    goto/16 :goto_5

    .line 541
    .line 542
    :cond_1a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 543
    .line 544
    const-string v0, "NumericRange is not closed"

    .line 545
    .line 546
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw p0

    .line 550
    :cond_1b
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :cond_1c
    if-ne v8, v3, :cond_1e

    .line 556
    .line 557
    iget-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 558
    .line 559
    if-nez v8, :cond_1d

    .line 560
    .line 561
    new-instance v8, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .line 565
    .line 566
    iput-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 567
    .line 568
    :cond_1d
    iget-object v8, v5, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 569
    .line 570
    check-cast v8, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    goto/16 :goto_3

    .line 576
    .line 577
    :cond_1e
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 578
    .line 579
    const-string v0, "SensorCondition is not closed"

    .line 580
    .line 581
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw p0

    .line 585
    :cond_1f
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_3

    .line 589
    .line 590
    :cond_20
    if-ne v7, v3, :cond_21

    .line 591
    .line 592
    iput-object v5, v1, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    .line 593
    .line 594
    goto/16 :goto_1

    .line 595
    .line 596
    :cond_21
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 597
    .line 598
    const-string v0, "Conditions is not closed"

    .line 599
    .line 600
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw p0

    .line 604
    :cond_22
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :cond_23
    if-ne v5, v3, :cond_25

    .line 610
    .line 611
    iget-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 612
    .line 613
    if-nez v3, :cond_24

    .line 614
    .line 615
    new-instance v3, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .line 619
    .line 620
    iput-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 621
    .line 622
    :cond_24
    iget-object v3, p0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 623
    .line 624
    check-cast v3, Ljava/util/ArrayList;

    .line 625
    .line 626
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :cond_25
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 632
    .line 633
    const-string v0, "DeviceState is not closed"

    .line 634
    .line 635
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw p0

    .line 639
    :cond_26
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_27
    if-ne v1, v3, :cond_28

    .line 645
    .line 646
    return-object p0

    .line 647
    :cond_28
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 648
    .line 649
    const-string v0, "DeviceStateConfig is not closed"

    .line 650
    .line 651
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw p0

    .line 655
    :cond_29
    return-object v1
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
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
