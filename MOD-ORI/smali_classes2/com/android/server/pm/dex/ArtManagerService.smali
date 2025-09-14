.class public final Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "ArtManagerService"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 12
    .line 13
    const/16 v2, 0xf

    .line 14
    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v2, "Compilation reason not configured for TRON logging: "

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const-class p0, Landroid/content/pm/dex/ArtManagerInternal;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/content/pm/dex/ArtManagerInternal;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static getCompilationReasonTronValue(Ljava/lang/String;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    const/16 v4, 0x13

    .line 10
    .line 11
    const/16 v5, 0x12

    .line 12
    .line 13
    const/16 v6, 0x11

    .line 14
    .line 15
    const/16 v7, 0x10

    .line 16
    .line 17
    const/16 v9, 0xe

    .line 18
    .line 19
    const/16 v10, 0xd

    .line 20
    .line 21
    const/16 v11, 0xc

    .line 22
    .line 23
    const/16 v12, 0xb

    .line 24
    .line 25
    const/16 v13, 0xa

    .line 26
    .line 27
    const/16 v14, 0x9

    .line 28
    .line 29
    const/16 v15, 0x8

    .line 30
    .line 31
    const/16 v16, 0x7

    .line 32
    .line 33
    const/16 v17, 0x6

    .line 34
    .line 35
    const/16 v18, 0x5

    .line 36
    .line 37
    const/16 v19, 0x4

    .line 38
    .line 39
    const/16 v20, 0x2

    .line 40
    .line 41
    const/16 v21, 0x1

    .line 42
    .line 43
    const/16 v22, 0x0

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/16 v23, -0x1

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v24

    .line 54
    sparse-switch v24, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :sswitch_0
    const-string v8, "install-bulk-downgraded"

    .line 60
    .line 61
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    const/16 v23, 0x17

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :sswitch_1
    const-string v8, "install-fast"

    .line 74
    .line 75
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_1
    move/from16 v23, v1

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :sswitch_2
    const-string v8, "install-bulk"

    .line 88
    .line 89
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_2
    move/from16 v23, v2

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :sswitch_3
    const-string v8, "install"

    .line 102
    .line 103
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_3
    move/from16 v23, v3

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :sswitch_4
    const-string/jumbo v8, "post-boot"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_4
    move/from16 v23, v4

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :sswitch_5
    const-string v8, "install-bulk-secondary-downgraded-dm"

    .line 131
    .line 132
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_5
    move/from16 v23, v5

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :sswitch_6
    const-string v8, "install-bulk-downgraded-dm"

    .line 145
    .line 146
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_6
    move/from16 v23, v6

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_7
    const-string v8, "install-bulk-secondary-downgraded"

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_7

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    move/from16 v23, v7

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :sswitch_8
    const-string v8, "install-dm"

    .line 173
    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_8

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_8
    const/16 v23, 0xf

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :sswitch_9
    const-string v8, "cmdline"

    .line 187
    .line 188
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_9

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_9
    move/from16 v23, v9

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_a
    const-string v8, "error"

    .line 201
    .line 202
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_a

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_a
    move/from16 v23, v10

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :sswitch_b
    const-string v8, "inactive"

    .line 215
    .line 216
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_b

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_b
    move/from16 v23, v11

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :sswitch_c
    const-string v8, "install-bulk-secondary"

    .line 229
    .line 230
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_c

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_c
    move/from16 v23, v12

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :sswitch_d
    const-string/jumbo v8, "vdex"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_d

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_d
    move/from16 v23, v13

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :sswitch_e
    const-string v8, "first-boot"

    .line 258
    .line 259
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_e

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_e
    move/from16 v23, v14

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :sswitch_f
    const-string v8, "install-bulk-dm"

    .line 272
    .line 273
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_f

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_f
    move/from16 v23, v15

    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :sswitch_10
    const-string v8, "boot-after-ota"

    .line 286
    .line 287
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_10

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_10
    move/from16 v23, v16

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :sswitch_11
    const-string/jumbo v8, "shared"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_11

    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_11
    move/from16 v23, v17

    .line 309
    .line 310
    goto :goto_0

    .line 311
    :sswitch_12
    const-string v8, "install-bulk-secondary-dm"

    .line 312
    .line 313
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-nez v0, :cond_12

    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_12
    move/from16 v23, v18

    .line 321
    .line 322
    goto :goto_0

    .line 323
    :sswitch_13
    const-string v8, "boot-after-mainline-update"

    .line 324
    .line 325
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_13

    .line 330
    .line 331
    goto :goto_0

    .line 332
    :cond_13
    move/from16 v23, v19

    .line 333
    .line 334
    goto :goto_0

    .line 335
    :sswitch_14
    const-string/jumbo v8, "prebuilt"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_14

    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_14
    const/16 v23, 0x3

    .line 346
    .line 347
    goto :goto_0

    .line 348
    :sswitch_15
    const-string v8, "ab-ota"

    .line 349
    .line 350
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_15

    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_15
    move/from16 v23, v20

    .line 358
    .line 359
    goto :goto_0

    .line 360
    :sswitch_16
    const-string v8, "install-fast-dm"

    .line 361
    .line 362
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_16

    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_16
    move/from16 v23, v21

    .line 370
    .line 371
    goto :goto_0

    .line 372
    :sswitch_17
    const-string v8, "bg-dexopt"

    .line 373
    .line 374
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_17

    .line 379
    .line 380
    goto :goto_0

    .line 381
    :cond_17
    move/from16 v23, v22

    .line 382
    .line 383
    :goto_0
    packed-switch v23, :pswitch_data_0

    .line 384
    .line 385
    .line 386
    return v21

    .line 387
    :pswitch_0
    return v10

    .line 388
    :pswitch_1
    return v13

    .line 389
    :pswitch_2
    return v12

    .line 390
    :pswitch_3
    return v19

    .line 391
    :pswitch_4
    return v2

    .line 392
    :pswitch_5
    return v4

    .line 393
    :pswitch_6
    return v5

    .line 394
    :pswitch_7
    return v9

    .line 395
    :pswitch_8
    return v14

    .line 396
    :pswitch_9
    return v1

    .line 397
    :pswitch_a
    return v22

    .line 398
    :pswitch_b
    return v16

    .line 399
    :pswitch_c
    return v11

    .line 400
    :pswitch_d
    const/16 v0, 0x18

    .line 401
    .line 402
    return v0

    .line 403
    :pswitch_e
    return v20

    .line 404
    :pswitch_f
    return v7

    .line 405
    :pswitch_10
    return v3

    .line 406
    :pswitch_11
    return v15

    .line 407
    :pswitch_12
    return v6

    .line 408
    :pswitch_13
    const/16 v0, 0x19

    .line 409
    .line 410
    return v0

    .line 411
    :pswitch_14
    const/16 v0, 0x17

    .line 412
    .line 413
    return v0

    .line 414
    :pswitch_15
    return v17

    .line 415
    :pswitch_16
    const/16 v0, 0xf

    .line 416
    .line 417
    return v0

    .line 418
    :pswitch_17
    return v18

    .line 419
    :sswitch_data_0
    .sparse-switch
        -0x754fea3c -> :sswitch_17
        -0x6d771298 -> :sswitch_16
        -0x54fec890 -> :sswitch_15
        -0x4d00be45 -> :sswitch_14
        -0x47de9523 -> :sswitch_13
        -0x43162b55 -> :sswitch_12
        -0x35db539b -> :sswitch_11
        -0x23098d70 -> :sswitch_10
        -0x1f55cf0e -> :sswitch_f
        -0xc5e4811 -> :sswitch_e
        0x3727e1 -> :sswitch_d
        0x10534eb -> :sswitch_c
        0x1785c6b -> :sswitch_b
        0x5c4d208 -> :sswitch_a
        0x34bd042e -> :sswitch_9
        0x35aae5fb -> :sswitch_8
        0x5ce564b1 -> :sswitch_7
        0x68b4487e -> :sswitch_6
        0x6ac14725 -> :sswitch_5
        0x749a27ff -> :sswitch_4
        0x74ae259b -> :sswitch_3
        0x76889604 -> :sswitch_2
        0x768a1d4e -> :sswitch_1
        0x778489f8 -> :sswitch_0
    .end sparse-switch

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final checkAndroidPermissions(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    .line 4
    .line 5
    const-string v2, "ArtManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-class v1, Landroid/app/AppOpsManager;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/AppOpsManager;

    .line 19
    .line 20
    const/16 v1, 0x2b

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    .line 37
    .line 38
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return p2
.end method

.method public final isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    if-ne p1, p0, :cond_3

    .line 21
    .line 22
    const-string p1, "dalvik.vm.profilebootclasspath"

    .line 23
    .line 24
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const-string/jumbo p2, "persist.device_config.runtime_native_boot.profilebootclasspath"

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    .line 45
    move v2, p0

    .line 46
    :cond_2
    return v2

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "Invalid profile type:"

    .line 50
    .line 51
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    return p0
.end method

.method public final postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Failed to snapshot profile for "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " with error: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "ArtManagerService"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Successfully snapshot profile for "

    .line 6
    .line 7
    const-string v1, "ArtManagerService"

    .line 8
    .line 9
    invoke-static {v0, p3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "package"

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x7d0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-ne p1, v8, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 40
    .line 41
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 42
    .line 43
    invoke-interface {v2, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-object v2, v3

    .line 49
    :goto_0
    if-nez v2, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 55
    .line 56
    and-int/2addr v2, v7

    .line 57
    if-ne v2, v7, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    :goto_1
    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    .line 66
    :try_start_1
    invoke-interface {p4, v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    .line 69
    :catch_1
    return-void

    .line 70
    :cond_6
    :goto_2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    if-ne p1, v8, :cond_7

    .line 74
    .line 75
    move v0, v8

    .line 76
    goto :goto_3

    .line 77
    :cond_7
    move v0, v6

    .line 78
    :goto_3
    if-nez v0, :cond_8

    .line 79
    .line 80
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    :cond_8
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p5

    .line 90
    if-eqz p5, :cond_14

    .line 91
    .line 92
    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 93
    .line 94
    if-eqz p1, :cond_9

    .line 95
    .line 96
    const-string p1, "Requested snapshot for "

    .line 97
    .line 98
    const-string p5, ":"

    .line 99
    .line 100
    const-string v2, "ArtManagerService"

    .line 101
    .line 102
    invoke-static {p1, p2, p5, p3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_9
    if-eqz v0, :cond_c

    .line 106
    .line 107
    const-string p1, "android"

    .line 108
    .line 109
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 114
    .line 115
    .line 116
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3, p2}, Lcom/android/server/art/ArtManagerLocal;->snapshotBootImageProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;)Landroid/os/ParcelFileDescriptor;

    .line 122
    .line 123
    .line 124
    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    if-eqz p2, :cond_a

    .line 126
    .line 127
    :try_start_4
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    .line 129
    .line 130
    :cond_a
    invoke-virtual {p0, p4, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_9

    .line 134
    .line 135
    :catchall_0
    move-exception p3

    .line 136
    if-eqz p2, :cond_b

    .line 137
    .line 138
    :try_start_5
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catchall_1
    move-exception p2

    .line 143
    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_b
    :goto_4
    throw p3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_6 .. :try_end_6} :catch_2

    .line 147
    :catch_2
    invoke-virtual {p0, v7, p4, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_9

    .line 151
    .line 152
    :cond_c
    :try_start_7
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 153
    .line 154
    if-nez p1, :cond_d

    .line 155
    .line 156
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 165
    .line 166
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 167
    .line 168
    invoke-interface {p1, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 172
    goto :goto_5

    .line 173
    :catch_3
    move-object p1, v3

    .line 174
    :goto_5
    if-nez p1, :cond_e

    .line 175
    .line 176
    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_e
    iget-object p5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 181
    .line 182
    invoke-virtual {p5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p5

    .line 186
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p5

    .line 190
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-nez p5, :cond_10

    .line 197
    .line 198
    if-eqz v0, :cond_10

    .line 199
    .line 200
    array-length v1, v0

    .line 201
    sub-int/2addr v1, v8

    .line 202
    :goto_6
    if-ltz v1, :cond_10

    .line 203
    .line 204
    aget-object v2, v0, v1

    .line 205
    .line 206
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_f

    .line 211
    .line 212
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 213
    .line 214
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 215
    .line 216
    aget-object v3, p1, v1

    .line 217
    .line 218
    move p5, v8

    .line 219
    goto :goto_7

    .line 220
    :cond_f
    add-int/lit8 v1, v1, -0x1

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_10
    :goto_7
    if-nez p5, :cond_11

    .line 224
    .line 225
    invoke-virtual {p0, v8, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_11
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 234
    .line 235
    .line 236
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_8 .. :try_end_8} :catch_4

    .line 237
    :try_start_9
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    invoke-virtual {p3, p1, p2, v3}, Lcom/android/server/art/ArtManagerLocal;->snapshotAppProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 242
    .line 243
    .line 244
    move-result-object p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 245
    if-eqz p1, :cond_12

    .line 246
    .line 247
    :try_start_a
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_a .. :try_end_a} :catch_4

    .line 248
    .line 249
    .line 250
    :cond_12
    invoke-virtual {p0, p4, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :catchall_2
    move-exception p3

    .line 255
    if-eqz p1, :cond_13

    .line 256
    .line 257
    :try_start_b
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :catchall_3
    move-exception p1

    .line 262
    :try_start_c
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    :cond_13
    :goto_8
    throw p3
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_c .. :try_end_c} :catch_4

    .line 266
    :catch_4
    invoke-virtual {p0, v7, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :catch_5
    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_9
    return-void

    .line 274
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 275
    .line 276
    const-string p2, "Runtime profiling is not enabled for "

    .line 277
    .line 278
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p0
.end method
