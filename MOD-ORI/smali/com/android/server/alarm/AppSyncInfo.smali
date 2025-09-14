.class public final Lcom/android/server/alarm/AppSyncInfo;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field public static EXP_MIN_INEXACT_WINDOW:J = 0x493e0L

.field public static SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L


# instance fields
.field public final boot_filter:Landroid/content/IntentFilter;

.field public final mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

.field public final mAccountsPackages:Ljava/util/ArrayList;

.field public final mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

.field public final mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

.field public mCharging:Z

.field public final mContext:Landroid/content/Context;

.field public final mCscPackages:Ljava/util/ArrayList;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mLockAllowlistFromSCPM:Ljava/lang/Object;

.field public final mLockBlocklistFromSCPM:Ljava/lang/Object;

.field public final mLockExt:Ljava/lang/Object;

.field public final mLockSuspiciousTagSet:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field public final mPermanentAllowlistPackages:Ljava/util/ArrayList;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mScreenOn:Z

.field public mSuspiciousTagSet:Ljava/util/Set;

.field public final mSuspiciousTagSetFromApi:Ljava/util/Set;

.field public final mSuspiciousTagSetFromSCPM:Ljava/util/Set;

.field public final mTargetPackages:Ljava/util/ArrayList;

.field public final preloadedPackages:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v5, "data4"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v6, "data5"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "item"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "data1"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "data2"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "data3"

    .line 22
    .line 23
    .line 24
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string/jumbo v2, "content://com.samsung.android.sm.policy"

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string/jumbo v3, "policy_item"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "AppsyncPolicy"

    .line 43
    .line 44
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    aget-object v4, v1, v3

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    aget-object v5, v1, v5

    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    aget-object v6, v1, v6

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    aget-object v7, v1, v7

    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    aget-object v8, v1, v8

    .line 62
    .line 63
    const/4 v9, 0x5

    .line 64
    aget-object v9, v1, v9

    .line 65
    .line 66
    const-string/jumbo v10, "category"

    .line 67
    .line 68
    .line 69
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string/jumbo v5, "com.samsung.android.sm.policy"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-wide/16 v14, 0x2710

    .line 89
    .line 90
    if-eqz v4, :cond_1a

    .line 91
    .line 92
    const-string v4, "CAT_SUSP_MILLIS"

    .line 93
    .line 94
    filled-new-array {v4}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string/jumbo v7, "category = ?"

    .line 99
    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v4, v11

    .line 103
    move-object v5, v2

    .line 104
    move-object v6, v10

    .line 105
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-wide/16 v16, -0x1

    .line 110
    .line 111
    if-nez v4, :cond_0

    .line 112
    .line 113
    :goto_0
    move-wide/from16 v18, v16

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_1

    .line 121
    .line 122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v5, "item"

    .line 127
    .line 128
    .line 129
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-gez v5, :cond_2

    .line 134
    .line 135
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    :try_start_0
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    move-object v1, v0

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :catch_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 154
    .line 155
    .line 156
    move-wide/from16 v5, v16

    .line 157
    .line 158
    :goto_1
    move-wide/from16 v18, v5

    .line 159
    .line 160
    :goto_2
    const-string v4, "CAT_WIN_MILLIS"

    .line 161
    .line 162
    filled-new-array {v4}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    const-string/jumbo v7, "category = ?"

    .line 167
    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    move-object v4, v11

    .line 171
    move-object v5, v2

    .line 172
    move-object v6, v10

    .line 173
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-nez v4, :cond_3

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_4

    .line 185
    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_4
    const-string/jumbo v5, "item"

    .line 191
    .line 192
    .line 193
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-gez v5, :cond_5

    .line 198
    .line 199
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    :try_start_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :catch_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    move-object v1, v0

    .line 213
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 214
    .line 215
    .line 216
    throw v1

    .line 217
    :goto_3
    const-string v4, "CAT_SUSP_PKGS"

    .line 218
    .line 219
    filled-new-array {v4}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    const-string/jumbo v7, "category = ?"

    .line 224
    .line 225
    .line 226
    const/4 v9, 0x0

    .line 227
    move-object v4, v11

    .line 228
    move-object v5, v2

    .line 229
    move-object v6, v10

    .line 230
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    const/4 v9, 0x6

    .line 235
    const/16 v20, 0x0

    .line 236
    .line 237
    if-nez v4, :cond_6

    .line 238
    .line 239
    move-object/from16 v8, v20

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_b

    .line 252
    .line 253
    move v6, v3

    .line 254
    :goto_4
    if-ge v6, v9, :cond_7

    .line 255
    .line 256
    aget-object v7, v1, v6

    .line 257
    .line 258
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-gez v7, :cond_8

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_8
    :try_start_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    goto :goto_5

    .line 270
    :catch_2
    move-object/from16 v7, v20

    .line 271
    .line 272
    :goto_5
    if-eqz v7, :cond_a

    .line 273
    .line 274
    const-string v8, ""

    .line 275
    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_9

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_9
    const/4 v8, -0x1

    .line 284
    invoke-static {v8, v7}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 295
    .line 296
    .line 297
    move-object v8, v5

    .line 298
    :goto_7
    const-string v4, "CAT_ALLOW_PKGS"

    .line 299
    .line 300
    filled-new-array {v4}, [Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v21

    .line 304
    const-string/jumbo v7, "category = ?"

    .line 305
    .line 306
    .line 307
    const/16 v22, 0x0

    .line 308
    .line 309
    move-object v4, v11

    .line 310
    move-object v5, v2

    .line 311
    move-object v6, v10

    .line 312
    move-object v3, v8

    .line 313
    move-object/from16 v8, v21

    .line 314
    .line 315
    move v12, v9

    .line 316
    move-object/from16 v9, v22

    .line 317
    .line 318
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    if-nez v4, :cond_c

    .line 323
    .line 324
    move-object/from16 v13, v20

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-eqz v6, :cond_11

    .line 337
    .line 338
    const/4 v6, 0x0

    .line 339
    :goto_8
    if-ge v6, v12, :cond_d

    .line 340
    .line 341
    aget-object v7, v1, v6

    .line 342
    .line 343
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-gez v7, :cond_e

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_e
    :try_start_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 354
    goto :goto_9

    .line 355
    :catch_3
    move-object/from16 v7, v20

    .line 356
    .line 357
    :goto_9
    if-eqz v7, :cond_10

    .line 358
    .line 359
    const-string v8, ""

    .line 360
    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-eqz v8, :cond_f

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 379
    .line 380
    .line 381
    move-object v13, v5

    .line 382
    :goto_b
    const-string v4, "CAT_BLOCK_PKGS"

    .line 383
    .line 384
    filled-new-array {v4}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    const-string/jumbo v7, "category = ?"

    .line 389
    .line 390
    .line 391
    const/4 v9, 0x0

    .line 392
    move-object v4, v11

    .line 393
    move-object v5, v2

    .line 394
    move-object v6, v10

    .line 395
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    if-nez v2, :cond_12

    .line 400
    .line 401
    move-object/from16 v4, v20

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .line 408
    .line 409
    :cond_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_17

    .line 414
    .line 415
    const/4 v5, 0x0

    .line 416
    :goto_c
    if-ge v5, v12, :cond_13

    .line 417
    .line 418
    aget-object v6, v1, v5

    .line 419
    .line 420
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-gez v6, :cond_14

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_14
    :try_start_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 431
    goto :goto_d

    .line 432
    :catch_4
    move-object/from16 v6, v20

    .line 433
    .line 434
    :goto_d
    if-eqz v6, :cond_16

    .line 435
    .line 436
    const-string v7, ""

    .line 437
    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-eqz v7, :cond_15

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    :cond_16
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 456
    .line 457
    .line 458
    :goto_f
    const-wide/16 v1, 0x0

    .line 459
    .line 460
    cmp-long v5, v18, v1

    .line 461
    .line 462
    if-gez v5, :cond_18

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_18
    move-wide/from16 v14, v18

    .line 466
    .line 467
    :goto_10
    sput-wide v14, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 468
    .line 469
    cmp-long v1, v16, v1

    .line 470
    .line 471
    if-gez v1, :cond_19

    .line 472
    .line 473
    const-wide/32 v18, 0x493e0

    .line 474
    .line 475
    .line 476
    :cond_19
    sput-wide v18, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 477
    .line 478
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 479
    .line 480
    monitor-enter v1

    .line 481
    :try_start_5
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 482
    .line 483
    check-cast v2, Ljava/util/HashSet;

    .line 484
    .line 485
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 486
    .line 487
    .line 488
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 489
    .line 490
    invoke-static {v3, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 491
    .line 492
    .line 493
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 494
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 495
    .line 496
    monitor-enter v2

    .line 497
    :try_start_6
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 500
    .line 501
    .line 502
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-static {v13, v1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 505
    .line 506
    .line 507
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 508
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 509
    .line 510
    monitor-enter v1

    .line 511
    :try_start_7
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 514
    .line 515
    .line 516
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-static {v4, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 519
    .line 520
    .line 521
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    .line 523
    .line 524
    .line 525
    goto :goto_11

    .line 526
    :catchall_2
    move-exception v0

    .line 527
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 528
    throw v0

    .line 529
    :catchall_3
    move-exception v0

    .line 530
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 531
    throw v0

    .line 532
    :catchall_4
    move-exception v0

    .line 533
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 534
    throw v0

    .line 535
    :cond_1a
    sput-wide v14, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 536
    .line 537
    const-wide/32 v1, 0x493e0

    .line 538
    .line 539
    .line 540
    sput-wide v1, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 541
    .line 542
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 543
    .line 544
    monitor-enter v1

    .line 545
    :try_start_b
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 546
    .line 547
    check-cast v2, Ljava/util/HashSet;

    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 550
    .line 551
    .line 552
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    .line 554
    .line 555
    .line 556
    :goto_11
    return-void

    .line 557
    :catchall_5
    move-exception v0

    .line 558
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 559
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v1, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 53
    .line 54
    new-instance v1, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 67
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 74
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 83
    .line 84
    invoke-direct {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 88
    .line 89
    new-instance v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 95
    .line 96
    new-instance v4, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v5, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 107
    .line 108
    new-instance v5, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 109
    .line 110
    invoke-direct {v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 114
    .line 115
    new-instance v6, Ljava/lang/Object;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 121
    .line 122
    new-instance v6, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 128
    .line 129
    new-instance v6, Ljava/lang/Object;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 135
    .line 136
    new-instance v6, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 142
    .line 143
    new-instance v6, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 149
    .line 150
    new-instance v7, Landroid/content/IntentFilter;

    .line 151
    .line 152
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 156
    .line 157
    new-instance v7, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    invoke-direct {v7, p0, v8}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    .line 161
    .line 162
    .line 163
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    .line 164
    .line 165
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 178
    .line 179
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 180
    .line 181
    const/4 v9, 0x1

    .line 182
    invoke-direct {v8, p0, v9}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    .line 183
    .line 184
    .line 185
    iget-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 186
    .line 187
    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 191
    .line 192
    invoke-direct {v8, p0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    .line 193
    .line 194
    .line 195
    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 196
    .line 197
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    .line 198
    .line 199
    invoke-direct {v8, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    monitor-enter v0

    .line 203
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 209
    .line 210
    .line 211
    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 219
    .line 220
    .line 221
    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 227
    .line 228
    .line 229
    const-string/jumbo p1, "com.sec.spp.push"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    const-string/jumbo p1, "com.sec.chaton"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    const-string/jumbo p1, "com.facebook.katana"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    const-string/jumbo p1, "com.twitter.android"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    const-string/jumbo p1, "com.facebook.orca"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    const-string/jumbo p1, "com.kakao.talk"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    const-string/jumbo p1, "com.google.android.apps.plus"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    const-string/jumbo p1, "com.mobilesrepublic.appygeek"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    const-string/jumbo p1, "mnn.Android"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    const-string/jumbo p1, "com.google.android.apps.maps"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSyncBlockList()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSync3PlusBlockList()V

    .line 293
    .line 294
    .line 295
    const-string/jumbo p1, "com.tencent.mobileqq"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string/jumbo p1, "com.sohu.inputmethod.sogou"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string/jumbo p1, "com.eg.android.AlipayGphone"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string/jumbo p1, "com.alibaba.android.rimet"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string/jumbo p1, "com.baidu.map.location"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_1

    .line 334
    .line 335
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Ljava/lang/String;

    .line 340
    .line 341
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 342
    .line 343
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_0

    .line 348
    .line 349
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_0

    .line 355
    :catchall_0
    move-exception p0

    .line 356
    goto/16 :goto_5

    .line 357
    .line 358
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_3

    .line 369
    .line 370
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    check-cast v1, Ljava/lang/String;

    .line 375
    .line 376
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 377
    .line 378
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_2

    .line 383
    .line 384
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 385
    .line 386
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_1

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 391
    .line 392
    const-string/jumbo v1, "com.samsung.location"

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 401
    .line 402
    .line 403
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_4

    .line 414
    .line 415
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Ljava/lang/String;

    .line 420
    .line 421
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    goto :goto_2

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 428
    .line 429
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_5

    .line 438
    .line 439
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Ljava/lang/String;

    .line 444
    .line 445
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto :goto_3

    .line 451
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-ge v7, p1, :cond_6

    .line 458
    .line 459
    const-string p1, "AppSyncInfo"

    .line 460
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    const-string v2, "<TargetPackages> "

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v2, ": "

    .line 475
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    check-cast v2, Ljava/lang/String;

    .line 486
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
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    add-int/lit8 v7, v7, 0x1

    .line 498
    .line 499
    goto :goto_4

    .line 500
    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 501
    .line 502
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 503
    .line 504
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 508
    .line 509
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    .line 510
    .line 511
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 512
    .line 513
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    .line 515
    .line 516
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 517
    .line 518
    const-string/jumbo v1, "com.facebook.services"

    .line 519
    .line 520
    .line 521
    check-cast p1, Ljava/util/HashSet;

    .line 522
    .line 523
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 527
    .line 528
    const-string/jumbo v1, "com.facebook.katana"

    .line 529
    .line 530
    .line 531
    check-cast p1, Ljava/util/HashSet;

    .line 532
    .line 533
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 537
    .line 538
    const-string/jumbo v1, "com.facebook.orca"

    .line 539
    .line 540
    .line 541
    check-cast p1, Ljava/util/HashSet;

    .line 542
    .line 543
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 547
    .line 548
    const-string/jumbo v1, "com.facebook.pages.app"

    .line 549
    .line 550
    .line 551
    check-cast p1, Ljava/util/HashSet;

    .line 552
    .line 553
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 557
    .line 558
    const-string/jumbo v1, "com.facebook.appmanager"

    .line 559
    .line 560
    .line 561
    check-cast p1, Ljava/util/HashSet;

    .line 562
    .line 563
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 567
    .line 568
    const-string/jumbo v1, "com.facebook.system"

    .line 569
    .line 570
    .line 571
    check-cast p1, Ljava/util/HashSet;

    .line 572
    .line 573
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 577
    .line 578
    const-string/jumbo v1, "com.whatsapp"

    .line 579
    .line 580
    .line 581
    check-cast p1, Ljava/util/HashSet;

    .line 582
    .line 583
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 587
    .line 588
    const-string/jumbo v1, "com.instagram.android"

    .line 589
    .line 590
    .line 591
    check-cast p1, Ljava/util/HashSet;

    .line 592
    .line 593
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 597
    .line 598
    const-string/jumbo v1, "com.skype.raider"

    .line 599
    .line 600
    .line 601
    check-cast p1, Ljava/util/HashSet;

    .line 602
    .line 603
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 607
    .line 608
    const-string/jumbo v1, "com.microsoft.skydrive"

    .line 609
    .line 610
    .line 611
    check-cast p1, Ljava/util/HashSet;

    .line 612
    .line 613
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 617
    .line 618
    const-string/jumbo p1, "com.samsung.android.opencalendar"

    .line 619
    .line 620
    .line 621
    check-cast p0, Ljava/util/HashSet;

    .line 622
    .line 623
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 628
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    throw p0
.end method

.method public static addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public static getPackageTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "<AppSyncInfo>"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "mCharging: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 20
    .line 21
    const-string/jumbo v3, "mScreenOn: "

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 29
    .line 30
    const-string v3, "SUSP_THRE: "

    .line 31
    .line 32
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 37
    .line 38
    const-string v4, "INEXACT_WIN: "

    .line 39
    .line 40
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "  <AppSync3 Allowlist>"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const-string v3, "   (AppSync) "

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "   (AppSync) ---------"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v2, "  <AppSync3 TargetList>"

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_1

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v2, "  <AppSync3 Blocklist>"

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v2, "  <AppSync3p Blocklist>"

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public final getWindowLength()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isAdjustableAlarm(IIJJJLjava/lang/String;)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p7

    .line 3
    .line 4
    move-object/from16 v3, p9

    .line 5
    .line 6
    sget-wide v4, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 7
    .line 8
    const-wide/16 v6, 0x0

    .line 9
    .line 10
    cmp-long v4, v4, v6

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-lez v4, :cond_10

    .line 14
    .line 15
    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_10

    .line 20
    .line 21
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    :try_start_0
    iget-object v8, v0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    invoke-virtual {v8, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :cond_1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    and-int/2addr v4, v8

    .line 49
    if-lez v4, :cond_2

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    check-cast v4, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_2
    if-nez v3, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 87
    .line 88
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_10

    .line 93
    .line 94
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 95
    .line 96
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_5
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const-class v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 113
    .line 114
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    invoke-virtual {v9, v4, v3, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 125
    .line 126
    .line 127
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    const/16 v9, 0xa

    .line 129
    .line 130
    if-gt v4, v9, :cond_10

    .line 131
    .line 132
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 137
    .line 138
    invoke-virtual {v9, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_6

    .line 143
    .line 144
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_8

    .line 155
    .line 156
    :cond_6
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_8

    .line 167
    .line 168
    :cond_7
    :goto_2
    move v4, p1

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 171
    .line 172
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v4, Ljava/util/HashSet;

    .line 177
    .line 178
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_7

    .line 183
    .line 184
    iget-object v4, v0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_10

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_3
    if-gt v4, v8, :cond_9

    .line 198
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 200
    .line 201
    .line 202
    move-result-wide v9

    .line 203
    goto :goto_4

    .line 204
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v9

    .line 208
    :goto_4
    sub-long v9, p3, v9

    .line 209
    .line 210
    sget-wide v11, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 211
    .line 212
    cmp-long v4, v9, v11

    .line 213
    .line 214
    if-ltz v4, :cond_a

    .line 215
    .line 216
    move v0, v8

    .line 217
    goto :goto_8

    .line 218
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    iget-object v9, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 225
    .line 226
    if-eqz v9, :cond_d

    .line 227
    .line 228
    if-eqz v0, :cond_d

    .line 229
    .line 230
    invoke-static {v4, v3}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    const/4 v10, -0x1

    .line 235
    invoke-static {v10, v3}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    monitor-enter v9

    .line 240
    :try_start_2
    check-cast v0, Ljava/util/HashSet;

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_c

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_b

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_b
    move v0, v5

    .line 256
    goto :goto_6

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto :goto_7

    .line 259
    :cond_c
    :goto_5
    move v0, v8

    .line 260
    :goto_6
    monitor-exit v9

    .line 261
    goto :goto_8

    .line 262
    :goto_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    throw v0

    .line 264
    :cond_d
    move v0, v5

    .line 265
    :goto_8
    if-eqz v0, :cond_10

    .line 266
    .line 267
    cmp-long v0, p5, v6

    .line 268
    .line 269
    if-ltz v0, :cond_e

    .line 270
    .line 271
    sget-wide v3, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 272
    .line 273
    cmp-long v3, p5, v3

    .line 274
    .line 275
    if-ltz v3, :cond_f

    .line 276
    .line 277
    :cond_e
    if-gez v0, :cond_10

    .line 278
    .line 279
    cmp-long v0, v1, v6

    .line 280
    .line 281
    if-lez v0, :cond_10

    .line 282
    .line 283
    long-to-double v0, v1

    .line 284
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 285
    .line 286
    mul-double/2addr v0, v2

    .line 287
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 288
    .line 289
    long-to-double v2, v2

    .line 290
    cmpg-double v0, v0, v2

    .line 291
    .line 292
    if-gez v0, :cond_10

    .line 293
    .line 294
    :cond_f
    return v8

    .line 295
    :catch_1
    :cond_10
    :goto_9
    return v5
.end method

.method public final updateSuspiciousTags()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_2
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    throw p0

    .line 37
    :catchall_2
    move-exception p0

    .line 38
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 39
    throw p0
.end method
