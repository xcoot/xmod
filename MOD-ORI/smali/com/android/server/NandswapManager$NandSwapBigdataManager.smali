.class public final Lcom/android/server/NandswapManager$NandSwapBigdataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final bigdataJsonFormat:[Ljava/lang/String;

.field public static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static -$$Nest$smuploadBigdataToHQM()V
    .locals 17

    .line 1
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    const-string v1, "NandswapManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Bigdata semHqmManager isn\'t initialized..."

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto/16 :goto_10

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1f

    .line 19
    .line 20
    const-string v0, "Upload Bigdata..."

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 46
    .line 47
    new-instance v0, Ljava/io/FileReader;

    .line 48
    .line 49
    const-string v8, "/proc/meminfo"

    .line 50
    .line 51
    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const-string v8, ":"

    .line 64
    .line 65
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-lez v8, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v8, "\\D+"

    .line 80
    .line 81
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v8, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object v7, v0

    .line 110
    :try_start_4
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    :catch_0
    const-string v0, "Failed to read stats from /proc/meminfo"

    .line 115
    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_1d

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_1d

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    goto/16 :goto_e

    .line 141
    .line 142
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v7, "\"option\":\""

    .line 145
    .line 146
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v7, "\","

    .line 157
    .line 158
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v8, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    .line 166
    .line 167
    move v9, v6

    .line 168
    :goto_4
    const/16 v10, 0x13

    .line 169
    .line 170
    const/4 v11, 0x1

    .line 171
    if-ge v9, v10, :cond_1b

    .line 172
    .line 173
    aget-object v10, v8, v9

    .line 174
    .line 175
    const-string/jumbo v12, "count_average"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    const-string v15, "%.3f"

    .line 183
    .line 184
    if-eqz v12, :cond_5

    .line 185
    .line 186
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 187
    .line 188
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 189
    .line 190
    iget-boolean v14, v13, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 191
    .line 192
    if-eqz v14, :cond_4

    .line 193
    .line 194
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 195
    .line 196
    invoke-virtual {v13, v11}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 197
    .line 198
    .line 199
    move-result-wide v13

    .line 200
    goto :goto_5

    .line 201
    :cond_4
    const-wide/16 v13, 0x0

    .line 202
    .line 203
    :goto_5
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-static {v12, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    goto/16 :goto_d

    .line 216
    .line 217
    :cond_5
    const-string/jumbo v12, "size_average"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    const/4 v13, 0x2

    .line 225
    if-eqz v12, :cond_7

    .line 226
    .line 227
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 228
    .line 229
    sget-object v12, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 230
    .line 231
    iget-boolean v14, v12, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 232
    .line 233
    if-eqz v14, :cond_6

    .line 234
    .line 235
    iget-object v12, v12, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 236
    .line 237
    invoke-virtual {v12, v13}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 238
    .line 239
    .line 240
    move-result-wide v13

    .line 241
    goto :goto_6

    .line 242
    :cond_6
    const-wide/16 v13, 0x0

    .line 243
    .line 244
    :goto_6
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    goto/16 :goto_d

    .line 257
    .line 258
    :cond_7
    const-string/jumbo v12, "ppr_count_average"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-eqz v12, :cond_9

    .line 266
    .line 267
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 268
    .line 269
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 270
    .line 271
    iget-boolean v14, v13, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 272
    .line 273
    if-eqz v14, :cond_8

    .line 274
    .line 275
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 276
    .line 277
    invoke-virtual {v13, v11}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    goto :goto_7

    .line 282
    :cond_8
    const-wide/16 v13, 0x0

    .line 283
    .line 284
    :goto_7
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-static {v12, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    goto/16 :goto_d

    .line 297
    .line 298
    :cond_9
    const-string/jumbo v11, "ppr_size_average"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    if-eqz v11, :cond_b

    .line 306
    .line 307
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 308
    .line 309
    sget-object v12, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 310
    .line 311
    iget-boolean v14, v12, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 312
    .line 313
    if-eqz v14, :cond_a

    .line 314
    .line 315
    iget-object v12, v12, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 316
    .line 317
    invoke-virtual {v12, v13}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    .line 318
    .line 319
    .line 320
    move-result-wide v13

    .line 321
    goto :goto_8

    .line 322
    :cond_a
    const-wide/16 v13, 0x0

    .line 323
    .line 324
    :goto_8
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    goto/16 :goto_d

    .line 337
    .line 338
    :cond_b
    const-string/jumbo v11, "objcnt"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    if-nez v11, :cond_1a

    .line 346
    .line 347
    const-string/jumbo v11, "ppr_objcnt"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_c

    .line 355
    .line 356
    goto/16 :goto_c

    .line 357
    .line 358
    :cond_c
    const-string/jumbo v11, "max_count"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    if-nez v11, :cond_19

    .line 366
    .line 367
    const-string/jumbo v11, "max_size"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    if-nez v11, :cond_19

    .line 375
    .line 376
    const-string/jumbo v11, "ppr_max_count"

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    if-nez v11, :cond_19

    .line 384
    .line 385
    const-string/jumbo v11, "ppr_max_size"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    if-eqz v11, :cond_d

    .line 393
    .line 394
    goto/16 :goto_b

    .line 395
    .line 396
    :cond_d
    const-string/jumbo v11, "reads"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    if-eqz v11, :cond_e

    .line 404
    .line 405
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 406
    .line 407
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    check-cast v11, Ljava/lang/Integer;

    .line 412
    .line 413
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 414
    .line 415
    .line 416
    move-result v11

    .line 417
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    check-cast v12, Ljava/lang/Integer;

    .line 422
    .line 423
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v12

    .line 427
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 428
    .line 429
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 430
    .line 431
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 432
    .line 433
    sub-int/2addr v12, v13

    .line 434
    add-int/2addr v12, v11

    .line 435
    new-instance v11, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    goto/16 :goto_d

    .line 448
    .line 449
    :cond_e
    const-string/jumbo v11, "writes"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_f

    .line 457
    .line 458
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 459
    .line 460
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    check-cast v11, Ljava/lang/Integer;

    .line 465
    .line 466
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 467
    .line 468
    .line 469
    move-result v11

    .line 470
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v12

    .line 474
    check-cast v12, Ljava/lang/Integer;

    .line 475
    .line 476
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 477
    .line 478
    .line 479
    move-result v12

    .line 480
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 481
    .line 482
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 483
    .line 484
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 485
    .line 486
    sub-int/2addr v12, v13

    .line 487
    add-int/2addr v12, v11

    .line 488
    new-instance v11, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    goto/16 :goto_d

    .line 501
    .line 502
    :cond_f
    const-string/jumbo v11, "ppr_reads"

    .line 503
    .line 504
    .line 505
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v11

    .line 509
    if-eqz v11, :cond_10

    .line 510
    .line 511
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 512
    .line 513
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v11

    .line 517
    check-cast v11, Ljava/lang/Integer;

    .line 518
    .line 519
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v12

    .line 527
    check-cast v12, Ljava/lang/Integer;

    .line 528
    .line 529
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 530
    .line 531
    .line 532
    move-result v12

    .line 533
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 534
    .line 535
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 536
    .line 537
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 538
    .line 539
    sub-int/2addr v12, v13

    .line 540
    add-int/2addr v12, v11

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    goto/16 :goto_d

    .line 554
    .line 555
    :cond_10
    const-string/jumbo v11, "ppr_writes"

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v11

    .line 562
    if-eqz v11, :cond_11

    .line 563
    .line 564
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 565
    .line 566
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    check-cast v11, Ljava/lang/Integer;

    .line 571
    .line 572
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v12

    .line 580
    check-cast v12, Ljava/lang/Integer;

    .line 581
    .line 582
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 583
    .line 584
    .line 585
    move-result v12

    .line 586
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 587
    .line 588
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 589
    .line 590
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 591
    .line 592
    sub-int/2addr v12, v13

    .line 593
    add-int/2addr v12, v11

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v11

    .line 606
    goto/16 :goto_d

    .line 607
    .line 608
    :cond_11
    const-string/jumbo v11, "objreads"

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v11

    .line 615
    if-eqz v11, :cond_12

    .line 616
    .line 617
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 618
    .line 619
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    check-cast v11, Ljava/lang/Integer;

    .line 624
    .line 625
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v12

    .line 633
    check-cast v12, Ljava/lang/Integer;

    .line 634
    .line 635
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 636
    .line 637
    .line 638
    move-result v12

    .line 639
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 640
    .line 641
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 642
    .line 643
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 644
    .line 645
    sub-int/2addr v12, v13

    .line 646
    add-int/2addr v12, v11

    .line 647
    new-instance v11, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v11

    .line 659
    goto/16 :goto_d

    .line 660
    .line 661
    :cond_12
    const-string/jumbo v11, "objwrites"

    .line 662
    .line 663
    .line 664
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v11

    .line 668
    if-eqz v11, :cond_13

    .line 669
    .line 670
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 671
    .line 672
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v11

    .line 676
    check-cast v11, Ljava/lang/Integer;

    .line 677
    .line 678
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 679
    .line 680
    .line 681
    move-result v11

    .line 682
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v12

    .line 686
    check-cast v12, Ljava/lang/Integer;

    .line 687
    .line 688
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 689
    .line 690
    .line 691
    move-result v12

    .line 692
    sget-object v13, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 693
    .line 694
    iget-object v13, v13, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 695
    .line 696
    iget v13, v13, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 697
    .line 698
    sub-int/2addr v12, v13

    .line 699
    add-int/2addr v12, v11

    .line 700
    new-instance v11, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v11

    .line 712
    goto/16 :goto_d

    .line 713
    .line 714
    :cond_13
    const-string/jumbo v11, "gpu_total_mem"

    .line 715
    .line 716
    .line 717
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v11

    .line 721
    const-string v12, "-1"

    .line 722
    .line 723
    if-eqz v11, :cond_15

    .line 724
    .line 725
    const-string v11, "KgslShmemUsage"

    .line 726
    .line 727
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v13

    .line 731
    if-nez v13, :cond_14

    .line 732
    .line 733
    :goto_9
    move-object v11, v12

    .line 734
    goto/16 :goto_d

    .line 735
    .line 736
    :cond_14
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v11

    .line 740
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v11

    .line 744
    goto/16 :goto_d

    .line 745
    .line 746
    :cond_15
    const-string/jumbo v11, "gpu_reclaimed_mem"

    .line 747
    .line 748
    .line 749
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v11

    .line 753
    if-eqz v11, :cond_17

    .line 754
    .line 755
    const-string v11, "KgslReclaimed"

    .line 756
    .line 757
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v13

    .line 761
    if-nez v13, :cond_16

    .line 762
    .line 763
    goto :goto_9

    .line 764
    :cond_16
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v11

    .line 768
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v11

    .line 772
    goto :goto_d

    .line 773
    :cond_17
    const-string/jumbo v11, "swap_used"

    .line 774
    .line 775
    .line 776
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v11

    .line 780
    if-eqz v11, :cond_18

    .line 781
    .line 782
    const-string v11, "SwapTotal"

    .line 783
    .line 784
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v11

    .line 788
    check-cast v11, Ljava/lang/Integer;

    .line 789
    .line 790
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    const-string v12, "SwapFree"

    .line 795
    .line 796
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v12

    .line 800
    check-cast v12, Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v12

    .line 806
    sub-int/2addr v11, v12

    .line 807
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v11

    .line 811
    goto :goto_d

    .line 812
    :cond_18
    :goto_a
    move-object v15, v2

    .line 813
    goto/16 :goto_f

    .line 814
    .line 815
    :cond_19
    :goto_b
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 816
    .line 817
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v11

    .line 821
    check-cast v11, Ljava/lang/Integer;

    .line 822
    .line 823
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 824
    .line 825
    .line 826
    move-result v11

    .line 827
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v12

    .line 831
    check-cast v12, Ljava/lang/Integer;

    .line 832
    .line 833
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v12

    .line 837
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 838
    .line 839
    .line 840
    move-result v11

    .line 841
    new-instance v12, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v11

    .line 853
    goto :goto_d

    .line 854
    :cond_1a
    :goto_c
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 855
    .line 856
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v12

    .line 860
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v12

    .line 864
    const-string v13, "%d"

    .line 865
    .line 866
    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v11

    .line 870
    :goto_d
    new-instance v12, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v0, "\""

    .line 879
    .line 880
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    const-string v0, "\":\""

    .line 887
    .line 888
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    add-int/lit8 v9, v9, 0x1

    .line 902
    .line 903
    goto/16 :goto_4

    .line 904
    .line 905
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-eqz v2, :cond_1c

    .line 910
    .line 911
    invoke-static {v11, v6, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    :cond_1c
    move-object v2, v0

    .line 916
    goto :goto_a

    .line 917
    :cond_1d
    :goto_e
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 918
    .line 919
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 928
    .line 929
    .line 930
    move-result v4

    .line 931
    const-string/jumbo v5, "persist.sys.zram0.bigdata_info("

    .line 932
    .line 933
    .line 934
    const-string v7, ") or bd_stat("

    .line 935
    .line 936
    const-string v8, ") or meminfo("

    .line 937
    .line 938
    invoke-static {v0, v3, v5, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    const-string v3, ") is empty..."

    .line 943
    .line 944
    invoke-static {v0, v4, v3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_a

    .line 948
    .line 949
    :goto_f
    sget-object v7, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 950
    .line 951
    const-string v14, ""

    .line 952
    .line 953
    const-string v16, ""

    .line 954
    .line 955
    const/4 v8, 0x0

    .line 956
    const-string v9, "AP"

    .line 957
    .line 958
    const-string v10, "NSST"

    .line 959
    .line 960
    const-string/jumbo v11, "sm"

    .line 961
    .line 962
    .line 963
    const-string v12, "0.0"

    .line 964
    .line 965
    const-string/jumbo v13, "sec"

    .line 966
    .line 967
    .line 968
    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 969
    .line 970
    .line 971
    const-string v0, "Initialize bigdata information..."

    .line 972
    .line 973
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 977
    .line 978
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 979
    .line 980
    .line 981
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 982
    .line 983
    iget-boolean v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 984
    .line 985
    if-eqz v2, :cond_1e

    .line 986
    .line 987
    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 988
    .line 989
    iget-object v3, v2, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 992
    .line 993
    .line 994
    iget-object v2, v2, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 995
    .line 996
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 997
    .line 998
    .line 999
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 1000
    .line 1001
    iget-object v2, v0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 1002
    .line 1003
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1004
    .line 1005
    .line 1006
    iget-object v0, v0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1009
    .line 1010
    .line 1011
    :cond_1e
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 1014
    .line 1015
    .line 1016
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1019
    .line 1020
    .line 1021
    :try_start_5
    new-instance v0, Ljava/io/File;

    .line 1022
    .line 1023
    const-string v2, "/sys/block/zram0/bd_stat"

    .line 1024
    .line 1025
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    invoke-static {v0, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1033
    .line 1034
    .line 1035
    goto :goto_10

    .line 1036
    :catch_1
    const-string v0, "Failed to reset stats from /sys/block/zram0/bd_stat"

    .line 1037
    .line 1038
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    :cond_1f
    :goto_10
    return-void
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 1
    const-string/jumbo v17, "gpu_reclaimed_mem"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v18, "swap_used"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "count_average"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "size_average"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "reads"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "writes"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "objcnt"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "max_count"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "max_size"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "ppr_count_average"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v8, "ppr_size_average"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v9, "ppr_reads"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v10, "ppr_writes"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v11, "ppr_objcnt"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v12, "ppr_max_count"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v13, "ppr_max_size"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v14, "objreads"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v15, "objwrites"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v16, "gpu_total_mem"

    .line 56
    .line 57
    .line 58
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    .line 63
    .line 64
    return-void
.end method
