.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move-object/from16 v2, p3

    .line 14
    .line 15
    check-cast v2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    move-object/from16 v3, p4

    .line 22
    .line 23
    check-cast v3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/appop/AppOpsService;

    .line 30
    .line 31
    monitor-enter v11

    .line 32
    const v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    if-ne v2, v0, :cond_0

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v11, v1}, Lcom/android/server/appop/AppOpsService;->onUidProcessDeathLocked(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_10

    .line 43
    .line 44
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 45
    invoke-virtual {v11, v1, v12}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    move v4, v12

    .line 50
    :goto_1
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v14, 0x1

    .line 57
    if-ge v4, v5, :cond_2

    .line 58
    .line 59
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget v5, v5, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 71
    .line 72
    and-int/2addr v5, v14

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    move v4, v14

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v4, v12

    .line 81
    :goto_2
    if-eqz v13, :cond_c

    .line 82
    .line 83
    if-eqz v3, :cond_c

    .line 84
    .line 85
    if-eqz v4, :cond_c

    .line 86
    .line 87
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 88
    .line 89
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v4, v11, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 93
    .line 94
    invoke-interface {v4, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(I)Landroid/util/SparseBooleanArray;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    move v5, v12

    .line 99
    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ge v5, v6, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-virtual {v3, v6, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    array-length v5, v4

    .line 124
    move v6, v12

    .line 125
    :goto_4
    if-ge v6, v5, :cond_5

    .line 126
    .line 127
    aget-object v7, v4, v6

    .line 128
    .line 129
    iget-object v8, v11, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 130
    .line 131
    invoke-interface {v8, v1, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    move v8, v12

    .line 136
    :goto_5
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-ge v8, v9, :cond_4

    .line 141
    .line 142
    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    invoke-virtual {v3, v9, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    sub-int/2addr v1, v14

    .line 160
    :goto_6
    if-ltz v1, :cond_c

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_6

    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_6
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    iget-object v4, v11, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 175
    .line 176
    iget v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 177
    .line 178
    const-string/jumbo v6, "default:0"

    .line 179
    .line 180
    .line 181
    invoke-interface {v4, v5, v15, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    const/4 v10, 0x4

    .line 190
    if-eq v4, v5, :cond_7

    .line 191
    .line 192
    iget-object v4, v11, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 193
    .line 194
    iget v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 195
    .line 196
    const-string/jumbo v6, "default:0"

    .line 197
    .line 198
    .line 199
    invoke-interface {v4, v5, v15, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-ne v4, v10, :cond_7

    .line 204
    .line 205
    iget-object v10, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 206
    .line 207
    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    iget v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    const-string/jumbo v9, "default:0"

    .line 226
    .line 227
    .line 228
    move-object v5, v11

    .line 229
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .line 235
    .line 236
    goto/16 :goto_a

    .line 237
    .line 238
    :cond_7
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_b

    .line 245
    .line 246
    iget-object v4, v11, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 247
    .line 248
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    move-object v9, v4

    .line 253
    check-cast v9, Landroid/util/ArraySet;

    .line 254
    .line 255
    if-eqz v9, :cond_b

    .line 256
    .line 257
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    sub-int/2addr v4, v14

    .line 262
    move v8, v4

    .line 263
    :goto_7
    if-ltz v8, :cond_b

    .line 264
    .line 265
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 270
    .line 271
    iget v4, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 272
    .line 273
    and-int/2addr v4, v14

    .line 274
    if-eqz v4, :cond_a

    .line 275
    .line 276
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 277
    .line 278
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    sub-int/2addr v4, v14

    .line 283
    move v7, v4

    .line 284
    :goto_8
    if-ltz v7, :cond_a

    .line 285
    .line 286
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 287
    .line 288
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 293
    .line 294
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 299
    .line 300
    if-nez v4, :cond_9

    .line 301
    .line 302
    :cond_8
    move/from16 v20, v7

    .line 303
    .line 304
    move/from16 v16, v8

    .line 305
    .line 306
    move-object/from16 v17, v9

    .line 307
    .line 308
    move/from16 v18, v10

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_9
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 312
    .line 313
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 314
    .line 315
    iget v12, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 316
    .line 317
    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 318
    .line 319
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-interface {v5, v12, v4, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-ne v4, v10, :cond_8

    .line 328
    .line 329
    iget-object v12, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 330
    .line 331
    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    move-object v6, v5

    .line 342
    check-cast v6, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 343
    .line 344
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v16

    .line 348
    iget v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 349
    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v17

    .line 354
    iget-object v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 355
    .line 356
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    move-object/from16 v18, v5

    .line 361
    .line 362
    check-cast v18, Ljava/lang/String;

    .line 363
    .line 364
    const-string/jumbo v19, "default:0"

    .line 365
    .line 366
    .line 367
    move-object v5, v11

    .line 368
    move/from16 v20, v7

    .line 369
    .line 370
    move-object/from16 v7, v16

    .line 371
    .line 372
    move/from16 v16, v8

    .line 373
    .line 374
    move-object/from16 v8, v17

    .line 375
    .line 376
    move-object/from16 v17, v9

    .line 377
    .line 378
    move-object/from16 v9, v18

    .line 379
    .line 380
    move/from16 v18, v10

    .line 381
    .line 382
    move-object/from16 v10, v19

    .line 383
    .line 384
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    .line 390
    .line 391
    :goto_9
    add-int/lit8 v7, v20, -0x1

    .line 392
    .line 393
    move/from16 v8, v16

    .line 394
    .line 395
    move-object/from16 v9, v17

    .line 396
    .line 397
    move/from16 v10, v18

    .line 398
    .line 399
    const/4 v12, 0x0

    .line 400
    goto :goto_8

    .line 401
    :cond_a
    move/from16 v16, v8

    .line 402
    .line 403
    move-object/from16 v17, v9

    .line 404
    .line 405
    move/from16 v18, v10

    .line 406
    .line 407
    add-int/lit8 v8, v16, -0x1

    .line 408
    .line 409
    move-object/from16 v9, v17

    .line 410
    .line 411
    move/from16 v10, v18

    .line 412
    .line 413
    const/4 v12, 0x0

    .line 414
    goto/16 :goto_7

    .line 415
    .line 416
    :cond_b
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 417
    .line 418
    const/4 v12, 0x0

    .line 419
    goto/16 :goto_6

    .line 420
    .line 421
    :cond_c
    if-ne v2, v0, :cond_d

    .line 422
    .line 423
    monitor-exit v11

    .line 424
    goto :goto_f

    .line 425
    :cond_d
    if-eqz v13, :cond_11

    .line 426
    .line 427
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 428
    .line 429
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    const/4 v1, 0x0

    .line 434
    :goto_b
    if-ge v1, v0, :cond_11

    .line 435
    .line 436
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 437
    .line 438
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 443
    .line 444
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    const/4 v5, 0x0

    .line 449
    :goto_c
    if-ge v5, v4, :cond_10

    .line 450
    .line 451
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    :goto_d
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 459
    .line 460
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    if-ge v7, v8, :cond_f

    .line 465
    .line 466
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 467
    .line 468
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    check-cast v8, Landroid/util/ArrayMap;

    .line 473
    .line 474
    const/4 v9, 0x0

    .line 475
    :goto_e
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    if-ge v9, v10, :cond_e

    .line 480
    .line 481
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    check-cast v10, Lcom/android/server/appop/AttributedOp;

    .line 486
    .line 487
    invoke-virtual {v10, v2}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    .line 488
    .line 489
    .line 490
    add-int/lit8 v9, v9, 0x1

    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 497
    .line 498
    goto :goto_c

    .line 499
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 500
    .line 501
    goto :goto_b

    .line 502
    :cond_11
    monitor-exit v11

    .line 503
    :goto_f
    return-void

    .line 504
    :goto_10
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    throw v0
.end method
