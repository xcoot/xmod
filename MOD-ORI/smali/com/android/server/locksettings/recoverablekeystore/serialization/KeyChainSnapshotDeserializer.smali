.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 33

    .line 1
    const-string v0, "alias"

    .line 2
    .line 3
    const-string/jumbo v1, "keyMaterial"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "keyMetadata"

    .line 7
    .line 8
    .line 9
    const-string v3, "algorithm"

    .line 10
    .line 11
    const-string/jumbo v4, "salt"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "memoryDifficulty"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v6, "keyDerivationParams"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v7, "userSecretType"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v8, "lockScreenUiType"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v9, "serverParams"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v10, "keyChainProtectionParamsList"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v11, "counterId"

    .line 33
    .line 34
    .line 35
    const-string v12, "applicationKeysList"

    .line 36
    .line 37
    const-string/jumbo v13, "snapshotVersion"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v14, "thmCertPath"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v15, "recoveryKeyMaterial"

    .line 44
    .line 45
    .line 46
    move-object/from16 v16, v2

    .line 47
    .line 48
    const-string/jumbo v2, "maxAttempts"

    .line 49
    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    const/16 v18, 0x0

    .line 54
    .line 55
    const/16 v19, -0x1

    .line 56
    .line 57
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 62
    .line 63
    .line 64
    move-object/from16 v21, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    move-object/from16 v22, v5

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    move-object/from16 v23, v4

    .line 71
    .line 72
    const-string/jumbo v4, "keyChainSnapshot"

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v5, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 79
    .line 80
    invoke-direct {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    move-object/from16 v24, v4

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    if-eq v0, v4, :cond_20

    .line 91
    .line 92
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v4, 0x2

    .line 97
    if-eq v0, v4, :cond_0

    .line 98
    .line 99
    :goto_1
    move-object/from16 v4, v24

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string v4, "Unexpected tag "

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v25

    .line 115
    sparse-switch v25, :sswitch_data_0

    .line 116
    .line 117
    .line 118
    :goto_2
    move-object/from16 v25, v15

    .line 119
    .line 120
    :goto_3
    move/from16 v15, v19

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :sswitch_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v25

    .line 128
    if-nez v25, :cond_1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_1
    const/16 v25, 0x8

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v25

    .line 138
    if-nez v25, :cond_2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    const/16 v25, 0x7

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v25

    .line 148
    if-nez v25, :cond_3

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    const/16 v25, 0x6

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :sswitch_3
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v25

    .line 158
    if-nez v25, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    const/16 v25, 0x5

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :sswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v25

    .line 168
    if-nez v25, :cond_5

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    const/16 v25, 0x4

    .line 172
    .line 173
    :goto_4
    move/from16 v32, v25

    .line 174
    .line 175
    move-object/from16 v25, v15

    .line 176
    .line 177
    move/from16 v15, v32

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :sswitch_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v25

    .line 184
    if-nez v25, :cond_6

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    move-object/from16 v25, v15

    .line 188
    .line 189
    const/4 v15, 0x3

    .line 190
    goto :goto_6

    .line 191
    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v25

    .line 195
    if-nez v25, :cond_7

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    move-object/from16 v25, v15

    .line 199
    .line 200
    const/4 v15, 0x2

    .line 201
    goto :goto_6

    .line 202
    :sswitch_7
    move-object/from16 v25, v15

    .line 203
    .line 204
    const-string v15, "backendPublicKey"

    .line 205
    .line 206
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    if-nez v15, :cond_8

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    const/4 v15, 0x1

    .line 214
    goto :goto_6

    .line 215
    :sswitch_8
    move-object/from16 v25, v15

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    if-nez v15, :cond_9

    .line 222
    .line 223
    :goto_5
    goto :goto_3

    .line 224
    :cond_9
    move/from16 v15, v18

    .line 225
    .line 226
    :goto_6
    packed-switch v15, :pswitch_data_0

    .line 227
    .line 228
    .line 229
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 230
    .line 231
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 232
    .line 233
    const-string v2, " in keyChainSnapshot"

    .line 234
    .line 235
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :pswitch_0
    invoke-static {v1, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v5, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 248
    .line 249
    .line 250
    move-object/from16 v20, v3

    .line 251
    .line 252
    move-object/from16 v26, v9

    .line 253
    .line 254
    move-object v3, v12

    .line 255
    move-object v0, v13

    .line 256
    move-object/from16 v15, v21

    .line 257
    .line 258
    move-object/from16 v12, v22

    .line 259
    .line 260
    move-object/from16 v13, v23

    .line 261
    .line 262
    move-object/from16 v4, v25

    .line 263
    .line 264
    move-object/from16 v21, v6

    .line 265
    .line 266
    move-object/from16 v23, v8

    .line 267
    .line 268
    move-object/from16 v6, v17

    .line 269
    .line 270
    move-object v8, v2

    .line 271
    move-object/from16 v17, v7

    .line 272
    .line 273
    move-object v2, v14

    .line 274
    :goto_7
    move-object/from16 v7, v16

    .line 275
    .line 276
    goto/16 :goto_20

    .line 277
    .line 278
    :pswitch_1
    const/4 v0, 0x2

    .line 279
    const/4 v15, 0x0

    .line 280
    invoke-interface {v1, v0, v15, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v15, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    :goto_8
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    move-object/from16 v26, v9

    .line 293
    .line 294
    const/4 v9, 0x3

    .line 295
    if-eq v0, v9, :cond_18

    .line 296
    .line 297
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    const/4 v9, 0x2

    .line 302
    if-eq v0, v9, :cond_a

    .line 303
    .line 304
    move-object/from16 v9, v26

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_a
    const-string/jumbo v0, "keyChainProtectionParams"

    .line 308
    .line 309
    .line 310
    move-object/from16 v27, v2

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-interface {v1, v9, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 317
    .line 318
    invoke-direct {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 319
    .line 320
    .line 321
    :goto_9
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    move-object/from16 v28, v14

    .line 326
    .line 327
    const/4 v14, 0x3

    .line 328
    if-eq v9, v14, :cond_17

    .line 329
    .line 330
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    const/4 v14, 0x2

    .line 335
    if-eq v9, v14, :cond_b

    .line 336
    .line 337
    move-object/from16 v14, v28

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    sparse-switch v14, :sswitch_data_1

    .line 352
    .line 353
    .line 354
    :goto_a
    move/from16 v14, v19

    .line 355
    .line 356
    goto :goto_b

    .line 357
    :sswitch_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    if-nez v14, :cond_c

    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_c
    const/4 v14, 0x2

    .line 365
    goto :goto_b

    .line 366
    :sswitch_a
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    if-nez v14, :cond_d

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_d
    const/4 v14, 0x1

    .line 374
    goto :goto_b

    .line 375
    :sswitch_b
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    if-nez v14, :cond_e

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_e
    move/from16 v14, v18

    .line 383
    .line 384
    :goto_b
    packed-switch v14, :pswitch_data_1

    .line 385
    .line 386
    .line 387
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 388
    .line 389
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 390
    .line 391
    const-string v1, " in keyChainProtectionParams"

    .line 392
    .line 393
    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :pswitch_2
    const/4 v9, 0x2

    .line 402
    const/4 v14, 0x0

    .line 403
    invoke-interface {v1, v9, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    move/from16 v29, v19

    .line 407
    .line 408
    move/from16 v30, v29

    .line 409
    .line 410
    const/4 v14, 0x0

    .line 411
    :goto_c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    move-object/from16 v31, v13

    .line 416
    .line 417
    const/4 v13, 0x3

    .line 418
    if-eq v9, v13, :cond_13

    .line 419
    .line 420
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    const/4 v13, 0x2

    .line 425
    if-eq v9, v13, :cond_f

    .line 426
    .line 427
    :goto_d
    move-object/from16 v13, v31

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_f
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 438
    .line 439
    .line 440
    move-result v13

    .line 441
    sparse-switch v13, :sswitch_data_2

    .line 442
    .line 443
    .line 444
    :goto_e
    move-object/from16 v13, v23

    .line 445
    .line 446
    :goto_f
    move-object/from16 v23, v12

    .line 447
    .line 448
    move-object/from16 v12, v22

    .line 449
    .line 450
    :goto_10
    move/from16 v22, v19

    .line 451
    .line 452
    goto :goto_11

    .line 453
    :sswitch_c
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    if-nez v13, :cond_10

    .line 458
    .line 459
    goto :goto_e

    .line 460
    :cond_10
    move-object/from16 v13, v23

    .line 461
    .line 462
    move-object/from16 v23, v12

    .line 463
    .line 464
    move-object/from16 v12, v22

    .line 465
    .line 466
    const/16 v22, 0x2

    .line 467
    .line 468
    goto :goto_11

    .line 469
    :sswitch_d
    move-object/from16 v13, v23

    .line 470
    .line 471
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v23

    .line 475
    if-nez v23, :cond_11

    .line 476
    .line 477
    goto :goto_f

    .line 478
    :cond_11
    move-object/from16 v23, v12

    .line 479
    .line 480
    move-object/from16 v12, v22

    .line 481
    .line 482
    const/16 v22, 0x1

    .line 483
    .line 484
    goto :goto_11

    .line 485
    :sswitch_e
    move-object/from16 v13, v23

    .line 486
    .line 487
    move-object/from16 v23, v12

    .line 488
    .line 489
    move-object/from16 v12, v22

    .line 490
    .line 491
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v22

    .line 495
    if-nez v22, :cond_12

    .line 496
    .line 497
    goto :goto_10

    .line 498
    :cond_12
    move/from16 v22, v18

    .line 499
    .line 500
    :goto_11
    packed-switch v22, :pswitch_data_2

    .line 501
    .line 502
    .line 503
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 504
    .line 505
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 506
    .line 507
    const-string v1, " in keyDerivationParams"

    .line 508
    .line 509
    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :pswitch_3
    invoke-static {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v9

    .line 521
    move/from16 v29, v9

    .line 522
    .line 523
    goto :goto_12

    .line 524
    :pswitch_4
    invoke-static {v1, v13}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    move-object v14, v9

    .line 529
    goto :goto_12

    .line 530
    :pswitch_5
    invoke-static {v1, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v9

    .line 534
    move/from16 v30, v9

    .line 535
    .line 536
    :goto_12
    move-object/from16 v22, v12

    .line 537
    .line 538
    move-object/from16 v12, v23

    .line 539
    .line 540
    move-object/from16 v23, v13

    .line 541
    .line 542
    goto :goto_d

    .line 543
    :cond_13
    move-object/from16 v13, v23

    .line 544
    .line 545
    move-object/from16 v23, v12

    .line 546
    .line 547
    move-object/from16 v12, v22

    .line 548
    .line 549
    if-eqz v14, :cond_16

    .line 550
    .line 551
    move-object/from16 v20, v3

    .line 552
    .line 553
    move/from16 v3, v29

    .line 554
    .line 555
    const/4 v9, 0x1

    .line 556
    if-eq v3, v9, :cond_15

    .line 557
    .line 558
    const/4 v9, 0x2

    .line 559
    if-ne v3, v9, :cond_14

    .line 560
    .line 561
    move/from16 v3, v30

    .line 562
    .line 563
    invoke-static {v14, v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    :goto_13
    const/4 v9, 0x0

    .line 568
    const/4 v14, 0x3

    .line 569
    goto :goto_14

    .line 570
    :cond_14
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 571
    .line 572
    const-string v1, "Unknown algorithm in keyDerivationParams"

    .line 573
    .line 574
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v0

    .line 578
    :cond_15
    invoke-static {v14}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    goto :goto_13

    .line 583
    :goto_14
    invoke-interface {v1, v14, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 587
    .line 588
    .line 589
    goto :goto_15

    .line 590
    :cond_16
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 591
    .line 592
    const-string/jumbo v1, "salt was not set in keyDerivationParams"

    .line 593
    .line 594
    .line 595
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v0

    .line 599
    :pswitch_6
    move-object/from16 v20, v3

    .line 600
    .line 601
    move-object/from16 v31, v13

    .line 602
    .line 603
    move-object/from16 v13, v23

    .line 604
    .line 605
    move-object/from16 v23, v12

    .line 606
    .line 607
    move-object/from16 v12, v22

    .line 608
    .line 609
    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 614
    .line 615
    .line 616
    goto :goto_15

    .line 617
    :pswitch_7
    move-object/from16 v20, v3

    .line 618
    .line 619
    move-object/from16 v31, v13

    .line 620
    .line 621
    move-object/from16 v13, v23

    .line 622
    .line 623
    move-object/from16 v23, v12

    .line 624
    .line 625
    move-object/from16 v12, v22

    .line 626
    .line 627
    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 632
    .line 633
    .line 634
    :goto_15
    move-object/from16 v22, v12

    .line 635
    .line 636
    move-object/from16 v3, v20

    .line 637
    .line 638
    move-object/from16 v12, v23

    .line 639
    .line 640
    move-object/from16 v14, v28

    .line 641
    .line 642
    move-object/from16 v23, v13

    .line 643
    .line 644
    move-object/from16 v13, v31

    .line 645
    .line 646
    goto/16 :goto_9

    .line 647
    .line 648
    :cond_17
    move-object/from16 v20, v3

    .line 649
    .line 650
    move-object/from16 v31, v13

    .line 651
    .line 652
    move v9, v14

    .line 653
    move-object/from16 v13, v23

    .line 654
    .line 655
    const/4 v3, 0x0

    .line 656
    move-object/from16 v23, v12

    .line 657
    .line 658
    move-object/from16 v12, v22

    .line 659
    .line 660
    invoke-interface {v1, v9, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :try_start_0
    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 664
    .line 665
    .line 666
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-object/from16 v22, v12

    .line 671
    .line 672
    move-object/from16 v3, v20

    .line 673
    .line 674
    move-object/from16 v12, v23

    .line 675
    .line 676
    move-object/from16 v9, v26

    .line 677
    .line 678
    move-object/from16 v2, v27

    .line 679
    .line 680
    move-object/from16 v14, v28

    .line 681
    .line 682
    move-object/from16 v23, v13

    .line 683
    .line 684
    move-object/from16 v13, v31

    .line 685
    .line 686
    goto/16 :goto_8

    .line 687
    .line 688
    :catch_0
    move-exception v0

    .line 689
    move-object v1, v0

    .line 690
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 691
    .line 692
    const-string v2, "Failed to build KeyChainProtectionParams"

    .line 693
    .line 694
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    .line 696
    .line 697
    throw v0

    .line 698
    :cond_18
    move-object/from16 v27, v2

    .line 699
    .line 700
    move-object/from16 v20, v3

    .line 701
    .line 702
    move v2, v9

    .line 703
    move-object/from16 v31, v13

    .line 704
    .line 705
    move-object/from16 v28, v14

    .line 706
    .line 707
    move-object/from16 v13, v23

    .line 708
    .line 709
    const/4 v0, 0x0

    .line 710
    move-object/from16 v23, v12

    .line 711
    .line 712
    move-object/from16 v12, v22

    .line 713
    .line 714
    invoke-interface {v1, v2, v0, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v5, v15}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 718
    .line 719
    .line 720
    :goto_16
    move-object/from16 v15, v21

    .line 721
    .line 722
    move-object/from16 v3, v23

    .line 723
    .line 724
    move-object/from16 v4, v25

    .line 725
    .line 726
    move-object/from16 v2, v28

    .line 727
    .line 728
    move-object/from16 v0, v31

    .line 729
    .line 730
    move-object/from16 v21, v6

    .line 731
    .line 732
    move-object/from16 v23, v8

    .line 733
    .line 734
    move-object/from16 v6, v17

    .line 735
    .line 736
    move-object/from16 v8, v27

    .line 737
    .line 738
    move-object/from16 v17, v7

    .line 739
    .line 740
    goto/16 :goto_7

    .line 741
    .line 742
    :pswitch_8
    move-object/from16 v27, v2

    .line 743
    .line 744
    move-object/from16 v20, v3

    .line 745
    .line 746
    move-object/from16 v26, v9

    .line 747
    .line 748
    move-object/from16 v31, v13

    .line 749
    .line 750
    move-object/from16 v28, v14

    .line 751
    .line 752
    move-object/from16 v13, v23

    .line 753
    .line 754
    const/4 v0, 0x0

    .line 755
    const/4 v2, 0x3

    .line 756
    const/4 v3, 0x2

    .line 757
    move-object/from16 v23, v12

    .line 758
    .line 759
    move-object/from16 v12, v22

    .line 760
    .line 761
    invoke-interface {v1, v3, v0, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-interface {v1, v2, v0, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 776
    .line 777
    .line 778
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 779
    invoke-virtual {v5, v2, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 780
    .line 781
    .line 782
    goto :goto_16

    .line 783
    :catch_1
    move-exception v0

    .line 784
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 785
    .line 786
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 787
    .line 788
    const-string/jumbo v2, "counterId expected long but got \'"

    .line 789
    .line 790
    .line 791
    const-string v4, "\'"

    .line 792
    .line 793
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    .line 799
    .line 800
    throw v1

    .line 801
    :pswitch_9
    move-object/from16 v27, v2

    .line 802
    .line 803
    move-object/from16 v20, v3

    .line 804
    .line 805
    move-object/from16 v26, v9

    .line 806
    .line 807
    move-object v3, v12

    .line 808
    move-object/from16 v31, v13

    .line 809
    .line 810
    move-object/from16 v28, v14

    .line 811
    .line 812
    move-object/from16 v12, v22

    .line 813
    .line 814
    move-object/from16 v13, v23

    .line 815
    .line 816
    const/4 v0, 0x2

    .line 817
    const/4 v2, 0x0

    .line 818
    invoke-interface {v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    new-instance v9, Ljava/util/ArrayList;

    .line 822
    .line 823
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .line 825
    .line 826
    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 827
    .line 828
    .line 829
    move-result v14

    .line 830
    const/4 v15, 0x3

    .line 831
    if-eq v14, v15, :cond_1f

    .line 832
    .line 833
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 834
    .line 835
    .line 836
    move-result v14

    .line 837
    if-eq v14, v0, :cond_19

    .line 838
    .line 839
    goto :goto_17

    .line 840
    :cond_19
    const-string v14, "applicationKey"

    .line 841
    .line 842
    invoke-interface {v1, v0, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    new-instance v2, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 846
    .line 847
    invoke-direct {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 848
    .line 849
    .line 850
    :goto_18
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    if-eq v0, v15, :cond_1e

    .line 855
    .line 856
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    const/4 v15, 0x2

    .line 861
    if-eq v0, v15, :cond_1a

    .line 862
    .line 863
    const/4 v15, 0x3

    .line 864
    goto :goto_18

    .line 865
    :cond_1a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 873
    .line 874
    .line 875
    move-result v15

    .line 876
    sparse-switch v15, :sswitch_data_3

    .line 877
    .line 878
    .line 879
    move-object/from16 v15, v21

    .line 880
    .line 881
    :goto_19
    move-object/from16 v21, v6

    .line 882
    .line 883
    move-object/from16 v6, v17

    .line 884
    .line 885
    :goto_1a
    move-object/from16 v17, v7

    .line 886
    .line 887
    move-object/from16 v7, v16

    .line 888
    .line 889
    :goto_1b
    move/from16 v16, v19

    .line 890
    .line 891
    goto :goto_1c

    .line 892
    :sswitch_f
    move-object/from16 v15, v21

    .line 893
    .line 894
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v21

    .line 898
    if-nez v21, :cond_1b

    .line 899
    .line 900
    goto :goto_19

    .line 901
    :cond_1b
    move-object/from16 v21, v6

    .line 902
    .line 903
    move-object/from16 v6, v17

    .line 904
    .line 905
    move-object/from16 v17, v7

    .line 906
    .line 907
    move-object/from16 v7, v16

    .line 908
    .line 909
    const/16 v16, 0x2

    .line 910
    .line 911
    goto :goto_1c

    .line 912
    :sswitch_10
    move-object/from16 v15, v21

    .line 913
    .line 914
    move-object/from16 v21, v6

    .line 915
    .line 916
    move-object/from16 v6, v17

    .line 917
    .line 918
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v17

    .line 922
    if-nez v17, :cond_1c

    .line 923
    .line 924
    goto :goto_1a

    .line 925
    :cond_1c
    move-object/from16 v17, v7

    .line 926
    .line 927
    move-object/from16 v7, v16

    .line 928
    .line 929
    const/16 v16, 0x1

    .line 930
    .line 931
    goto :goto_1c

    .line 932
    :sswitch_11
    move-object/from16 v15, v21

    .line 933
    .line 934
    move-object/from16 v21, v6

    .line 935
    .line 936
    move-object/from16 v6, v17

    .line 937
    .line 938
    move-object/from16 v17, v7

    .line 939
    .line 940
    move-object/from16 v7, v16

    .line 941
    .line 942
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v16

    .line 946
    if-nez v16, :cond_1d

    .line 947
    .line 948
    goto :goto_1b

    .line 949
    :cond_1d
    move/from16 v16, v18

    .line 950
    .line 951
    :goto_1c
    packed-switch v16, :pswitch_data_3

    .line 952
    .line 953
    .line 954
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 955
    .line 956
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 957
    .line 958
    const-string v2, " in wrappedApplicationKey"

    .line 959
    .line 960
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw v1

    .line 968
    :pswitch_a
    move-object/from16 v16, v4

    .line 969
    .line 970
    const/4 v0, 0x2

    .line 971
    const/4 v4, 0x0

    .line 972
    invoke-interface {v1, v0, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    move-object/from16 v23, v8

    .line 980
    .line 981
    const/4 v8, 0x3

    .line 982
    invoke-interface {v1, v8, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 986
    .line 987
    .line 988
    goto :goto_1d

    .line 989
    :pswitch_b
    move-object/from16 v16, v4

    .line 990
    .line 991
    move-object/from16 v23, v8

    .line 992
    .line 993
    const/4 v4, 0x0

    .line 994
    const/4 v8, 0x3

    .line 995
    invoke-static {v1, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 1000
    .line 1001
    .line 1002
    goto :goto_1d

    .line 1003
    :pswitch_c
    move-object/from16 v16, v4

    .line 1004
    .line 1005
    move-object/from16 v23, v8

    .line 1006
    .line 1007
    const/4 v4, 0x0

    .line 1008
    const/4 v8, 0x3

    .line 1009
    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 1014
    .line 1015
    .line 1016
    :goto_1d
    move-object/from16 v4, v16

    .line 1017
    .line 1018
    move-object/from16 v16, v7

    .line 1019
    .line 1020
    move-object/from16 v7, v17

    .line 1021
    .line 1022
    move-object/from16 v17, v6

    .line 1023
    .line 1024
    move-object/from16 v6, v21

    .line 1025
    .line 1026
    move-object/from16 v21, v15

    .line 1027
    .line 1028
    move v15, v8

    .line 1029
    move-object/from16 v8, v23

    .line 1030
    .line 1031
    goto/16 :goto_18

    .line 1032
    .line 1033
    :cond_1e
    move-object/from16 v23, v8

    .line 1034
    .line 1035
    move v8, v15

    .line 1036
    move-object/from16 v15, v21

    .line 1037
    .line 1038
    move-object/from16 v21, v6

    .line 1039
    .line 1040
    move-object/from16 v6, v17

    .line 1041
    .line 1042
    move-object/from16 v17, v7

    .line 1043
    .line 1044
    move-object/from16 v7, v16

    .line 1045
    .line 1046
    move-object/from16 v16, v4

    .line 1047
    .line 1048
    const/4 v4, 0x0

    .line 1049
    invoke-interface {v1, v8, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    :try_start_2
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1056
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v4, v16

    .line 1060
    .line 1061
    move-object/from16 v8, v23

    .line 1062
    .line 1063
    const/4 v0, 0x2

    .line 1064
    const/4 v2, 0x0

    .line 1065
    move-object/from16 v16, v7

    .line 1066
    .line 1067
    move-object/from16 v7, v17

    .line 1068
    .line 1069
    move-object/from16 v17, v6

    .line 1070
    .line 1071
    move-object/from16 v6, v21

    .line 1072
    .line 1073
    move-object/from16 v21, v15

    .line 1074
    .line 1075
    goto/16 :goto_17

    .line 1076
    .line 1077
    :catch_2
    move-exception v0

    .line 1078
    move-object v1, v0

    .line 1079
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1080
    .line 1081
    const-string v2, "Failed to build WrappedApplicationKey"

    .line 1082
    .line 1083
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1084
    .line 1085
    .line 1086
    throw v0

    .line 1087
    :cond_1f
    move-object v0, v2

    .line 1088
    move-object/from16 v23, v8

    .line 1089
    .line 1090
    move v2, v15

    .line 1091
    move-object/from16 v15, v21

    .line 1092
    .line 1093
    move-object/from16 v21, v6

    .line 1094
    .line 1095
    move-object/from16 v6, v17

    .line 1096
    .line 1097
    move-object/from16 v17, v7

    .line 1098
    .line 1099
    move-object/from16 v7, v16

    .line 1100
    .line 1101
    invoke-interface {v1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1105
    .line 1106
    .line 1107
    move-object/from16 v4, v25

    .line 1108
    .line 1109
    move-object/from16 v8, v27

    .line 1110
    .line 1111
    move-object/from16 v2, v28

    .line 1112
    .line 1113
    move-object/from16 v0, v31

    .line 1114
    .line 1115
    goto/16 :goto_20

    .line 1116
    .line 1117
    :pswitch_d
    move-object/from16 v27, v2

    .line 1118
    .line 1119
    move-object/from16 v20, v3

    .line 1120
    .line 1121
    move-object/from16 v26, v9

    .line 1122
    .line 1123
    move-object v3, v12

    .line 1124
    move-object v0, v13

    .line 1125
    move-object/from16 v28, v14

    .line 1126
    .line 1127
    move-object/from16 v15, v21

    .line 1128
    .line 1129
    move-object/from16 v12, v22

    .line 1130
    .line 1131
    move-object/from16 v13, v23

    .line 1132
    .line 1133
    move-object/from16 v21, v6

    .line 1134
    .line 1135
    move-object/from16 v23, v8

    .line 1136
    .line 1137
    move-object/from16 v6, v17

    .line 1138
    .line 1139
    move-object/from16 v17, v7

    .line 1140
    .line 1141
    move-object/from16 v7, v16

    .line 1142
    .line 1143
    invoke-static {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 1144
    .line 1145
    .line 1146
    move-result v2

    .line 1147
    invoke-virtual {v5, v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1148
    .line 1149
    .line 1150
    move-object/from16 v4, v25

    .line 1151
    .line 1152
    move-object/from16 v8, v27

    .line 1153
    .line 1154
    move-object/from16 v2, v28

    .line 1155
    .line 1156
    goto/16 :goto_20

    .line 1157
    .line 1158
    :pswitch_e
    move-object/from16 v27, v2

    .line 1159
    .line 1160
    move-object/from16 v20, v3

    .line 1161
    .line 1162
    move-object/from16 v26, v9

    .line 1163
    .line 1164
    move-object v3, v12

    .line 1165
    move-object v0, v13

    .line 1166
    move-object v2, v14

    .line 1167
    move-object/from16 v15, v21

    .line 1168
    .line 1169
    move-object/from16 v12, v22

    .line 1170
    .line 1171
    move-object/from16 v13, v23

    .line 1172
    .line 1173
    move-object/from16 v21, v6

    .line 1174
    .line 1175
    move-object/from16 v23, v8

    .line 1176
    .line 1177
    move-object/from16 v6, v17

    .line 1178
    .line 1179
    move-object/from16 v17, v7

    .line 1180
    .line 1181
    move-object/from16 v7, v16

    .line 1182
    .line 1183
    :try_start_3
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1184
    .line 1185
    .line 1186
    move-result-object v4
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1187
    :try_start_4
    const-string v8, "X.509"

    .line 1188
    .line 1189
    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v8

    .line 1193
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 1194
    .line 1195
    invoke-direct {v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v4
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1202
    :try_start_5
    invoke-virtual {v5, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1203
    .line 1204
    .line 1205
    move-object/from16 v4, v25

    .line 1206
    .line 1207
    :goto_1e
    move-object/from16 v8, v27

    .line 1208
    .line 1209
    goto/16 :goto_20

    .line 1210
    .line 1211
    :catch_3
    move-exception v0

    .line 1212
    goto :goto_1f

    .line 1213
    :catch_4
    move-exception v0

    .line 1214
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1215
    .line 1216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    const-string v4, "Could not parse CertPath in tag "

    .line 1219
    .line 1220
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v2

    .line 1230
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1231
    .line 1232
    .line 1233
    throw v1
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1234
    :goto_1f
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1235
    .line 1236
    const-string v2, "Could not set trustedHardwareCertPath"

    .line 1237
    .line 1238
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1239
    .line 1240
    .line 1241
    throw v1

    .line 1242
    :pswitch_f
    move-object/from16 v27, v2

    .line 1243
    .line 1244
    move-object/from16 v20, v3

    .line 1245
    .line 1246
    move-object/from16 v26, v9

    .line 1247
    .line 1248
    move-object v3, v12

    .line 1249
    move-object v0, v13

    .line 1250
    move-object v2, v14

    .line 1251
    move-object/from16 v15, v21

    .line 1252
    .line 1253
    move-object/from16 v12, v22

    .line 1254
    .line 1255
    move-object/from16 v13, v23

    .line 1256
    .line 1257
    move-object/from16 v4, v25

    .line 1258
    .line 1259
    move-object/from16 v21, v6

    .line 1260
    .line 1261
    move-object/from16 v23, v8

    .line 1262
    .line 1263
    move-object/from16 v6, v17

    .line 1264
    .line 1265
    move-object/from16 v17, v7

    .line 1266
    .line 1267
    move-object/from16 v7, v16

    .line 1268
    .line 1269
    invoke-static {v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1270
    .line 1271
    .line 1272
    move-result-object v8

    .line 1273
    invoke-virtual {v5, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1274
    .line 1275
    .line 1276
    goto :goto_1e

    .line 1277
    :pswitch_10
    move-object/from16 v27, v2

    .line 1278
    .line 1279
    move-object/from16 v20, v3

    .line 1280
    .line 1281
    move-object/from16 v26, v9

    .line 1282
    .line 1283
    move-object v3, v12

    .line 1284
    move-object v0, v13

    .line 1285
    move-object v2, v14

    .line 1286
    move-object/from16 v15, v21

    .line 1287
    .line 1288
    move-object/from16 v12, v22

    .line 1289
    .line 1290
    move-object/from16 v13, v23

    .line 1291
    .line 1292
    move-object/from16 v4, v25

    .line 1293
    .line 1294
    move-object/from16 v21, v6

    .line 1295
    .line 1296
    move-object/from16 v23, v8

    .line 1297
    .line 1298
    move-object/from16 v6, v17

    .line 1299
    .line 1300
    move-object/from16 v17, v7

    .line 1301
    .line 1302
    move-object/from16 v7, v16

    .line 1303
    .line 1304
    goto :goto_1e

    .line 1305
    :pswitch_11
    move-object/from16 v20, v3

    .line 1306
    .line 1307
    move-object/from16 v26, v9

    .line 1308
    .line 1309
    move-object v3, v12

    .line 1310
    move-object v0, v13

    .line 1311
    move-object/from16 v15, v21

    .line 1312
    .line 1313
    move-object/from16 v12, v22

    .line 1314
    .line 1315
    move-object/from16 v13, v23

    .line 1316
    .line 1317
    move-object/from16 v4, v25

    .line 1318
    .line 1319
    move-object/from16 v21, v6

    .line 1320
    .line 1321
    move-object/from16 v23, v8

    .line 1322
    .line 1323
    move-object/from16 v6, v17

    .line 1324
    .line 1325
    move-object v8, v2

    .line 1326
    move-object/from16 v17, v7

    .line 1327
    .line 1328
    move-object v2, v14

    .line 1329
    move-object/from16 v7, v16

    .line 1330
    .line 1331
    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 1332
    .line 1333
    .line 1334
    move-result v9

    .line 1335
    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1336
    .line 1337
    .line 1338
    :goto_20
    move-object v14, v2

    .line 1339
    move-object/from16 v16, v7

    .line 1340
    .line 1341
    move-object v2, v8

    .line 1342
    move-object/from16 v22, v12

    .line 1343
    .line 1344
    move-object/from16 v7, v17

    .line 1345
    .line 1346
    move-object/from16 v8, v23

    .line 1347
    .line 1348
    move-object/from16 v9, v26

    .line 1349
    .line 1350
    move-object v12, v3

    .line 1351
    move-object/from16 v17, v6

    .line 1352
    .line 1353
    move-object/from16 v23, v13

    .line 1354
    .line 1355
    move-object/from16 v3, v20

    .line 1356
    .line 1357
    move-object/from16 v6, v21

    .line 1358
    .line 1359
    move-object v13, v0

    .line 1360
    move-object/from16 v21, v15

    .line 1361
    .line 1362
    move-object v15, v4

    .line 1363
    goto/16 :goto_1

    .line 1364
    .line 1365
    :cond_20
    move v0, v4

    .line 1366
    move-object/from16 v14, v24

    .line 1367
    .line 1368
    const/4 v9, 0x0

    .line 1369
    invoke-interface {v1, v0, v9, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    :try_start_6
    invoke-virtual {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1376
    return-object v0

    .line 1377
    :catch_5
    move-exception v0

    .line 1378
    move-object v1, v0

    .line 1379
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1380
    .line 1381
    const-string v2, "Failed to build KeyChainSnapshot"

    .line 1382
    .line 1383
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1384
    .line 1385
    .line 1386
    throw v0

    .line 1387
    :sswitch_data_0
    .sparse-switch
        -0x66841336 -> :sswitch_8
        -0x52c1d0fe -> :sswitch_7
        -0x51ae5e2f -> :sswitch_6
        -0x5190b3fe -> :sswitch_5
        0x1caf9a74 -> :sswitch_4
        0x46f25222 -> :sswitch_3
        0x5099d037 -> :sswitch_2
        0x5f2e61bf -> :sswitch_1
        0x6bb456a9 -> :sswitch_0
    .end sparse-switch

    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    :sswitch_data_1
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_b
        -0x298abfcb -> :sswitch_a
        0x3662dd9c -> :sswitch_9
    .end sparse-switch

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
    .end packed-switch

    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    :sswitch_data_2
    .sparse-switch
        -0x3a02fc64 -> :sswitch_e
        0x35c056 -> :sswitch_d
        0xd70b46f -> :sswitch_c
    .end sparse-switch

    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    :sswitch_data_3
    .sparse-switch
        -0x660f5152 -> :sswitch_11
        -0x3969675a -> :sswitch_10
        0x5899650 -> :sswitch_f
    .end sparse-switch

    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :try_start_0
    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 22
    .line 23
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " expected base64 encoded bytes but got \'"

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "\'"

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public static readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 25
    .line 26
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " expected int but got \'"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\'"

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public static readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

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
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

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
