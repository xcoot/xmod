.class public final Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 7
    .line 8
    return-void
.end method

.method public static readCertsListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p3

    .line 8
    .line 9
    const/4 v11, 0x1

    .line 10
    const-string v12, "Error in package manager settings: <cert> index "

    .line 11
    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 13
    .line 14
    .line 15
    move-result v13

    .line 16
    move-object/from16 v15, p5

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v11, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-le v2, v13, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move/from16 v16, v6

    .line 36
    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :cond_1
    :goto_1
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    :cond_2
    :goto_2
    move/from16 v16, v6

    .line 45
    .line 46
    goto/16 :goto_a

    .line 47
    .line 48
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "cert"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v5, " is not a number at "

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x5

    .line 63
    if-eqz v1, :cond_e

    .line 64
    .line 65
    if-ge v6, v10, :cond_c

    .line 66
    .line 67
    const-string v0, "index"

    .line 68
    .line 69
    invoke-interface {v7, v3, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eq v1, v2, :cond_b

    .line 74
    .line 75
    :try_start_0
    const-string v0, "key"

    .line 76
    .line 77
    invoke-interface {v7, v3, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_7

    .line 82
    .line 83
    if-ltz v1, :cond_6

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ge v1, v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/content/pm/Signature;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    if-eqz p4, :cond_4

    .line 100
    .line 101
    new-instance v14, Landroid/content/pm/Signature;

    .line 102
    .line 103
    invoke-direct {v14, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_0
    move-exception v0

    .line 111
    goto :goto_5

    .line 112
    :cond_4
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :goto_3
    move v0, v11

    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v14, " is not defined at "

    .line 130
    .line 131
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 146
    .line 147
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v14, " is out of bounds at "

    .line 163
    .line 164
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 179
    .line 180
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_7
    new-instance v14, Landroid/content/pm/Signature;

    .line 185
    .line 186
    invoke-direct {v14, v0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 187
    .line 188
    .line 189
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-ge v0, v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :goto_5
    const-string v14, " has an invalid signature at "

    .line 207
    .line 208
    invoke-static {v1, v12, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v14, ": "

    .line 220
    .line 221
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 236
    .line 237
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :catch_1
    invoke-static {v1, v12, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 250
    .line 251
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :goto_6
    const/4 v0, 0x0

    .line 255
    :goto_7
    if-eqz p4, :cond_d

    .line 256
    .line 257
    const-string v1, "flags"

    .line 258
    .line 259
    invoke-interface {v7, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eq v1, v2, :cond_a

    .line 264
    .line 265
    if-eqz v0, :cond_9

    .line 266
    .line 267
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    sub-int/2addr v0, v11

    .line 272
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/content/pm/Signature;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v2, "Error in package manager settings: signature not available at index "

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v2, " to set flags at "

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 312
    .line 313
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catch_2
    const-string v0, "Error in package manager settings: <cert> flags "

    .line 318
    .line 319
    invoke-static {v1, v0, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 328
    .line 329
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v1, "Error in package manager settings: <cert> has no flags at "

    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 345
    .line 346
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v1, "Error in package manager settings: <cert> has no index at "

    .line 353
    .line 354
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 362
    .line 363
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_c
    const-string v0, "Error in package manager settings: too many <cert> tags, expected "

    .line 368
    .line 369
    const-string v1, " at "

    .line 370
    .line 371
    invoke-static {v10, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 380
    .line 381
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_d
    :goto_8
    add-int/2addr v6, v11

    .line 385
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_9

    .line 389
    .line 390
    :cond_e
    const-string/jumbo v1, "pastSigs"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_11

    .line 398
    .line 399
    if-nez p4, :cond_10

    .line 400
    .line 401
    const-string v0, "count"

    .line 402
    .line 403
    invoke-interface {v7, v3, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-ne v0, v2, :cond_f

    .line 408
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    .line 412
    .line 413
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 421
    .line 422
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_f
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 433
    .line 434
    .line 435
    const/16 v16, 0x1

    .line 436
    .line 437
    move-object/from16 v1, p0

    .line 438
    .line 439
    move-object/from16 v2, p1

    .line 440
    .line 441
    move-object v3, v14

    .line 442
    move v11, v4

    .line 443
    move v4, v0

    .line 444
    move-object/from16 v17, v5

    .line 445
    .line 446
    move/from16 v5, v16

    .line 447
    .line 448
    move/from16 v16, v6

    .line 449
    .line 450
    move-object v6, v15

    .line 451
    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 460
    .line 461
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    check-cast v2, [Landroid/content/pm/Signature;

    .line 466
    .line 467
    invoke-virtual {v15, v2}, Landroid/content/pm/SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    .line 468
    .line 469
    .line 470
    move-result-object v15

    .line 471
    if-ge v1, v0, :cond_12

    .line 472
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v2, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 495
    .line 496
    invoke-static {v11, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 497
    .line 498
    .line 499
    goto :goto_a

    .line 500
    :catch_3
    move v11, v4

    .line 501
    move-object/from16 v17, v5

    .line 502
    .line 503
    move/from16 v16, v6

    .line 504
    .line 505
    :catch_4
    const-string v1, "Error in package manager settings: <pastSigs> count "

    .line 506
    .line 507
    move-object/from16 v2, v17

    .line 508
    .line 509
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 518
    .line 519
    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    goto :goto_a

    .line 523
    :cond_10
    move v11, v4

    .line 524
    move/from16 v16, v6

    .line 525
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    .line 529
    .line 530
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-static {v7, v0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 538
    .line 539
    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 543
    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_11
    move v11, v4

    .line 547
    move/from16 v16, v6

    .line 548
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v1, "Unknown element under <sigs>: "

    .line 552
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 561
    .line 562
    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 566
    .line 567
    .line 568
    goto :goto_a

    .line 569
    :goto_9
    const/4 v11, 0x1

    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :cond_12
    :goto_a
    move/from16 v6, v16

    .line 573
    .line 574
    goto :goto_9

    .line 575
    :goto_b
    return v16
.end method

.method public static writeCertsListXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p2

    .line 4
    if-ge v1, v2, :cond_4

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "cert"

    .line 8
    .line 9
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    .line 12
    aget-object v4, p2, v1

    .line 13
    .line 14
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    move v7, v0

    .line 23
    :goto_1
    const-string v8, "index"

    .line 24
    .line 25
    if-ge v7, v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    check-cast v9, Landroid/content/pm/Signature;

    .line 32
    .line 33
    invoke-virtual {v9}, Landroid/content/pm/Signature;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    if-ne v10, v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v9, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    invoke-interface {p0, v2, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    if-lt v7, v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v2, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    const-string v5, "key"

    .line 61
    .line 62
    invoke-virtual {v4, p0, v2, v5}, Landroid/content/pm/Signature;->writeToXmlAttributeBytesHex(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz p3, :cond_3

    .line 66
    .line 67
    const-string v5, "flags"

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-interface {p0, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-void
.end method


# virtual methods
.method public final readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    new-instance v6, Landroid/content/pm/SigningDetails$Builder;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/content/pm/SigningDetails$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "count"

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    const/4 v8, 0x5

    .line 15
    if-ne v7, v2, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p2, "Error in package manager settings: <sigs> has no count at "

    .line 20
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 29
    .line 30
    invoke-static {v8, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string/jumbo v1, "schemeVersion"

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Error in package manager settings: <sigs> has no schemeVersion at "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 59
    .line 60
    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v6, v0}, Landroid/content/pm/SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/SigningDetails$Builder;

    .line 64
    .line 65
    .line 66
    new-instance v9, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    move-object v0, p1

    .line 73
    move-object v1, p2

    .line 74
    move-object v2, v9

    .line 75
    move v3, v7

    .line 76
    move-object v5, v6

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/SigningDetails$Builder;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 86
    .line 87
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, [Landroid/content/pm/Signature;

    .line 92
    .line 93
    invoke-virtual {v6, v0}, Landroid/content/pm/SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/SigningDetails$Builder;

    .line 94
    .line 95
    .line 96
    if-ge p2, v7, :cond_2

    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    .line 101
    .line 102
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 110
    .line 111
    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/SigningDetails$Builder;->build()Landroid/content/pm/SigningDetails;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 122
    .line 123
    const-string p1, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    .line 124
    .line 125
    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 129
    .line 130
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 131
    .line 132
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "PackageSignatures{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " version:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", signatures:["

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, ", "

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move v1, v3

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    array-length v4, v4

    .line 58
    if-ge v1, v4, :cond_1

    .line 59
    .line 60
    if-lez v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    aget-object v4, v4, v1

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "], past signatures:["

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    array-length v1, v1

    .line 107
    if-ge v3, v1, :cond_3

    .line 108
    .line 109
    if-lez v3, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    aget-object v1, v1, v3

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, " flags: "

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget-object v1, v1, v3

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/content/pm/Signature;->getFlags()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    const-string p0, "]}"

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0
.end method

.method public final writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    array-length v1, v1

    .line 21
    const-string v2, "count"

    .line 22
    .line 23
    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string/jumbo v3, "schemeVersion"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {p1, p3, v1, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const-string/jumbo v1, "pastSigs"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    array-length v3, v3

    .line 69
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-static {p1, p3, p0, v2}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    return-void
.end method
