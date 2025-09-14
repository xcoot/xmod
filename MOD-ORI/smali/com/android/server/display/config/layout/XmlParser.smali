.class public abstract Lcom/android/server/display/config/layout/XmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;
    .locals 9

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
    const-string/jumbo v3, "layouts"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_19

    .line 35
    .line 36
    new-instance p0, Lcom/android/server/display/config/layout/Layouts;

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
    if-eq v3, v2, :cond_17

    .line 50
    .line 51
    if-eq v3, v4, :cond_17

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
    const-string/jumbo v6, "layout"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_16

    .line 73
    .line 74
    new-instance v3, Lcom/android/server/display/config/layout/Layout;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eq v6, v2, :cond_13

    .line 87
    .line 88
    if-eq v6, v4, :cond_13

    .line 89
    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eq v6, v5, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const-string/jumbo v7, "state"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_2

    .line 109
    .line 110
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    new-instance v7, Ljava/math/BigInteger;

    .line 115
    .line 116
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v7, v3, Lcom/android/server/display/config/layout/Layout;->state:Ljava/math/BigInteger;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const-string/jumbo v7, "display"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_12

    .line 130
    .line 131
    new-instance v6, Lcom/android/server/display/config/layout/Display;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v7, "enabled"

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_3

    .line 144
    .line 145
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    .line 154
    .line 155
    :cond_3
    const-string/jumbo v7, "defaultDisplay"

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    if-eqz v7, :cond_4

    .line 163
    .line 164
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    .line 173
    .line 174
    :cond_4
    const-string/jumbo v7, "refreshRateZoneId"

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    if-eqz v7, :cond_5

    .line 182
    .line 183
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    .line 184
    .line 185
    :cond_5
    const-string/jumbo v7, "displayGroup"

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    if-eqz v7, :cond_6

    .line 193
    .line 194
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    .line 195
    .line 196
    :cond_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 197
    .line 198
    .line 199
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eq v7, v2, :cond_f

    .line 204
    .line 205
    if-eq v7, v4, :cond_f

    .line 206
    .line 207
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eq v7, v5, :cond_7

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const-string v8, "address"

    .line 219
    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_8

    .line 225
    .line 226
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    new-instance v8, Ljava/math/BigInteger;

    .line 231
    .line 232
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iput-object v8, v6, Lcom/android/server/display/config/layout/Display;->address_optional:Ljava/math/BigInteger;

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_8
    const-string/jumbo v8, "port"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_9

    .line 246
    .line 247
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    new-instance v8, Ljava/math/BigInteger;

    .line 252
    .line 253
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iput-object v8, v6, Lcom/android/server/display/config/layout/Display;->port_optional:Ljava/math/BigInteger;

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_9
    const-string/jumbo v8, "position"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_a

    .line 267
    .line 268
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_a
    const-string/jumbo v8, "brightnessThrottlingMapId"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_b

    .line 283
    .line 284
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_b
    const-string/jumbo v8, "powerThrottlingMapId"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-eqz v8, :cond_c

    .line 299
    .line 300
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->powerThrottlingMapId:Ljava/lang/String;

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_c
    const-string/jumbo v8, "refreshRateThermalThrottlingMapId"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_d

    .line 315
    .line 316
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    iput-object v7, v6, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_d
    const-string/jumbo v8, "leadDisplayAddress"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-eqz v7, :cond_e

    .line 331
    .line 332
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    new-instance v8, Ljava/math/BigInteger;

    .line 337
    .line 338
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iput-object v8, v6, Lcom/android/server/display/config/layout/Display;->leadDisplayAddress:Ljava/math/BigInteger;

    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_e
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_2

    .line 349
    .line 350
    :cond_f
    if-ne v7, v4, :cond_11

    .line 351
    .line 352
    iget-object v7, v3, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 353
    .line 354
    if-nez v7, :cond_10

    .line 355
    .line 356
    new-instance v7, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object v7, v3, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 362
    .line 363
    :cond_10
    iget-object v7, v3, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 364
    .line 365
    check-cast v7, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_11
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 373
    .line 374
    const-string v0, "Display is not closed"

    .line 375
    .line 376
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p0

    .line 380
    :cond_12
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_13
    if-ne v6, v4, :cond_15

    .line 386
    .line 387
    iget-object v4, p0, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 388
    .line 389
    if-nez v4, :cond_14

    .line 390
    .line 391
    new-instance v4, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    iput-object v4, p0, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 397
    .line 398
    :cond_14
    iget-object v4, p0, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 399
    .line 400
    check-cast v4, Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_15
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 408
    .line 409
    const-string v0, "Layout is not closed"

    .line 410
    .line 411
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw p0

    .line 415
    :cond_16
    invoke-static {v0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_17
    if-ne v3, v4, :cond_18

    .line 421
    .line 422
    return-object p0

    .line 423
    :cond_18
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 424
    .line 425
    const-string v0, "Layouts is not closed"

    .line 426
    .line 427
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw p0

    .line 431
    :cond_19
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
