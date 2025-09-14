.class public final Lcom/android/server/BootReceiver$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BootReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isLockedBootCompleted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "MP"

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v6, 0x1

    .line 7
    iget-boolean v0, v1, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    .line 8
    .line 9
    const-string v7, "BootReceiver"

    .line 10
    .line 11
    if-eqz v0, :cond_32

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 14
    .line 15
    sget v8, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    const-string v8, "/cache/log"

    .line 23
    .line 24
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v8, Lcom/android/server/BootReceiver$2;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    array-length v8, v0

    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    array-length v8, v0

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_0
    if-ge v9, v8, :cond_3

    .line 45
    .line 46
    aget-object v10, v0, v9

    .line 47
    .line 48
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v12, "/data/log/"

    .line 61
    .line 62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v13, "Move from /cache/log/ to "

    .line 82
    .line 83
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10, v11}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/2addr v9, v6

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    :goto_2
    const-string v0, "No dumpstate files found in /cache/log"

    .line 108
    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v9, "Can\'t move "

    .line 116
    .line 117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_4
    iget-object v8, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string v0, "/cache/log/eRR.p"

    .line 141
    .line 142
    const-string v9, "/data/system/users/service/data/eRR.p"

    .line 143
    .line 144
    invoke-static {v0, v9}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v0, "sys.fs.checkpoint"

    .line 148
    .line 149
    .line 150
    const-string v9, ""

    .line 151
    .line 152
    invoke-static {v0, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    const-string v11, "1"

    .line 157
    .line 158
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const/4 v12, 0x0

    .line 163
    if-eqz v10, :cond_4

    .line 164
    .line 165
    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    const-string/jumbo v0, "ro.boottime.resetreason"

    .line 169
    .line 170
    .line 171
    const-wide/16 v13, 0x0

    .line 172
    .line 173
    invoke-static {v0, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v15

    .line 177
    cmp-long v0, v15, v13

    .line 178
    .line 179
    const-string/jumbo v10, "sys.boot.errp"

    .line 180
    .line 181
    .line 182
    const-string v13, "\n"

    .line 183
    .line 184
    const-string/jumbo v14, "ctl.restart"

    .line 185
    .line 186
    .line 187
    const-string/jumbo v15, "resetreason"

    .line 188
    .line 189
    .line 190
    const-string v3, "0"

    .line 191
    .line 192
    const-string/jumbo v12, "sys.reset_reason"

    .line 193
    .line 194
    .line 195
    if-nez v0, :cond_15

    .line 196
    .line 197
    new-instance v0, Ljava/io/File;

    .line 198
    .line 199
    const-string v6, "/proc/reset_reason"

    .line 200
    .line 201
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v6, Ljava/io/File;

    .line 205
    .line 206
    const-string v5, "/proc/store_lastkmsg"

    .line 207
    .line 208
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_5

    .line 216
    .line 217
    const-string v0, "Can\'t find PROC_RESET_REASON"

    .line 218
    .line 219
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto/16 :goto_e

    .line 223
    .line 224
    :cond_5
    const/16 v5, 0x400

    .line 225
    .line 226
    :try_start_1
    invoke-static {v0, v5, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    goto :goto_5

    .line 231
    :catch_1
    move-exception v0

    .line 232
    move-object v5, v0

    .line 233
    const-string/jumbo v0, "readTextFile error"

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    :goto_5
    if-nez v0, :cond_6

    .line 241
    .line 242
    const-string/jumbo v0, "resetString is null"

    .line 243
    .line 244
    .line 245
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    const-string v0, "NA"

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_6
    const-string/jumbo v5, "resetString = "

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-lt v5, v4, :cond_7

    .line 266
    .line 267
    const/4 v5, 0x0

    .line 268
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    const-string v6, "K|"

    .line 277
    .line 278
    const-string v4, "N|"

    .line 279
    .line 280
    if-nez v5, :cond_b

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    sparse-switch v5, :sswitch_data_0

    .line 290
    .line 291
    .line 292
    :goto_7
    const/4 v5, -0x1

    .line 293
    goto :goto_8

    .line 294
    :sswitch_0
    const-string v5, "RP"

    .line 295
    .line 296
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-nez v5, :cond_8

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_8
    const/4 v5, 0x2

    .line 304
    goto :goto_8

    .line 305
    :sswitch_1
    const-string v5, "NP"

    .line 306
    .line 307
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-nez v5, :cond_9

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_9
    const/4 v5, 0x1

    .line 315
    goto :goto_8

    .line 316
    :sswitch_2
    const-string v5, "BP"

    .line 317
    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-nez v5, :cond_a

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_a
    const/4 v5, 0x0

    .line 326
    :goto_8
    packed-switch v5, :pswitch_data_0

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const/4 v4, 0x1

    .line 337
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 349
    .line 350
    :goto_9
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_e

    .line 354
    .line 355
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    sparse-switch v5, :sswitch_data_1

    .line 363
    .line 364
    .line 365
    :goto_a
    const/4 v5, -0x1

    .line 366
    goto :goto_b

    .line 367
    :sswitch_3
    const-string v5, "WP"

    .line 368
    .line 369
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-nez v5, :cond_c

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_c
    const/4 v5, 0x6

    .line 377
    goto :goto_b

    .line 378
    :sswitch_4
    const-string v5, "TP"

    .line 379
    .line 380
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-nez v5, :cond_d

    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_d
    const/4 v5, 0x5

    .line 388
    goto :goto_b

    .line 389
    :sswitch_5
    const-string v5, "SP"

    .line 390
    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-nez v5, :cond_e

    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_e
    const/4 v5, 0x4

    .line 399
    goto :goto_b

    .line 400
    :sswitch_6
    const-string v5, "PP"

    .line 401
    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-nez v5, :cond_f

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_f
    const/4 v5, 0x3

    .line 410
    goto :goto_b

    .line 411
    :sswitch_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-nez v5, :cond_10

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_10
    const/4 v5, 0x2

    .line 419
    goto :goto_b

    .line 420
    :sswitch_8
    const-string v5, "KP"

    .line 421
    .line 422
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-nez v5, :cond_11

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_11
    const/4 v5, 0x1

    .line 430
    goto :goto_b

    .line 431
    :sswitch_9
    const-string v5, "DP"

    .line 432
    .line 433
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-nez v5, :cond_12

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_12
    const/4 v5, 0x0

    .line 441
    :goto_b
    packed-switch v5, :pswitch_data_1

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const/4 v5, 0x0

    .line 452
    sput v5, Lcom/android/server/BootReceiver;->reset:I

    .line 453
    .line 454
    :goto_c
    const/4 v4, 0x1

    .line 455
    goto :goto_d

    .line 456
    :pswitch_1
    const/4 v5, 0x0

    .line 457
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    sput v5, Lcom/android/server/BootReceiver;->reset:I

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :pswitch_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const/4 v4, 0x1

    .line 475
    sput v4, Lcom/android/server/BootReceiver;->reset:I

    .line 476
    .line 477
    :goto_d
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 478
    .line 479
    if-eq v0, v4, :cond_13

    .line 480
    .line 481
    invoke-virtual {v8}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_14

    .line 486
    .line 487
    :cond_13
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :cond_14
    :goto_e
    move-object/from16 v20, v1

    .line 491
    .line 492
    move-object v6, v2

    .line 493
    move-object/from16 v23, v10

    .line 494
    .line 495
    move-object/from16 v19, v11

    .line 496
    .line 497
    move-object/from16 v21, v13

    .line 498
    .line 499
    const/4 v1, 0x0

    .line 500
    move-object v13, v3

    .line 501
    goto/16 :goto_1a

    .line 502
    .line 503
    :cond_15
    invoke-virtual {v8}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_1a

    .line 508
    .line 509
    invoke-static {v12, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_1a

    .line 518
    .line 519
    invoke-static {v10, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const/4 v4, 0x0

    .line 523
    new-array v0, v4, [Ljava/lang/String;

    .line 524
    .line 525
    const-string v5, "/data/log/prev_dump.log"

    .line 526
    .line 527
    invoke-static {v5, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    new-array v6, v4, [Ljava/lang/String;

    .line 532
    .line 533
    move-object/from16 v19, v11

    .line 534
    .line 535
    const-string v11, "/data/log/unknown_platform_reset.log"

    .line 536
    .line 537
    invoke-static {v11, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    move-object/from16 v20, v1

    .line 542
    .line 543
    new-array v1, v4, [Ljava/nio/file/LinkOption;

    .line 544
    .line 545
    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_19

    .line 550
    .line 551
    const/4 v1, 0x1

    .line 552
    :try_start_2
    new-array v4, v1, [Ljava/nio/file/OpenOption;

    .line 553
    .line 554
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 555
    .line 556
    const/16 v18, 0x0

    .line 557
    .line 558
    aput-object v1, v4, v18

    .line 559
    .line 560
    invoke-static {v0, v4}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 561
    .line 562
    .line 563
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 564
    move-object/from16 v21, v13

    .line 565
    .line 566
    const/4 v4, 0x2

    .line 567
    :try_start_3
    new-array v13, v4, [Ljava/nio/file/OpenOption;

    .line 568
    .line 569
    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 570
    .line 571
    aput-object v4, v13, v18

    .line 572
    .line 573
    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 574
    .line 575
    const/16 v17, 0x1

    .line 576
    .line 577
    aput-object v4, v13, v17

    .line 578
    .line 579
    invoke-static {v6, v13}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 580
    .line 581
    .line 582
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 583
    move-object v6, v2

    .line 584
    move-object v13, v3

    .line 585
    :try_start_4
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 586
    .line 587
    .line 588
    move-result-wide v2

    .line 589
    long-to-int v0, v2

    .line 590
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 595
    .line 596
    .line 597
    new-instance v2, Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    const-string v22, "UTF-8"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 604
    .line 605
    move-object/from16 v23, v10

    .line 606
    .line 607
    :try_start_5
    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 608
    .line 609
    .line 610
    move-result-object v10

    .line 611
    invoke-direct {v2, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 615
    .line 616
    .line 617
    const-string v0, "Chip ID : .*?\n|androidboot[.]ap_serial=.*? |androidboot[.]serialno=.*? "

    .line 618
    .line 619
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    invoke-virtual {v2, v0, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 632
    .line 633
    .line 634
    const-string v0, "PF_UR case. Leave prev_dump.log as unknown_platform_reset.log"

    .line 635
    .line 636
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    new-instance v0, Ljava/io/File;

    .line 640
    .line 641
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    new-instance v3, Ljava/io/File;

    .line 645
    .line 646
    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 650
    .line 651
    .line 652
    const-string v0, "Out of memory: Kill(ed)? process [0-9]+ [(]system_server[)]|Sending (SIGKILL|SIGTERM) to process system_server"

    .line 653
    .line 654
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 663
    .line 664
    .line 665
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 666
    const-string/jumbo v3, "sys.reset_info"

    .line 667
    .line 668
    .line 669
    if-eqz v2, :cond_16

    .line 670
    .line 671
    :try_start_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    const/16 v5, 0x5b

    .line 680
    .line 681
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    const/4 v5, 0x0

    .line 686
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    goto :goto_10

    .line 694
    :catchall_0
    move-exception v0

    .line 695
    :goto_f
    move-object v2, v0

    .line 696
    goto :goto_12

    .line 697
    :cond_16
    const-string/jumbo v0, "unknown"

    .line 698
    .line 699
    .line 700
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 701
    .line 702
    .line 703
    :goto_10
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 704
    .line 705
    .line 706
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 707
    .line 708
    .line 709
    goto :goto_17

    .line 710
    :catch_2
    move-exception v0

    .line 711
    goto :goto_16

    .line 712
    :catchall_1
    move-exception v0

    .line 713
    :goto_11
    move-object v2, v0

    .line 714
    goto :goto_14

    .line 715
    :catchall_2
    move-exception v0

    .line 716
    move-object/from16 v23, v10

    .line 717
    .line 718
    goto :goto_f

    .line 719
    :goto_12
    if-eqz v4, :cond_17

    .line 720
    .line 721
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 722
    .line 723
    .line 724
    goto :goto_13

    .line 725
    :catchall_3
    move-exception v0

    .line 726
    move-object v3, v0

    .line 727
    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 728
    .line 729
    .line 730
    :cond_17
    :goto_13
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 731
    :catchall_4
    move-exception v0

    .line 732
    move-object v6, v2

    .line 733
    move-object v13, v3

    .line 734
    move-object/from16 v23, v10

    .line 735
    .line 736
    goto :goto_11

    .line 737
    :goto_14
    if-eqz v1, :cond_18

    .line 738
    .line 739
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 740
    .line 741
    .line 742
    goto :goto_15

    .line 743
    :catchall_5
    move-exception v0

    .line 744
    move-object v1, v0

    .line 745
    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 746
    .line 747
    .line 748
    :cond_18
    :goto_15
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 749
    :catch_3
    move-exception v0

    .line 750
    move-object v6, v2

    .line 751
    move-object/from16 v23, v10

    .line 752
    .line 753
    move-object/from16 v21, v13

    .line 754
    .line 755
    move-object v13, v3

    .line 756
    :goto_16
    const-string v1, "Failed to copy prev_dump.log file."

    .line 757
    .line 758
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    .line 760
    .line 761
    goto :goto_17

    .line 762
    :cond_19
    move-object v6, v2

    .line 763
    move-object/from16 v23, v10

    .line 764
    .line 765
    move-object/from16 v21, v13

    .line 766
    .line 767
    move-object v13, v3

    .line 768
    :goto_17
    const-string v0, "P|UR"

    .line 769
    .line 770
    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :goto_18
    const/4 v1, 0x2

    .line 777
    goto :goto_19

    .line 778
    :cond_1a
    move-object/from16 v20, v1

    .line 779
    .line 780
    move-object v6, v2

    .line 781
    move-object/from16 v23, v10

    .line 782
    .line 783
    move-object/from16 v19, v11

    .line 784
    .line 785
    move-object/from16 v21, v13

    .line 786
    .line 787
    move-object v13, v3

    .line 788
    goto :goto_18

    .line 789
    :goto_19
    sput v1, Lcom/android/server/BootReceiver;->reset:I

    .line 790
    .line 791
    const/4 v1, 0x0

    .line 792
    :goto_1a
    invoke-static {v12, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    if-nez v2, :cond_1b

    .line 797
    .line 798
    goto/16 :goto_29

    .line 799
    .line 800
    :cond_1b
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 801
    .line 802
    const/4 v1, 0x1

    .line 803
    if-eq v0, v1, :cond_1c

    .line 804
    .line 805
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_20

    .line 814
    .line 815
    :cond_1c
    const-string v0, "We start saveLastkmsg.waitUntilSaveLastkmsgDone( timeout = 30 )"

    .line 816
    .line 817
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 821
    .line 822
    if-nez v0, :cond_1d

    .line 823
    .line 824
    new-instance v0, Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 825
    .line 826
    invoke-direct {v0, v8}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    .line 827
    .line 828
    .line 829
    iput-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 830
    .line 831
    :cond_1d
    const-string/jumbo v0, "saveLastkmsg null and start()"

    .line 832
    .line 833
    .line 834
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .line 836
    .line 837
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 840
    .line 841
    .line 842
    iget-object v0, v8, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    const/4 v1, 0x0

    .line 848
    :goto_1b
    const/16 v3, 0x1e

    .line 849
    .line 850
    if-ge v1, v3, :cond_1f

    .line 851
    .line 852
    :try_start_d
    iget-boolean v3, v0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 853
    .line 854
    if-eqz v3, :cond_1e

    .line 855
    .line 856
    move v3, v1

    .line 857
    goto :goto_1c

    .line 858
    :cond_1e
    const-wide/16 v3, 0x3e8

    .line 859
    .line 860
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 861
    .line 862
    .line 863
    const/4 v3, 0x1

    .line 864
    add-int/2addr v1, v3

    .line 865
    goto :goto_1b

    .line 866
    :catch_4
    move-exception v0

    .line 867
    const-string/jumbo v1, "waitUntilSaveLastkmsgDone error"

    .line 868
    .line 869
    .line 870
    invoke-static {v0, v1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    :cond_1f
    const/4 v3, -0x1

    .line 874
    :goto_1c
    const-string v0, "We waited saveLastkmsg() for "

    .line 875
    .line 876
    const-string/jumbo v1, "s "

    .line 877
    .line 878
    .line 879
    invoke-static {v3, v0, v1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    :cond_20
    :try_start_e
    invoke-virtual {v8, v2}, Lcom/android/server/BootReceiver;->getDumpFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    iput-object v0, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 887
    .line 888
    const/4 v1, 0x0

    .line 889
    goto :goto_1d

    .line 890
    :catch_5
    const/4 v1, 0x0

    .line 891
    iput-object v1, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 892
    .line 893
    :goto_1d
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 894
    .line 895
    if-nez v0, :cond_22

    .line 896
    .line 897
    iget-boolean v0, v8, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 898
    .line 899
    if-eqz v0, :cond_21

    .line 900
    .line 901
    goto :goto_1e

    .line 902
    :cond_21
    const/4 v0, 0x0

    .line 903
    goto :goto_21

    .line 904
    :cond_22
    :goto_1e
    const-string/jumbo v0, "ro.boot.hardware"

    .line 905
    .line 906
    .line 907
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    sget v1, Lcom/android/server/BootReceiver;->reset:I

    .line 912
    .line 913
    const/4 v3, 0x1

    .line 914
    if-ne v1, v3, :cond_26

    .line 915
    .line 916
    const-string/jumbo v1, "exynos"

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    if-eq v1, v3, :cond_25

    .line 924
    .line 925
    const-string/jumbo v1, "s5e"

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    if-ne v1, v3, :cond_23

    .line 933
    .line 934
    goto :goto_1f

    .line 935
    :cond_23
    const-string/jumbo v1, "qcom"

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-ne v1, v3, :cond_24

    .line 943
    .line 944
    const-string v9, "KERNEL_Q"

    .line 945
    .line 946
    goto :goto_20

    .line 947
    :cond_24
    const-string/jumbo v1, "mt"

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    if-ne v0, v3, :cond_27

    .line 955
    .line 956
    const-string v9, "KERNEL_M"

    .line 957
    .line 958
    goto :goto_20

    .line 959
    :cond_25
    :goto_1f
    const-string v9, "KERNEL_L"

    .line 960
    .line 961
    goto :goto_20

    .line 962
    :cond_26
    const/4 v3, 0x2

    .line 963
    if-ne v1, v3, :cond_27

    .line 964
    .line 965
    const-string v9, "PLATFORM"

    .line 966
    .line 967
    :cond_27
    :goto_20
    const/4 v0, 0x1

    .line 968
    :goto_21
    iget-boolean v1, v8, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 969
    .line 970
    const-string/jumbo v3, "persist.sys.isrb_havesentlog"

    .line 971
    .line 972
    .line 973
    const-string v4, "ISRB_BOOT"

    .line 974
    .line 975
    if-eqz v1, :cond_29

    .line 976
    .line 977
    const-wide/32 v5, 0x493e0

    .line 978
    .line 979
    .line 980
    :try_start_f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 981
    .line 982
    .line 983
    const-string/jumbo v1, "leave rescueparty errp"

    .line 984
    .line 985
    .line 986
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .line 988
    .line 989
    move-object/from16 v1, v23

    .line 990
    .line 991
    invoke-static {v1, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-eqz v1, :cond_28

    .line 1006
    .line 1007
    const/4 v1, 0x0

    .line 1008
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v5
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6

    .line 1012
    :try_start_10
    invoke-static {}, Lcom/android/server/RescueParty;->setISRBmode()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1013
    .line 1014
    .line 1015
    goto :goto_22

    .line 1016
    :cond_28
    :try_start_11
    const-string/jumbo v1, "persist.sys.rescue_level"

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v1, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1020
    .line 1021
    .line 1022
    :catch_6
    :cond_29
    const/4 v5, 0x0

    .line 1023
    :catch_7
    :goto_22
    if-nez v5, :cond_31

    .line 1024
    .line 1025
    const-string v1, ","

    .line 1026
    .line 1027
    if-eqz v0, :cond_2e

    .line 1028
    .line 1029
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    if-eqz v0, :cond_2a

    .line 1038
    .line 1039
    const/4 v4, 0x0

    .line 1040
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v5

    .line 1044
    goto :goto_23

    .line 1045
    :cond_2a
    const/4 v5, 0x0

    .line 1046
    :goto_23
    if-nez v5, :cond_2e

    .line 1047
    .line 1048
    const-string/jumbo v0, "sys.members.installed"

    .line 1049
    .line 1050
    .line 1051
    const-string v3, "UNKNOWN"

    .line 1052
    .line 1053
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    const-string/jumbo v3, "true"

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v0

    .line 1064
    if-eqz v0, :cond_2c

    .line 1065
    .line 1066
    iget-object v0, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1067
    .line 1068
    if-nez v0, :cond_2b

    .line 1069
    .line 1070
    goto/16 :goto_24

    .line 1071
    .line 1072
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    .line 1073
    .line 1074
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    const-string/jumbo v3, "com.samsung.android.voc.action.SYSTEM_ERROR"

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    .line 1082
    .line 1083
    const-string/jumbo v3, "com.samsung.android.voc"

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    .line 1088
    .line 1089
    const-string/jumbo v3, "com.samsung.android.voc.extra.SYSTEM_TYPE"

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    .line 1094
    .line 1095
    const-string/jumbo v3, "com.samsung.android.voc.extra.RESET_REASON"

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    .line 1100
    .line 1101
    sget-object v3, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 1102
    .line 1103
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v4

    .line 1107
    const-string/jumbo v5, "com.samsung.android.voc.extra.TAG"

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    .line 1112
    .line 1113
    const-string/jumbo v4, "com.samsung.android.voc.extra.LOG_PATH"

    .line 1114
    .line 1115
    .line 1116
    iget-object v5, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1117
    .line 1118
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    .line 1120
    .line 1121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    const-string v5, "Send to Samsung Members, system type: "

    .line 1124
    .line 1125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    const-string v5, ", reset_reason: "

    .line 1132
    .line 1133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    const-string v5, ", tag: "

    .line 1140
    .line 1141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    const-string v3, ", log file: "

    .line 1152
    .line 1153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    iget-object v3, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1157
    .line 1158
    move-object/from16 v5, v21

    .line 1159
    .line 1160
    invoke-static {v4, v3, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    const-string v3, "android.permission.DUMP"

    .line 1164
    .line 1165
    move-object/from16 v4, v20

    .line 1166
    .line 1167
    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    goto/16 :goto_25

    .line 1171
    .line 1172
    :cond_2c
    move-object/from16 v4, v20

    .line 1173
    .line 1174
    const-string v0, "IntentOnly"

    .line 1175
    .line 1176
    const-string v3, "Ext"

    .line 1177
    .line 1178
    const-string v5, "CFailLogUpload"

    .line 1179
    .line 1180
    const-string v6, "DiagMon"

    .line 1181
    .line 1182
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v10

    .line 1186
    const-string/jumbo v11, "samsung_errorlog_agree"

    .line 1187
    .line 1188
    .line 1189
    const/4 v14, 0x0

    .line 1190
    invoke-static {v10, v11, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1191
    .line 1192
    .line 1193
    move-result v10

    .line 1194
    const/4 v11, 0x1

    .line 1195
    if-ne v10, v11, :cond_2f

    .line 1196
    .line 1197
    iget-object v10, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1198
    .line 1199
    if-nez v10, :cond_2d

    .line 1200
    .line 1201
    goto/16 :goto_25

    .line 1202
    .line 1203
    :cond_2d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    const-string/jumbo v11, "send broadcast intent to diagmon : "

    .line 1206
    .line 1207
    .line 1208
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    iget-object v11, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1212
    .line 1213
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v10

    .line 1220
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .line 1222
    .line 1223
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    iget-object v11, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1229
    .line 1230
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v14

    .line 1237
    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v10

    .line 1244
    iput-object v10, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1245
    .line 1246
    const-string v10, ";"

    .line 1247
    .line 1248
    invoke-static {v2, v10, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v9

    .line 1252
    iput-object v9, v8, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 1253
    .line 1254
    new-instance v9, Landroid/content/Intent;

    .line 1255
    .line 1256
    const-string/jumbo v10, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    .line 1257
    .line 1258
    .line 1259
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    new-instance v10, Landroid/os/Bundle;

    .line 1263
    .line 1264
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1265
    .line 1266
    .line 1267
    const-string/jumbo v11, "com.sec.android.diagmonagent"

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    .line 1272
    .line 1273
    const/16 v11, 0x20

    .line 1274
    .line 1275
    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    .line 1277
    .line 1278
    :try_start_12
    new-instance v14, Landroid/os/Bundle;

    .line 1279
    .line 1280
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v10, v6, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v14

    .line 1290
    new-instance v15, Landroid/os/Bundle;

    .line 1291
    .line 1292
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v14, v5, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v14

    .line 1302
    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v14

    .line 1306
    const-string v15, "ServiceID"

    .line 1307
    .line 1308
    const-string/jumbo v11, "ny6xfd3iri"

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v11

    .line 1318
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v11

    .line 1322
    new-instance v14, Landroid/os/Bundle;

    .line 1323
    .line 1324
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v11, v3, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v11

    .line 1334
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v11

    .line 1338
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v11

    .line 1342
    const-string v14, "ClientV"

    .line 1343
    .line 1344
    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 1345
    .line 1346
    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v11

    .line 1353
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v11

    .line 1357
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v11

    .line 1361
    const-string v14, "UiMode"

    .line 1362
    .line 1363
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v11

    .line 1370
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v11

    .line 1374
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v11

    .line 1378
    const-string v13, "ResultCode"

    .line 1379
    .line 1380
    iget-object v14, v8, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 1381
    .line 1382
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v11

    .line 1389
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v11

    .line 1393
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v11

    .line 1397
    const-string v13, "WifiOnlyFeature"

    .line 1398
    .line 1399
    move-object/from16 v14, v19

    .line 1400
    .line 1401
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v11

    .line 1408
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v11

    .line 1412
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v11

    .line 1416
    const-string v13, "EventID"

    .line 1417
    .line 1418
    iget-object v15, v8, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1419
    .line 1420
    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v11

    .line 1427
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v11

    .line 1431
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v3

    .line 1435
    const-string v11, "Tag"

    .line 1436
    .line 1437
    sget-object v13, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 1438
    .line 1439
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v13

    .line 1443
    invoke-virtual {v3, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v3

    .line 1450
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    new-instance v11, Landroid/os/Bundle;

    .line 1455
    .line 1456
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    const-string v11, "IntentOnlyMode"

    .line 1475
    .line 1476
    invoke-virtual {v3, v11, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v3

    .line 1491
    const-string v11, "Agree"

    .line 1492
    .line 1493
    const-string v13, "D"

    .line 1494
    .line 1495
    invoke-virtual {v3, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v3

    .line 1502
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v3

    .line 1506
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    const-string v3, "LogPath"

    .line 1511
    .line 1512
    iget-object v5, v8, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1513
    .line 1514
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    const-string/jumbo v0, "uploadMO"

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1521
    .line 1522
    .line 1523
    const/16 v0, 0x20

    .line 1524
    .line 1525
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1529
    .line 1530
    .line 1531
    goto :goto_25

    .line 1532
    :catch_8
    move-exception v0

    .line 1533
    const-string v3, "Exception while sending a bug report."

    .line 1534
    .line 1535
    invoke-static {v7, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1536
    .line 1537
    .line 1538
    goto :goto_25

    .line 1539
    :cond_2e
    :goto_24
    move-object/from16 v4, v20

    .line 1540
    .line 1541
    :cond_2f
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1544
    .line 1545
    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    const-string v5, "\"REASON\":\""

    .line 1549
    .line 1550
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    const-string v5, "\""

    .line 1557
    .line 1558
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v3

    .line 1565
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    .line 1567
    .line 1568
    :try_start_13
    invoke-static {v2}, Lcom/android/server/BootReceiver;->GetResetLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v2

    .line 1572
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1573
    .line 1574
    .line 1575
    move-result v3

    .line 1576
    if-nez v3, :cond_30

    .line 1577
    .line 1578
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v1

    .line 1582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    goto :goto_26

    .line 1586
    :catch_9
    move-exception v0

    .line 1587
    goto :goto_27

    .line 1588
    :cond_30
    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    invoke-static {v4, v0}, Lcom/android/server/BootReceiver;->sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_9

    .line 1593
    .line 1594
    .line 1595
    goto :goto_28

    .line 1596
    :goto_27
    const-string/jumbo v1, "get reset log error"

    .line 1597
    .line 1598
    .line 1599
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    .line 1601
    .line 1602
    :cond_31
    :goto_28
    invoke-static {}, Lcom/android/server/BootReceiver;->waitUntileRRpDone()V

    .line 1603
    .line 1604
    .line 1605
    const/4 v1, 0x0

    .line 1606
    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    :goto_29
    return-void

    .line 1610
    :cond_32
    :try_start_14
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 1611
    .line 1612
    iget-object v2, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 1613
    .line 1614
    invoke-static {v0, v2}, Lcom/android/server/BootReceiver;->-$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 1615
    .line 1616
    .line 1617
    goto :goto_2a

    .line 1618
    :catch_a
    move-exception v0

    .line 1619
    const-string v2, "Can\'t log boot events"

    .line 1620
    .line 1621
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    .line 1623
    .line 1624
    :goto_2a
    :try_start_15
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    .line 1625
    .line 1626
    iget-object v1, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    .line 1627
    .line 1628
    sget v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1629
    .line 1630
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1631
    .line 1632
    .line 1633
    const-string/jumbo v0, "com.google.android.systemupdater"

    .line 1634
    .line 1635
    .line 1636
    const-string/jumbo v2, "com.google.android.systemupdater.SystemUpdateReceiver"

    .line 1637
    .line 1638
    .line 1639
    invoke-static {v1, v0, v2}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 1640
    .line 1641
    .line 1642
    goto :goto_2b

    .line 1643
    :catch_b
    move-exception v0

    .line 1644
    const-string v1, "Can\'t remove old update packages"

    .line 1645
    .line 1646
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    .line 1648
    .line 1649
    :goto_2b
    return-void

    .line 1650
    nop

    .line 1651
    :sswitch_data_0
    .sparse-switch
        0x84e -> :sswitch_2
        0x9c2 -> :sswitch_1
        0xa3e -> :sswitch_0
    .end sparse-switch

    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    :sswitch_data_1
    .sparse-switch
        0x88c -> :sswitch_9
        0x965 -> :sswitch_8
        0x9a3 -> :sswitch_7
        0xa00 -> :sswitch_6
        0xa5d -> :sswitch_5
        0xa7c -> :sswitch_4
        0xad9 -> :sswitch_3
    .end sparse-switch

    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
