.class public final Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "dynamicfeature_"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static dumpDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintWriter;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "    "

    .line 6
    .line 7
    const-string v4, "loadInfos "

    .line 8
    .line 9
    const-string v5, "SELECT * FROM DF_INFO_TABLE"

    .line 10
    .line 11
    const-string v6, "Load param values : "

    .line 12
    .line 13
    const-string v7, ""

    .line 14
    .line 15
    const-string v8, ", "

    .line 16
    .line 17
    const-string v0, "    *Feature DB dump"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    :try_start_0
    const-string v0, "SELECT * FROM DF_FEATURE_TABLE"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v12, "namespace"

    .line 41
    .line 42
    .line 43
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    iput-object v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 52
    .line 53
    const-string/jumbo v12, "name"

    .line 54
    .line 55
    .line 56
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    iput-object v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 65
    .line 66
    const-string/jumbo v12, "value"

    .line 67
    .line 68
    .line 69
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    iput-object v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 78
    .line 79
    const-string/jumbo v12, "version"

    .line 80
    .line 81
    .line 82
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    iput v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 91
    .line 92
    const-string/jumbo v12, "reboot"

    .line 93
    .line 94
    .line 95
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const/4 v13, 0x1

    .line 104
    if-lez v12, :cond_1

    .line 105
    .line 106
    move v12, v13

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v12, 0x0

    .line 109
    :goto_0
    iput-boolean v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->reboot:Z

    .line 110
    .line 111
    const-string/jumbo v12, "type"

    .line 112
    .line 113
    .line 114
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    iput-object v12, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 123
    .line 124
    const-string/jumbo v12, "property"

    .line 125
    .line 126
    .line 127
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-lez v12, :cond_2

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    const/4 v13, 0x0

    .line 139
    :goto_1
    iput-boolean v13, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 140
    .line 141
    const-string/jumbo v12, "package"

    .line 142
    .line 143
    .line 144
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v0, v12}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setPackageNames(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v12, "signature"

    .line 156
    .line 157
    .line 158
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-virtual {v0, v12}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setSignatures(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v13, "   "

    .line 178
    .line 179
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 190
    .line 191
    .line 192
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-nez v0, :cond_0

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    move-object v10, v11

    .line 198
    goto/16 :goto_13

    .line 199
    .line 200
    :catch_0
    move-exception v0

    .line 201
    goto :goto_3

    .line 202
    :cond_3
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    goto/16 :goto_13

    .line 208
    .line 209
    :catch_1
    move-exception v0

    .line 210
    move-object v11, v10

    .line 211
    :goto_3
    :try_start_2
    sget-object v12, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v14, "FAIL to dumpDB"

    .line 219
    .line 220
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .line 236
    .line 237
    if-eqz v11, :cond_4

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_4
    :goto_4
    const-string v0, "    *Info DB dump"

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :try_start_3
    invoke-virtual {v1, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 246
    .line 247
    .line 248
    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 249
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    const-string/jumbo v0, "virtualid"

    .line 256
    .line 257
    .line 258
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v13, "jobIntervalMill"

    .line 267
    .line 268
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v13

    .line 276
    const-string v15, "UT"

    .line 277
    .line 278
    const-string/jumbo v9, "usertrial"

    .line 279
    .line 280
    .line 281
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    const-string v15, "lastUpdateTime"

    .line 294
    .line 295
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 309
    .line 310
    .line 311
    move-object/from16 v16, v7

    .line 312
    .line 313
    :try_start_5
    const-string/jumbo v7, "vid = "

    .line 314
    .line 315
    .line 316
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v7, "jobIntervalMill = "

    .line 338
    .line 339
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v7, "isUT = "

    .line 361
    .line 362
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v3, "lastUpdatedTime = "

    .line 384
    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 396
    .line 397
    .line 398
    goto :goto_5

    .line 399
    :catchall_2
    move-exception v0

    .line 400
    move-object v10, v12

    .line 401
    goto/16 :goto_12

    .line 402
    .line 403
    :catch_2
    move-exception v0

    .line 404
    goto :goto_6

    .line 405
    :catch_3
    move-exception v0

    .line 406
    move-object/from16 v16, v7

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_5
    move-object/from16 v16, v7

    .line 410
    .line 411
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 412
    .line 413
    .line 414
    :cond_6
    const/4 v3, 0x0

    .line 415
    goto :goto_7

    .line 416
    :catchall_3
    move-exception v0

    .line 417
    const/4 v10, 0x0

    .line 418
    goto/16 :goto_12

    .line 419
    .line 420
    :catch_4
    move-exception v0

    .line 421
    move-object/from16 v16, v7

    .line 422
    .line 423
    const/4 v12, 0x0

    .line 424
    :goto_6
    :try_start_6
    sget-object v3, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 425
    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 446
    .line 447
    .line 448
    if-eqz v12, :cond_6

    .line 449
    .line 450
    goto :goto_5

    .line 451
    :goto_7
    :try_start_7
    invoke-virtual {v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 452
    .line 453
    .line 454
    move-result-object v11

    .line 455
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_7

    .line 460
    .line 461
    const-string/jumbo v0, "mcc"

    .line 462
    .line 463
    .line 464
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 472
    :try_start_8
    const-string/jumbo v0, "mnc"

    .line 473
    .line 474
    .line 475
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 483
    :try_start_9
    const-string v0, "csc"

    .line 484
    .line 485
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 493
    :try_start_a
    const-string/jumbo v0, "sdkVersion"

    .line 494
    .line 495
    .line 496
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 501
    .line 502
    .line 503
    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 504
    :try_start_b
    const-string/jumbo v0, "oneUiVersion"

    .line 505
    .line 506
    .line 507
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 515
    :try_start_c
    const-string v0, "binaryType"

    .line 516
    .line 517
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 525
    goto :goto_e

    .line 526
    :catchall_4
    move-exception v0

    .line 527
    goto/16 :goto_11

    .line 528
    .line 529
    :catch_5
    move-exception v0

    .line 530
    goto/16 :goto_f

    .line 531
    .line 532
    :catchall_5
    move-exception v0

    .line 533
    move-object/from16 v7, v16

    .line 534
    .line 535
    goto/16 :goto_11

    .line 536
    .line 537
    :catch_6
    move-exception v0

    .line 538
    move-object/from16 v7, v16

    .line 539
    .line 540
    goto/16 :goto_f

    .line 541
    .line 542
    :catchall_6
    move-exception v0

    .line 543
    move-object/from16 v7, v16

    .line 544
    .line 545
    :goto_8
    const/4 v9, 0x0

    .line 546
    goto/16 :goto_11

    .line 547
    .line 548
    :catch_7
    move-exception v0

    .line 549
    move-object/from16 v7, v16

    .line 550
    .line 551
    :goto_9
    const/4 v9, 0x0

    .line 552
    goto :goto_f

    .line 553
    :catchall_7
    move-exception v0

    .line 554
    move-object/from16 v5, v16

    .line 555
    .line 556
    :goto_a
    move-object v7, v5

    .line 557
    goto :goto_8

    .line 558
    :catch_8
    move-exception v0

    .line 559
    move-object/from16 v5, v16

    .line 560
    .line 561
    :goto_b
    move-object v7, v5

    .line 562
    goto :goto_9

    .line 563
    :catchall_8
    move-exception v0

    .line 564
    move-object/from16 v3, v16

    .line 565
    .line 566
    :goto_c
    move-object v5, v3

    .line 567
    goto :goto_a

    .line 568
    :catch_9
    move-exception v0

    .line 569
    move-object/from16 v3, v16

    .line 570
    .line 571
    :goto_d
    move-object v5, v3

    .line 572
    goto :goto_b

    .line 573
    :catchall_9
    move-exception v0

    .line 574
    move-object/from16 v1, v16

    .line 575
    .line 576
    move-object v3, v1

    .line 577
    goto :goto_c

    .line 578
    :catch_a
    move-exception v0

    .line 579
    move-object/from16 v1, v16

    .line 580
    .line 581
    move-object v3, v1

    .line 582
    goto :goto_d

    .line 583
    :cond_7
    move-object/from16 v0, v16

    .line 584
    .line 585
    move-object v1, v0

    .line 586
    move-object v3, v1

    .line 587
    move-object v5, v3

    .line 588
    move-object v7, v5

    .line 589
    const/4 v9, 0x0

    .line 590
    :goto_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 591
    .line 592
    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-static {v4, v8, v7, v8, v0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    filled-new-array {v0}, [Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    goto :goto_10

    .line 631
    :goto_f
    :try_start_d
    sget-object v10, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 632
    .line 633
    new-instance v12, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 653
    .line 654
    .line 655
    if-eqz v11, :cond_8

    .line 656
    .line 657
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 658
    .line 659
    .line 660
    :cond_8
    invoke-static {v6, v1, v8, v3, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v9, v5, v8, v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 665
    .line 666
    .line 667
    invoke-static {v0, v7, v8}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    filled-new-array {v0}, [Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    :goto_10
    const-string v0, "=========================================\n"

    .line 679
    .line 680
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    return-void

    .line 684
    :goto_11
    if-eqz v11, :cond_9

    .line 685
    .line 686
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 687
    .line 688
    .line 689
    :cond_9
    invoke-static {v6, v1, v8, v3, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-static {v9, v5, v8, v8, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 694
    .line 695
    .line 696
    invoke-static {v1, v7, v8}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    filled-new-array {v1}, [Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-static {v1}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    throw v0

    .line 708
    :goto_12
    if-eqz v10, :cond_a

    .line 709
    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    .line 712
    .line 713
    :cond_a
    throw v0

    .line 714
    :goto_13
    if-eqz v10, :cond_b

    .line 715
    .line 716
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 717
    .line 718
    .line 719
    :cond_b
    throw v0
.end method

.method public static insertFeature(Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/server/dynamicfeature/DFeature;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "property"

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "namespace"

    .line 10
    .line 11
    .line 12
    iget-object v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "name"

    .line 18
    .line 19
    .line 20
    iget-object v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "value"

    .line 26
    .line 27
    .line 28
    iget-object v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v2, "version"

    .line 34
    .line 35
    .line 36
    iget v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "reboot"

    .line 55
    .line 56
    .line 57
    iget-boolean v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->reboot:Z

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v2, "type"

    .line 67
    .line 68
    .line 69
    iget-object v3, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v2, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v0, "package"

    .line 84
    .line 85
    .line 86
    iget-object v2, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    const-string v3, ",,"

    .line 89
    .line 90
    const-string v4, ""

    .line 91
    .line 92
    if-nez v2, :cond_0

    .line 93
    .line 94
    move-object v5, v4

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    move-object v5, v4

    .line 101
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/String;

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v0, "signature"

    .line 136
    .line 137
    .line 138
    iget-object p1, p1, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 139
    .line 140
    if-nez p1, :cond_2

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_3

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Ljava/lang/String;

    .line 158
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    goto :goto_2

    .line 178
    :cond_3
    :goto_3
    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string p1, "DF_FEATURE_TABLE"

    .line 182
    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catch_0
    move-exception p0

    .line 189
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v1, "insertFeature : "

    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    return-void
.end method

.method public static loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "SELECT * FROM DF_FEATURE_TABLE"

    .line 8
    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    :cond_0
    new-instance p0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/dynamicfeature/DFeature;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "namespace"

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v2, "name"

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v2, "value"

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 62
    .line 63
    const-string/jumbo v2, "version"

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 75
    .line 76
    const-string/jumbo v2, "reboot"

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x1

    .line 89
    if-lez v2, :cond_1

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v2, v3

    .line 94
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->reboot:Z

    .line 95
    .line 96
    const-string/jumbo v2, "type"

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 108
    .line 109
    const-string/jumbo v2, "package"

    .line 110
    .line 111
    .line 112
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setPackageNames(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v2, "signature"

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setSignatures(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v2, "property"

    .line 138
    .line 139
    .line 140
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-lez v2, :cond_2

    .line 149
    .line 150
    move v3, v4

    .line 151
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 157
    .line 158
    .line 159
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-nez p0, :cond_0

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    goto :goto_4

    .line 165
    :catch_0
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :goto_2
    :try_start_1
    sget-object v2, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v4, "loadFeatures "

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    :goto_3
    return-object v0

    .line 201
    :goto_4
    if-eqz v1, :cond_5

    .line 202
    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    :cond_5
    throw p0
.end method

.method public static loadParams(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    .line 1
    const-string v1, "Load param values : "

    .line 2
    .line 3
    const-string v2, ", "

    .line 4
    .line 5
    const-string v3, "loadParams "

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const-string v9, ""

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v11, 0x0

    .line 13
    :try_start_0
    const-string v0, "SELECT * FROM DF_PARAM_TABLE"

    .line 14
    .line 15
    move-object/from16 v6, p0

    .line 16
    .line 17
    invoke-virtual {v6, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string/jumbo v0, "mcc"

    .line 28
    .line 29
    .line 30
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 38
    :try_start_1
    const-string/jumbo v0, "mnc"

    .line 39
    .line 40
    .line 41
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 49
    :try_start_2
    const-string v0, "csc"

    .line 50
    .line 51
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    :try_start_3
    const-string/jumbo v0, "sdkVersion"

    .line 60
    .line 61
    .line 62
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 67
    .line 68
    .line 69
    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :try_start_4
    const-string/jumbo v0, "oneUiVersion"

    .line 71
    .line 72
    .line 73
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v0, "binaryType"

    .line 82
    .line 83
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    move-object v15, v4

    .line 92
    move-object v12, v6

    .line 93
    move-object v13, v7

    .line 94
    move-object v14, v8

    .line 95
    goto :goto_6

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    :goto_0
    move-object/from16 v18, v8

    .line 98
    .line 99
    move-object v8, v4

    .line 100
    move-object/from16 v4, v18

    .line 101
    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :catch_0
    move-exception v0

    .line 105
    :goto_1
    move-object/from16 v18, v8

    .line 106
    .line 107
    move-object v8, v4

    .line 108
    move-object/from16 v4, v18

    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move v10, v11

    .line 114
    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    move v10, v11

    .line 117
    goto :goto_1

    .line 118
    :catchall_2
    move-exception v0

    .line 119
    move-object v8, v4

    .line 120
    :goto_2
    move v10, v11

    .line 121
    goto/16 :goto_a

    .line 122
    .line 123
    :catch_2
    move-exception v0

    .line 124
    move-object v8, v4

    .line 125
    :goto_3
    move v10, v11

    .line 126
    goto :goto_8

    .line 127
    :catchall_3
    move-exception v0

    .line 128
    move-object v7, v4

    .line 129
    :goto_4
    move-object v8, v7

    .line 130
    goto :goto_2

    .line 131
    :catch_3
    move-exception v0

    .line 132
    move-object v7, v4

    .line 133
    :goto_5
    move-object v8, v7

    .line 134
    goto :goto_3

    .line 135
    :catchall_4
    move-exception v0

    .line 136
    move-object v6, v4

    .line 137
    move-object v7, v6

    .line 138
    goto :goto_4

    .line 139
    :catch_4
    move-exception v0

    .line 140
    move-object v6, v4

    .line 141
    move-object v7, v6

    .line 142
    goto :goto_5

    .line 143
    :cond_0
    move-object v12, v4

    .line 144
    move-object v13, v12

    .line 145
    move-object v14, v13

    .line 146
    move-object v15, v14

    .line 147
    move v10, v11

    .line 148
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v2, v15, v2, v9}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    filled-new-array {v0}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v16, v9

    .line 189
    .line 190
    move/from16 v17, v10

    .line 191
    .line 192
    invoke-static/range {v12 .. v17}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    :goto_7
    sput-boolean v11, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :goto_8
    :try_start_5
    sget-object v12, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 199
    .line 200
    new-instance v13, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 217
    .line 218
    .line 219
    if-eqz v5, :cond_1

    .line 220
    .line 221
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 222
    .line 223
    .line 224
    :cond_1
    invoke-static {v1, v6, v2, v7, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v10, v4, v2, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v8, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    filled-new-array {v0}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    move-object v5, v6

    .line 243
    move-object v6, v7

    .line 244
    move-object v7, v4

    .line 245
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :goto_9
    return-void

    .line 250
    :catchall_5
    move-exception v0

    .line 251
    :goto_a
    if-eqz v5, :cond_2

    .line 252
    .line 253
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 254
    .line 255
    .line 256
    :cond_2
    invoke-static {v1, v6, v2, v7, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v10, v4, v2, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v8, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    filled-new-array {v1}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    move-object v5, v6

    .line 275
    move-object v6, v7

    .line 276
    move-object v7, v4

    .line 277
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    .line 279
    .line 280
    sput-boolean v11, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 281
    .line 282
    throw v0
.end method

.method public static replaceBasicInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "_ID"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "virtualid"

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "jobIntervalMill"

    .line 27
    .line 28
    iget-wide v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "usertrial"

    .line 38
    .line 39
    .line 40
    iget-boolean v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "lastUpdateTime"

    .line 50
    .line 51
    iget-object v2, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "DF_INFO_TABLE"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v2, "replaceBasicInfo : "

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public static replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "_ID"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "mcc"

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "mnc"

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "csc"

    .line 35
    .line 36
    iget-object v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "sdkVersion"

    .line 42
    .line 43
    .line 44
    iget v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "oneUiVersion"

    .line 54
    .line 55
    .line 56
    iget-object v3, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "binaryType"

    .line 62
    .line 63
    iget-object v2, v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "DF_PARAM_TABLE"

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v2, "replaceBasicInfo : "

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p0, "DROP TABLE IF EXISTS DF_FEATURE_TABLE"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
