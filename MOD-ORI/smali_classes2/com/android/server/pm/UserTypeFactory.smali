.class public abstract Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    .line 1
    const-string v0, "UserTypeFactory"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "user-types"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v1, v2, :cond_13

    .line 18
    .line 19
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v3, "profile-type"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const-string v4, " in "

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    const-string v2, "full-type"

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_10

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    const-string/jumbo v1, "name"

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-interface {p1, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_f

    .line 53
    .line 54
    const-string v3, ""

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v3, "android."

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v5, 0x1000

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v6, "Customizing user type "

    .line 84
    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    iget v6, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 109
    .line 110
    if-eq v6, v5, :cond_6

    .line 111
    .line 112
    :cond_2
    if-nez v2, :cond_3

    .line 113
    .line 114
    iget v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 115
    .line 116
    const/16 v6, 0x400

    .line 117
    .line 118
    if-ne v5, v6, :cond_3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "Wrong base type to customize user type ("

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "), which is type "

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v1, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 142
    .line 143
    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :catch_0
    move-exception p0

    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v2, "Illegal custom user type name "

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ": Non-AOSP user types cannot start with \'android.\'"

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_5
    if-eqz v2, :cond_e

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v6, "Creating custom user type "

    .line 197
    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    new-instance v3, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 212
    .line 213
    invoke-direct {v3}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v1, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 217
    .line 218
    iput v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 219
    .line 220
    invoke-virtual {p0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 224
    .line 225
    const-string/jumbo v1, "max-allowed-per-parent"

    .line 226
    .line 227
    .line 228
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/4 v6, 0x0

    .line 231
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 235
    .line 236
    .line 237
    const-string v1, "icon-badge"

    .line 238
    .line 239
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/4 v6, 0x1

    .line 242
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 243
    .line 244
    .line 245
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 246
    .line 247
    .line 248
    const-string v1, "badge-plain"

    .line 249
    .line 250
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 251
    .line 252
    const/4 v6, 0x2

    .line 253
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 254
    .line 255
    .line 256
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 257
    .line 258
    .line 259
    const-string v1, "badge-no-background"

    .line 260
    .line 261
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    const/4 v6, 0x3

    .line 264
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 265
    .line 266
    .line 267
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 268
    .line 269
    .line 270
    const-string/jumbo v1, "status-bar-icon"

    .line 271
    .line 272
    .line 273
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 274
    .line 275
    const/4 v6, 0x4

    .line 276
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 277
    .line 278
    .line 279
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    const-string v1, "enabled"

    .line 283
    .line 284
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    const/4 v6, 0x5

    .line 287
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 288
    .line 289
    .line 290
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v1, "max-allowed"

    .line 294
    .line 295
    .line 296
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/4 v6, 0x6

    .line 299
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 300
    .line 301
    .line 302
    invoke-static {p1, v1, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 303
    .line 304
    .line 305
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    :goto_3
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_12

    .line 314
    .line 315
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    const-string v6, "default-restrictions"

    .line 320
    .line 321
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-eqz v6, :cond_8

    .line 326
    .line 327
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iput-object v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_8
    if-eqz v2, :cond_9

    .line 339
    .line 340
    const-string v6, "badge-labels"

    .line 341
    .line 342
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-eqz v6, :cond_9

    .line 347
    .line 348
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 349
    .line 350
    const/4 v6, 0x7

    .line 351
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 352
    .line 353
    .line 354
    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    .line 355
    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_9
    if-eqz v2, :cond_a

    .line 359
    .line 360
    const-string v6, "badge-colors"

    .line 361
    .line 362
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_a

    .line 367
    .line 368
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 369
    .line 370
    const/16 v6, 0x8

    .line 371
    .line 372
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 373
    .line 374
    .line 375
    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_a
    if-eqz v2, :cond_b

    .line 380
    .line 381
    const-string v6, "badge-colors-dark"

    .line 382
    .line 383
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-eqz v6, :cond_b

    .line 388
    .line 389
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    const/16 v6, 0x9

    .line 392
    .line 393
    invoke-direct {v5, v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    .line 394
    .line 395
    .line 396
    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :cond_b
    const-string/jumbo v6, "user-properties"

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_d

    .line 408
    .line 409
    iget-object v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 410
    .line 411
    if-nez v5, :cond_c

    .line 412
    .line 413
    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    .line 414
    .line 415
    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    iput-object v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 423
    .line 424
    :cond_c
    iget-object v5, v3, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 425
    .line 426
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v5, v6}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 431
    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string v7, "Unrecognized tag "

    .line 440
    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    goto/16 :goto_3

    .line 465
    .line 466
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 467
    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string v2, "Creation of non-profile user type ("

    .line 474
    .line 475
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v1, ") is not currently supported."

    .line 482
    .line 483
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw p0

    .line 494
    :cond_f
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v2, "Skipping user type with no name in "

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 519
    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_10
    const-string v2, "change-user-type"

    .line 523
    .line 524
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-eqz v2, :cond_11

    .line 529
    .line 530
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 531
    .line 532
    .line 533
    goto :goto_5

    .line 534
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v3, "Skipping unknown element "

    .line 540
    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 565
    .line 566
    .line 567
    :cond_12
    :goto_5
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :goto_6
    const-string p1, "Cannot read user type configuration file."

    .line 573
    .line 574
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .line 576
    .line 577
    :cond_13
    return-void
.end method

.method public static getDefaultBuilders()Landroid/util/ArrayMap;
    .locals 50

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "android.os.usertype.profile.MANAGED"

    .line 12
    .line 13
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v3, 0x1000

    .line 16
    .line 17
    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 18
    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 25
    .line 26
    const v5, 0x1040c50

    .line 27
    .line 28
    .line 29
    const v6, 0x1040c51

    .line 30
    .line 31
    .line 32
    const v7, 0x1040c52

    .line 33
    .line 34
    .line 35
    filled-new-array {v5, v6, v7}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 40
    .line 41
    const v5, 0x10803f9

    .line 42
    .line 43
    .line 44
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 45
    .line 46
    const v5, 0x10803f4

    .line 47
    .line 48
    .line 49
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 50
    .line 51
    const v5, 0x10803f6

    .line 52
    .line 53
    .line 54
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 55
    .line 56
    const v5, 0x1080bad

    .line 57
    .line 58
    .line 59
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 60
    .line 61
    const v5, 0x10407bb

    .line 62
    .line 63
    .line 64
    const v6, 0x10407bc

    .line 65
    .line 66
    .line 67
    const v7, 0x10407bd

    .line 68
    .line 69
    .line 70
    filled-new-array {v5, v6, v7}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iput-object v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 75
    .line 76
    const v8, 0x1060315

    .line 77
    .line 78
    .line 79
    const v9, 0x1060317

    .line 80
    .line 81
    .line 82
    const v10, 0x1060319

    .line 83
    .line 84
    .line 85
    filled-new-array {v8, v9, v10}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 90
    .line 91
    const v11, 0x1060316

    .line 92
    .line 93
    .line 94
    const v12, 0x1060318

    .line 95
    .line 96
    .line 97
    const v13, 0x106031a

    .line 98
    .line 99
    .line 100
    filled-new-array {v11, v12, v13}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 105
    .line 106
    const v14, 0x104014e

    .line 107
    .line 108
    .line 109
    iput v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 110
    .line 111
    new-instance v14, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v15, "no_wallpaper"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 123
    .line 124
    new-instance v14, Landroid/os/Bundle;

    .line 125
    .line 126
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v11, "managed_profile_contact_remote_search"

    .line 130
    .line 131
    .line 132
    const-string v12, "1"

    .line 133
    .line 134
    invoke-virtual {v14, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v11, "cross_profile_calendar_enabled"

    .line 138
    .line 139
    invoke-virtual {v14, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 143
    .line 144
    sget-object v11, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 145
    .line 146
    new-instance v11, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    sget-object v30, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 152
    .line 153
    sget-object v31, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 154
    .line 155
    sget-object v14, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 156
    .line 157
    sget-object v32, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 158
    .line 159
    sget-object v18, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 160
    .line 161
    sget-object v19, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 162
    .line 163
    sget-object v20, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 164
    .line 165
    sget-object v21, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 166
    .line 167
    sget-object v22, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 168
    .line 169
    sget-object v23, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 170
    .line 171
    sget-object v24, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 172
    .line 173
    sget-object v25, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 174
    .line 175
    sget-object v26, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 176
    .line 177
    sget-object v27, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 178
    .line 179
    sget-object v28, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 180
    .line 181
    sget-object v29, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 182
    .line 183
    move-object/from16 v16, v14

    .line 184
    .line 185
    move-object/from16 v17, v32

    .line 186
    .line 187
    filled-new-array/range {v16 .. v31}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 188
    .line 189
    .line 190
    move-result-object v16

    .line 191
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    const/4 v13, 0x0

    .line 199
    invoke-static {v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    .line 205
    .line 206
    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 207
    .line 208
    new-instance v8, Landroid/content/pm/UserProperties$Builder;

    .line 209
    .line 210
    invoke-direct {v8}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v8, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v8, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v8, v13}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v8, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {v8, v13}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual {v8, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    iput-object v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 246
    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 251
    .line 252
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v2, "android.os.usertype.full.SYSTEM"

    .line 256
    .line 257
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 258
    .line 259
    const/16 v8, 0xc00

    .line 260
    .line 261
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 262
    .line 263
    const/16 v8, 0x4003

    .line 264
    .line 265
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 266
    .line 267
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 268
    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 273
    .line 274
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v2, "android.os.usertype.full.SECONDARY"

    .line 278
    .line 279
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 280
    .line 281
    const/16 v8, 0x400

    .line 282
    .line 283
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 284
    .line 285
    const/4 v11, -0x1

    .line 286
    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 287
    .line 288
    new-instance v9, Landroid/os/Bundle;

    .line 289
    .line 290
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v10, "no_outgoing_calls"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v6, "no_sms"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    .line 304
    .line 305
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 306
    .line 307
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const v2, 0x11101ab

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_0

    .line 322
    .line 323
    const/16 v1, 0x100

    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_0
    move v1, v13

    .line 327
    :goto_0
    or-int/lit8 v1, v1, 0x4

    .line 328
    .line 329
    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 330
    .line 331
    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v9, "android.os.usertype.full.GUEST"

    .line 335
    .line 336
    iput-object v9, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 337
    .line 338
    iput v8, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 339
    .line 340
    iput v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 341
    .line 342
    iput v4, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 343
    .line 344
    new-instance v1, Landroid/os/Bundle;

    .line 345
    .line 346
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    .line 354
    .line 355
    const-string/jumbo v7, "no_config_wifi"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    const-string/jumbo v7, "no_install_unknown_sources"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    .line 366
    .line 367
    const-string/jumbo v7, "no_config_credentials"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    .line 372
    .line 373
    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 374
    .line 375
    invoke-virtual {v0, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 379
    .line 380
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v2, "android.os.usertype.full.DEMO"

    .line 384
    .line 385
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 386
    .line 387
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 388
    .line 389
    const/16 v7, 0x200

    .line 390
    .line 391
    iput v7, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 392
    .line 393
    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    iput-object v7, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 397
    .line 398
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 402
    .line 403
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 404
    .line 405
    .line 406
    const-string v2, "android.os.usertype.full.RESTRICTED"

    .line 407
    .line 408
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 409
    .line 410
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 411
    .line 412
    const/16 v9, 0x8

    .line 413
    .line 414
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 415
    .line 416
    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 417
    .line 418
    iput-object v7, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 419
    .line 420
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 424
    .line 425
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v2, "android.os.usertype.system.HEADLESS"

    .line 429
    .line 430
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 431
    .line 432
    const/16 v9, 0x800

    .line 433
    .line 434
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 435
    .line 436
    const/4 v9, 0x3

    .line 437
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 438
    .line 439
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 440
    .line 441
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 445
    .line 446
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v2, "android.os.usertype.profile.CLONE"

    .line 450
    .line 451
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 452
    .line 453
    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 454
    .line 455
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 456
    .line 457
    const v9, 0x1040c4c

    .line 458
    .line 459
    .line 460
    filled-new-array {v9}, [I

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 465
    .line 466
    iput v13, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 467
    .line 468
    const v9, 0x104014c

    .line 469
    .line 470
    .line 471
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 472
    .line 473
    iput-object v7, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 474
    .line 475
    sget-object v48, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 476
    .line 477
    sget-object v49, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 478
    .line 479
    sget-object v33, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 480
    .line 481
    sget-object v34, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 482
    .line 483
    sget-object v35, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 484
    .line 485
    sget-object v36, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 486
    .line 487
    sget-object v37, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 488
    .line 489
    sget-object v38, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 490
    .line 491
    sget-object v39, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 492
    .line 493
    sget-object v40, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 494
    .line 495
    sget-object v41, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 496
    .line 497
    sget-object v42, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 498
    .line 499
    sget-object v43, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 500
    .line 501
    sget-object v44, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 502
    .line 503
    sget-object v45, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 504
    .line 505
    sget-object v46, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 506
    .line 507
    sget-object v47, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 508
    .line 509
    filled-new-array/range {v33 .. v49}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    iput-object v7, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 518
    .line 519
    const-string/jumbo v7, "user_setup_complete"

    .line 520
    .line 521
    .line 522
    invoke-static {v7, v12}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 527
    .line 528
    const v9, 0x108041d

    .line 529
    .line 530
    .line 531
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 532
    .line 533
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 534
    .line 535
    const v9, 0x10800f6

    .line 536
    .line 537
    .line 538
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 539
    .line 540
    filled-new-array {v5}, [I

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 545
    .line 546
    const v9, 0x10601ff

    .line 547
    .line 548
    .line 549
    filled-new-array {v9}, [I

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 554
    .line 555
    filled-new-array {v9}, [I

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 560
    .line 561
    new-instance v9, Landroid/content/pm/UserProperties$Builder;

    .line 562
    .line 563
    invoke-direct {v9}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    invoke-virtual {v9, v13}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v9, v13}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    const/16 v11, 0xa

    .line 591
    .line 592
    invoke-virtual {v9, v11}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    .line 593
    .line 594
    .line 595
    move-result-object v9

    .line 596
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;

    .line 597
    .line 598
    .line 599
    move-result-object v9

    .line 600
    const/4 v8, 0x2

    .line 601
    invoke-virtual {v9, v8}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    invoke-virtual {v9, v13}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    .line 622
    .line 623
    .line 624
    move-result-object v9

    .line 625
    invoke-virtual {v9}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 630
    .line 631
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 635
    .line 636
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 637
    .line 638
    .line 639
    const-string v2, "android.os.usertype.profile.COMMUNAL"

    .line 640
    .line 641
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 642
    .line 643
    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 644
    .line 645
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 646
    .line 647
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    .line 648
    .line 649
    .line 650
    move-result v9

    .line 651
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 652
    .line 653
    const v9, 0x1040c4d

    .line 654
    .line 655
    .line 656
    filled-new-array {v9}, [I

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 661
    .line 662
    const v9, 0x10805f2

    .line 663
    .line 664
    .line 665
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 666
    .line 667
    const v9, 0x10805f0

    .line 668
    .line 669
    .line 670
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 671
    .line 672
    const v8, 0x10805f1

    .line 673
    .line 674
    .line 675
    iput v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 676
    .line 677
    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 678
    .line 679
    const v8, 0x10407bc

    .line 680
    .line 681
    .line 682
    const v9, 0x10407bd

    .line 683
    .line 684
    .line 685
    filled-new-array {v5, v8, v9}, [I

    .line 686
    .line 687
    .line 688
    move-result-object v11

    .line 689
    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 690
    .line 691
    const v8, 0x1060315

    .line 692
    .line 693
    .line 694
    const v9, 0x1060317

    .line 695
    .line 696
    .line 697
    const v11, 0x1060319

    .line 698
    .line 699
    .line 700
    filled-new-array {v8, v9, v11}, [I

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 705
    .line 706
    const v5, 0x1060316

    .line 707
    .line 708
    .line 709
    const v8, 0x1060318

    .line 710
    .line 711
    .line 712
    const v9, 0x106031a

    .line 713
    .line 714
    .line 715
    filled-new-array {v5, v8, v9}, [I

    .line 716
    .line 717
    .line 718
    move-result-object v11

    .line 719
    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 720
    .line 721
    new-instance v5, Landroid/os/Bundle;

    .line 722
    .line 723
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v5, v15, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 727
    .line 728
    .line 729
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 730
    .line 731
    invoke-static {v7, v12}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 736
    .line 737
    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    .line 738
    .line 739
    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5, v13}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-virtual {v5, v13}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 767
    .line 768
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 772
    .line 773
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 774
    .line 775
    .line 776
    const-string v2, "android.os.usertype.profile.PRIVATE"

    .line 777
    .line 778
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 779
    .line 780
    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 781
    .line 782
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 783
    .line 784
    invoke-static {}, Landroid/os/UserManager;->isPrivateProfileEnabled()Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 789
    .line 790
    const v5, 0x1040c4e

    .line 791
    .line 792
    .line 793
    filled-new-array {v5}, [I

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 798
    .line 799
    const v5, 0x10805a8

    .line 800
    .line 801
    .line 802
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 803
    .line 804
    const v5, 0x10805a7

    .line 805
    .line 806
    .line 807
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 808
    .line 809
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 810
    .line 811
    const v5, 0x1080bae

    .line 812
    .line 813
    .line 814
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 815
    .line 816
    const v5, 0x1040c3e

    .line 817
    .line 818
    .line 819
    filled-new-array {v5}, [I

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 824
    .line 825
    const v5, 0x106000c

    .line 826
    .line 827
    .line 828
    filled-new-array {v5}, [I

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 833
    .line 834
    const v5, 0x106000b

    .line 835
    .line 836
    .line 837
    filled-new-array {v5}, [I

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 842
    .line 843
    const v5, 0x104014f

    .line 844
    .line 845
    .line 846
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 847
    .line 848
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 853
    .line 854
    sget-object v23, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 855
    .line 856
    sget-object v16, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 857
    .line 858
    sget-object v17, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 859
    .line 860
    sget-object v18, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 861
    .line 862
    sget-object v19, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 863
    .line 864
    sget-object v20, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 865
    .line 866
    move-object/from16 v21, v32

    .line 867
    .line 868
    move-object/from16 v22, v14

    .line 869
    .line 870
    filled-new-array/range {v16 .. v23}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 871
    .line 872
    .line 873
    move-result-object v5

    .line 874
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 879
    .line 880
    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    .line 881
    .line 882
    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;

    .line 898
    .line 899
    .line 900
    move-result-object v5

    .line 901
    invoke-virtual {v5, v13}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    .line 902
    .line 903
    .line 904
    move-result-object v5

    .line 905
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    .line 914
    .line 915
    .line 916
    move-result-object v5

    .line 917
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    .line 918
    .line 919
    .line 920
    move-result-object v5

    .line 921
    const/16 v8, 0xa

    .line 922
    .line 923
    invoke-virtual {v5, v8}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    .line 928
    .line 929
    .line 930
    move-result-object v5

    .line 931
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    .line 932
    .line 933
    .line 934
    move-result-object v5

    .line 935
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setItemsRestrictedOnHomeScreen(Z)Landroid/content/pm/UserProperties$Builder;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 952
    .line 953
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    sget-object v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    .line 957
    .line 958
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 959
    .line 960
    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 961
    .line 962
    .line 963
    const-string v2, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    .line 964
    .line 965
    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 966
    .line 967
    const/16 v5, 0x400

    .line 968
    .line 969
    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 970
    .line 971
    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 972
    .line 973
    new-instance v5, Landroid/os/Bundle;

    .line 974
    .line 975
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v5, v10, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 982
    .line 983
    .line 984
    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 985
    .line 986
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 990
    .line 991
    if-eqz v1, :cond_1

    .line 992
    .line 993
    new-instance v1, Landroid/os/Bundle;

    .line 994
    .line 995
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v1, v15, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 999
    .line 1000
    .line 1001
    const-string/jumbo v2, "no_fun"

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1005
    .line 1006
    .line 1007
    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 1008
    .line 1009
    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    const-string v4, "android.os.usertype.profile.TEST"

    .line 1013
    .line 1014
    iput-object v4, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    .line 1015
    .line 1016
    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 1017
    .line 1018
    const/4 v3, 0x2

    .line 1019
    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    .line 1020
    .line 1021
    const v3, 0x1040c4f

    .line 1022
    .line 1023
    .line 1024
    filled-new-array {v3, v3, v3}, [I

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 1029
    .line 1030
    const v3, 0x10805f2

    .line 1031
    .line 1032
    .line 1033
    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 1034
    .line 1035
    const v3, 0x10805f0

    .line 1036
    .line 1037
    .line 1038
    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 1039
    .line 1040
    const v5, 0x10805f1

    .line 1041
    .line 1042
    .line 1043
    iput v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 1044
    .line 1045
    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 1046
    .line 1047
    const v3, 0x10407bb

    .line 1048
    .line 1049
    .line 1050
    const v5, 0x10407bc

    .line 1051
    .line 1052
    .line 1053
    const v6, 0x10407bd

    .line 1054
    .line 1055
    .line 1056
    filled-new-array {v3, v5, v6}, [I

    .line 1057
    .line 1058
    .line 1059
    move-result-object v3

    .line 1060
    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 1061
    .line 1062
    const v3, 0x1060315

    .line 1063
    .line 1064
    .line 1065
    const v5, 0x1060317

    .line 1066
    .line 1067
    .line 1068
    const v6, 0x1060319

    .line 1069
    .line 1070
    .line 1071
    filled-new-array {v3, v5, v6}, [I

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 1076
    .line 1077
    const v3, 0x1060316

    .line 1078
    .line 1079
    .line 1080
    const v5, 0x1060318

    .line 1081
    .line 1082
    .line 1083
    const v6, 0x106031a

    .line 1084
    .line 1085
    .line 1086
    filled-new-array {v3, v5, v6}, [I

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 1091
    .line 1092
    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 1093
    .line 1094
    invoke-static {v7, v12}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v1

    .line 1098
    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 1099
    .line 1100
    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    :cond_1
    return-object v0
.end method

.method public static getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "no_wallpaper"

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static getUserTypeVersion()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .locals 6

    .line 5
    const-string v0, "UserTypeFactory"

    const-string v1, "Cannot parse value of \'"

    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v3, "user-types"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    invoke-interface {p0, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 8
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v4

    .line 9
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for version in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v0, p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    throw v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :goto_0
    const-string v1, "Cannot read user type configuration file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return v2
.end method

.method public static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "UserTypeFactory"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string/jumbo v2, "user-types"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "change-user-type"

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const-string v2, "from"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v4, "to"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {p0, v2}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v4}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :try_start_1
    const-string/jumbo v5, "whenVersionLeq"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :try_start_2
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    .line 68
    .line 69
    invoke-direct {v5, v3, v2, v4}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :catch_1
    move-exception p0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "Cannot parse value of whenVersionLeq in "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :goto_2
    const-string p1, "Cannot read user type configuration file."

    .line 112
    .line 113
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :cond_1
    return-object v1
.end method

.method public static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p2

    .line 22
    const-string v1, "Cannot parse value of \'"

    .line 23
    .line 24
    const-string v2, "\' for "

    .line 25
    .line 26
    const-string v3, " in "

    .line 27
    .line 28
    invoke-static {v1, v0, v2, p1, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "UserTypeFactory"

    .line 44
    .line 45
    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    throw p2
.end method

.method public static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "item"

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const-string v3, "Skipping unknown child element "

    .line 29
    .line 30
    const-string v4, " in "

    .line 31
    .line 32
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "UserTypeFactory"

    .line 48
    .line 49
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    const-string/jumbo v3, "res"

    .line 58
    .line 59
    .line 60
    const/4 v4, -0x1

    .line 61
    invoke-interface {p0, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ne v2, v4, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    new-array p0, p0, [I

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-ge v1, v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    aput v2, p0, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Illegal upgrade of user type "

    .line 19
    .line 20
    const-string v1, " : Can only upgrade profiles user types"

    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method
