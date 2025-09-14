.class public final Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v5, "DeviceStorageMonitorService"

    .line 9
    .line 10
    const-wide v6, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v9, 0x64

    .line 18
    .line 19
    const/16 v11, 0x14

    .line 20
    .line 21
    const/4 v12, 0x2

    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    if-eq v1, v12, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-class v2, Landroid/os/storage/StorageManager;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 40
    .line 41
    const-string/jumbo v2, "storage_native_boot"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v13, "storage_threshold_percent_high"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v13, v11}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 76
    .line 77
    .line 78
    move-result-wide v14

    .line 79
    invoke-virtual {v13}, Ljava/io/File;->getTotalSpace()J

    .line 80
    .line 81
    .line 82
    move-result-wide v16

    .line 83
    int-to-long v3, v2

    .line 84
    mul-long v16, v16, v3

    .line 85
    .line 86
    div-long v16, v16, v9

    .line 87
    .line 88
    cmp-long v3, v14, v16

    .line 89
    .line 90
    if-gez v3, :cond_1

    .line 91
    .line 92
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .line 108
    .line 109
    :try_start_1
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 110
    .line 111
    iget-object v13, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 112
    .line 113
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    .line 116
    :try_start_2
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 117
    .line 118
    const/16 v13, 0x900

    .line 119
    .line 120
    invoke-virtual {v3, v0, v6, v7, v13}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    .line 123
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object v3, v0

    .line 129
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    move-object v4, v0

    .line 135
    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    throw v3
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 145
    .line 146
    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-wide/32 v2, 0x2255100

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void

    .line 163
    :cond_4
    iget-object v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-class v3, Landroid/os/storage/StorageManager;

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v3, v0

    .line 176
    check-cast v3, Landroid/os/storage/StorageManager;

    .line 177
    .line 178
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_3e

    .line 197
    .line 198
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v14, v0

    .line 203
    check-cast v14, Landroid/os/storage/VolumeInfo;

    .line 204
    .line 205
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 210
    .line 211
    const-wide/16 v18, 0x5

    .line 212
    .line 213
    mul-long v16, v16, v18

    .line 214
    .line 215
    div-long v16, v16, v9

    .line 216
    .line 217
    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 218
    .line 219
    const-wide/16 v9, 0x1

    .line 220
    .line 221
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v22

    .line 225
    sget-wide v24, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 226
    .line 227
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v26

    .line 231
    const-wide/16 v28, 0x20

    .line 232
    .line 233
    mul-long v26, v26, v28

    .line 234
    .line 235
    cmp-long v24, v24, v26

    .line 236
    .line 237
    const-wide/16 v25, 0x400

    .line 238
    .line 239
    const-wide v30, 0x402999999999999aL    # 12.8

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    const-wide/16 v32, 0x200

    .line 245
    .line 246
    const-wide/16 v34, 0x100

    .line 247
    .line 248
    const-wide v36, 0x401999999999999aL    # 6.4

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    const-wide/16 v38, 0x80

    .line 254
    .line 255
    const-wide/16 v40, 0x40

    .line 256
    .line 257
    const-wide/16 v42, 0x0

    .line 258
    .line 259
    if-gtz v24, :cond_5

    .line 260
    .line 261
    move-object/from16 p0, v13

    .line 262
    .line 263
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v12

    .line 267
    long-to-double v12, v12

    .line 268
    const-wide v44, 0x3ff999999999999aL    # 1.6

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :goto_3
    mul-double v12, v12, v44

    .line 274
    .line 275
    :goto_4
    double-to-long v12, v12

    .line 276
    goto :goto_7

    .line 277
    :cond_5
    move-object/from16 p0, v13

    .line 278
    .line 279
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 280
    .line 281
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v44

    .line 285
    mul-long v44, v44, v40

    .line 286
    .line 287
    cmp-long v12, v12, v44

    .line 288
    .line 289
    if-gtz v12, :cond_6

    .line 290
    .line 291
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 292
    .line 293
    .line 294
    move-result-wide v12

    .line 295
    long-to-double v12, v12

    .line 296
    const-wide v44, 0x400999999999999aL    # 3.2

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_6
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 303
    .line 304
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 305
    .line 306
    .line 307
    move-result-wide v44

    .line 308
    mul-long v44, v44, v38

    .line 309
    .line 310
    cmp-long v12, v12, v44

    .line 311
    .line 312
    if-gtz v12, :cond_7

    .line 313
    .line 314
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 315
    .line 316
    .line 317
    move-result-wide v12

    .line 318
    :goto_5
    long-to-double v12, v12

    .line 319
    mul-double v12, v12, v36

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_7
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 323
    .line 324
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 325
    .line 326
    .line 327
    move-result-wide v44

    .line 328
    mul-long v44, v44, v34

    .line 329
    .line 330
    cmp-long v12, v12, v44

    .line 331
    .line 332
    if-gtz v12, :cond_8

    .line 333
    .line 334
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v12

    .line 338
    goto :goto_5

    .line 339
    :cond_8
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 340
    .line 341
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 342
    .line 343
    .line 344
    move-result-wide v44

    .line 345
    mul-long v44, v44, v32

    .line 346
    .line 347
    cmp-long v12, v12, v44

    .line 348
    .line 349
    if-gtz v12, :cond_9

    .line 350
    .line 351
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 352
    .line 353
    .line 354
    move-result-wide v12

    .line 355
    :goto_6
    long-to-double v12, v12

    .line 356
    mul-double v12, v12, v30

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_9
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 360
    .line 361
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 362
    .line 363
    .line 364
    move-result-wide v44

    .line 365
    mul-long v44, v44, v25

    .line 366
    .line 367
    cmp-long v12, v12, v44

    .line 368
    .line 369
    if-gtz v12, :cond_a

    .line 370
    .line 371
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 372
    .line 373
    .line 374
    move-result-wide v12

    .line 375
    goto :goto_6

    .line 376
    :cond_a
    move-wide/from16 v12, v42

    .line 377
    .line 378
    :goto_7
    sget-wide v44, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 379
    .line 380
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 381
    .line 382
    .line 383
    move-result-wide v46

    .line 384
    mul-long v46, v46, v28

    .line 385
    .line 386
    cmp-long v24, v44, v46

    .line 387
    .line 388
    if-gtz v24, :cond_b

    .line 389
    .line 390
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 391
    .line 392
    .line 393
    move-result-wide v9

    .line 394
    mul-long v9, v9, v18

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_b
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 398
    .line 399
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 400
    .line 401
    .line 402
    move-result-wide v44

    .line 403
    mul-long v44, v44, v40

    .line 404
    .line 405
    cmp-long v24, v27, v44

    .line 406
    .line 407
    if-gtz v24, :cond_c

    .line 408
    .line 409
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 410
    .line 411
    .line 412
    move-result-wide v9

    .line 413
    long-to-double v9, v9

    .line 414
    mul-double v9, v9, v36

    .line 415
    .line 416
    :goto_8
    double-to-long v9, v9

    .line 417
    goto :goto_b

    .line 418
    :cond_c
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 419
    .line 420
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 421
    .line 422
    .line 423
    move-result-wide v36

    .line 424
    mul-long v36, v36, v38

    .line 425
    .line 426
    cmp-long v24, v27, v36

    .line 427
    .line 428
    if-gtz v24, :cond_d

    .line 429
    .line 430
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 431
    .line 432
    .line 433
    move-result-wide v9

    .line 434
    :goto_9
    long-to-double v9, v9

    .line 435
    mul-double v9, v9, v30

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_d
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 439
    .line 440
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 441
    .line 442
    .line 443
    move-result-wide v36

    .line 444
    mul-long v36, v36, v34

    .line 445
    .line 446
    cmp-long v24, v27, v36

    .line 447
    .line 448
    if-gtz v24, :cond_e

    .line 449
    .line 450
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 451
    .line 452
    .line 453
    move-result-wide v9

    .line 454
    goto :goto_9

    .line 455
    :cond_e
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 456
    .line 457
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 458
    .line 459
    .line 460
    move-result-wide v29

    .line 461
    mul-long v29, v29, v32

    .line 462
    .line 463
    cmp-long v24, v27, v29

    .line 464
    .line 465
    const-wide v27, 0x403999999999999aL    # 25.6

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    if-gtz v24, :cond_f

    .line 471
    .line 472
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 473
    .line 474
    .line 475
    move-result-wide v9

    .line 476
    :goto_a
    long-to-double v9, v9

    .line 477
    mul-double v9, v9, v27

    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_f
    sget-wide v29, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 481
    .line 482
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 483
    .line 484
    .line 485
    move-result-wide v31

    .line 486
    mul-long v31, v31, v25

    .line 487
    .line 488
    cmp-long v24, v29, v31

    .line 489
    .line 490
    if-gtz v24, :cond_10

    .line 491
    .line 492
    invoke-virtual {v0, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v9

    .line 496
    goto :goto_a

    .line 497
    :cond_10
    move-wide/from16 v9, v42

    .line 498
    .line 499
    :goto_b
    invoke-virtual {v3, v15}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    .line 500
    .line 501
    .line 502
    move-result-wide v24

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 504
    .line 505
    .line 506
    sput-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    .line 507
    .line 508
    sput-wide v24, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    .line 509
    .line 510
    sput-wide v22, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    .line 511
    .line 512
    sput-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mWarningBytes:J

    .line 513
    .line 514
    sput-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mCautionBytes:J

    .line 515
    .line 516
    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    .line 517
    .line 518
    .line 519
    move-result-wide v26

    .line 520
    const-wide/16 v28, 0x3

    .line 521
    .line 522
    mul-long v28, v28, v22

    .line 523
    .line 524
    const-wide/16 v30, 0x2

    .line 525
    .line 526
    div-long v28, v28, v30

    .line 527
    .line 528
    cmp-long v0, v26, v28

    .line 529
    .line 530
    const-string v2, "check("

    .line 531
    .line 532
    if-gez v0, :cond_11

    .line 533
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v6, ") freeStorage = "

    .line 545
    .line 546
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    .line 550
    .line 551
    .line 552
    move-result-wide v6

    .line 553
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 568
    .line 569
    :try_start_6
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 573
    move-wide/from16 v32, v12

    .line 574
    .line 575
    mul-long v11, v22, v30

    .line 576
    .line 577
    :try_start_7
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 578
    .line 579
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 580
    .line 581
    const/4 v7, 0x0

    .line 582
    invoke-virtual {v0, v7, v6, v11, v12}, Lcom/android/server/pm/PackageManagerService;->freeStorage(ILjava/lang/String;J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 583
    .line 584
    .line 585
    goto :goto_d

    .line 586
    :catch_2
    move-exception v0

    .line 587
    goto :goto_c

    .line 588
    :catch_3
    move-exception v0

    .line 589
    move-wide/from16 v32, v12

    .line 590
    .line 591
    :goto_c
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .line 593
    .line 594
    goto :goto_d

    .line 595
    :cond_11
    move-wide/from16 v32, v12

    .line 596
    .line 597
    :goto_d
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    iget-object v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 606
    .line 607
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    check-cast v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 612
    .line 613
    if-nez v6, :cond_12

    .line 614
    .line 615
    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 616
    .line 617
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 618
    .line 619
    .line 620
    const/4 v7, 0x0

    .line 621
    iput v7, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 622
    .line 623
    const-wide v11, 0x7fffffffffffffffL

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    iput-wide v11, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 629
    .line 630
    iget-object v13, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 631
    .line 632
    invoke-virtual {v13, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    goto :goto_e

    .line 636
    :cond_12
    const-wide v11, 0x7fffffffffffffffL

    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :goto_e
    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    .line 642
    .line 643
    .line 644
    move-result-wide v28

    .line 645
    move-object v13, v8

    .line 646
    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    .line 647
    .line 648
    .line 649
    move-result-wide v7

    .line 650
    sput-wide v28, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    .line 651
    .line 652
    sput-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 653
    .line 654
    iget-object v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

    .line 655
    .line 656
    if-eqz v15, :cond_17

    .line 657
    .line 658
    iget-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    .line 659
    .line 660
    if-eqz v11, :cond_17

    .line 661
    .line 662
    if-eqz v11, :cond_17

    .line 663
    .line 664
    iget-wide v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    .line 665
    .line 666
    cmp-long v11, v7, v11

    .line 667
    .line 668
    const/16 v12, 0xf

    .line 669
    .line 670
    if-gez v11, :cond_13

    .line 671
    .line 672
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 673
    .line 674
    .line 675
    move-result v11

    .line 676
    if-eqz v11, :cond_17

    .line 677
    .line 678
    iget-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 679
    .line 680
    if-nez v11, :cond_17

    .line 681
    .line 682
    const/4 v11, 0x1

    .line 683
    iput-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 684
    .line 685
    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    .line 686
    .line 687
    .line 688
    goto :goto_10

    .line 689
    :cond_13
    move-object v11, v13

    .line 690
    iget-wide v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    .line 691
    .line 692
    cmp-long v12, v7, v12

    .line 693
    .line 694
    if-gez v12, :cond_15

    .line 695
    .line 696
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 697
    .line 698
    .line 699
    move-result v12

    .line 700
    if-eqz v12, :cond_14

    .line 701
    .line 702
    iget-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 703
    .line 704
    if-eqz v12, :cond_14

    .line 705
    .line 706
    const/4 v12, 0x0

    .line 707
    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 708
    .line 709
    const/16 v13, 0xf

    .line 710
    .line 711
    invoke-virtual {v15, v13}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 712
    .line 713
    .line 714
    :cond_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 715
    .line 716
    .line 717
    move-result v13

    .line 718
    if-eqz v13, :cond_18

    .line 719
    .line 720
    iget-boolean v13, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 721
    .line 722
    if-nez v13, :cond_18

    .line 723
    .line 724
    const/4 v13, 0x1

    .line 725
    iput-boolean v13, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 726
    .line 727
    const/16 v13, 0x14

    .line 728
    .line 729
    invoke-virtual {v15, v13}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    .line 730
    .line 731
    .line 732
    move v12, v13

    .line 733
    goto :goto_11

    .line 734
    :cond_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 735
    .line 736
    .line 737
    move-result v13

    .line 738
    if-eqz v13, :cond_16

    .line 739
    .line 740
    iget-boolean v13, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 741
    .line 742
    if-eqz v13, :cond_16

    .line 743
    .line 744
    const/4 v12, 0x0

    .line 745
    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 746
    .line 747
    const/16 v13, 0xf

    .line 748
    .line 749
    invoke-virtual {v15, v13}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 750
    .line 751
    .line 752
    goto :goto_f

    .line 753
    :cond_16
    const/4 v12, 0x0

    .line 754
    :goto_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 755
    .line 756
    .line 757
    move-result v13

    .line 758
    if-eqz v13, :cond_18

    .line 759
    .line 760
    iget-boolean v13, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 761
    .line 762
    if-eqz v13, :cond_18

    .line 763
    .line 764
    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 765
    .line 766
    const/16 v12, 0x14

    .line 767
    .line 768
    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 769
    .line 770
    .line 771
    goto :goto_11

    .line 772
    :cond_17
    :goto_10
    move-object v11, v13

    .line 773
    :cond_18
    const/16 v12, 0x14

    .line 774
    .line 775
    :goto_11
    cmp-long v15, v7, v16

    .line 776
    .line 777
    if-gtz v15, :cond_19

    .line 778
    .line 779
    sget-boolean v16, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    .line 780
    .line 781
    if-nez v16, :cond_19

    .line 782
    .line 783
    const/4 v12, 0x1

    .line 784
    sput-boolean v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    .line 785
    .line 786
    invoke-virtual {v1, v14, v12, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateExhaustionBroadcasts(Landroid/os/storage/VolumeInfo;ZI)V

    .line 787
    .line 788
    .line 789
    goto :goto_12

    .line 790
    :cond_19
    const/4 v12, 0x1

    .line 791
    if-lez v15, :cond_1a

    .line 792
    .line 793
    sget-boolean v15, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    .line 794
    .line 795
    if-ne v15, v12, :cond_1a

    .line 796
    .line 797
    const/4 v12, 0x0

    .line 798
    sput-boolean v12, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    .line 799
    .line 800
    invoke-virtual {v1, v14, v12, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateExhaustionBroadcasts(Landroid/os/storage/VolumeInfo;ZI)V

    .line 801
    .line 802
    .line 803
    :cond_1a
    :goto_12
    iget v13, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 804
    .line 805
    iget v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 806
    .line 807
    const/4 v12, -0x1

    .line 808
    move-object/from16 v16, v3

    .line 809
    .line 810
    if-eq v15, v12, :cond_1b

    .line 811
    .line 812
    iget v9, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 813
    .line 814
    move v13, v12

    .line 815
    goto :goto_14

    .line 816
    :cond_1b
    cmp-long v15, v7, v24

    .line 817
    .line 818
    if-gtz v15, :cond_1c

    .line 819
    .line 820
    const/4 v9, 0x4

    .line 821
    goto :goto_14

    .line 822
    :cond_1c
    cmp-long v15, v7, v22

    .line 823
    .line 824
    if-gtz v15, :cond_1d

    .line 825
    .line 826
    :goto_13
    const/4 v9, 0x3

    .line 827
    goto :goto_14

    .line 828
    :cond_1d
    sget-object v15, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 829
    .line 830
    invoke-virtual {v15, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result v15

    .line 834
    if-eqz v15, :cond_1e

    .line 835
    .line 836
    sget-wide v22, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    .line 837
    .line 838
    cmp-long v15, v7, v22

    .line 839
    .line 840
    if-gez v15, :cond_1e

    .line 841
    .line 842
    goto :goto_13

    .line 843
    :cond_1e
    cmp-long v15, v7, v32

    .line 844
    .line 845
    if-gtz v15, :cond_1f

    .line 846
    .line 847
    const/4 v9, 0x2

    .line 848
    goto :goto_14

    .line 849
    :cond_1f
    cmp-long v9, v7, v9

    .line 850
    .line 851
    if-gtz v9, :cond_20

    .line 852
    .line 853
    const/4 v9, 0x1

    .line 854
    goto :goto_14

    .line 855
    :cond_20
    const/4 v9, 0x0

    .line 856
    :goto_14
    const-string v10, ")"

    .line 857
    .line 858
    const-string v15, ", newLevel:"

    .line 859
    .line 860
    const-string v12, ") oldLevel:"

    .line 861
    .line 862
    if-eqz v9, :cond_21

    .line 863
    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    move-object/from16 v24, v11

    .line 870
    .line 871
    iget-object v11, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 872
    .line 873
    invoke-static {v13, v11, v12, v15, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const-string v11, " (usableBytes="

    .line 880
    .line 881
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-static {v3, v10, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    :goto_15
    move-object v3, v10

    .line 891
    goto :goto_16

    .line 892
    :cond_21
    move-object/from16 v24, v11

    .line 893
    .line 894
    goto :goto_15

    .line 895
    :goto_16
    iget-wide v10, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 896
    .line 897
    sub-long/2addr v10, v7

    .line 898
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 899
    .line 900
    .line 901
    move-result-wide v10

    .line 902
    sget-wide v31, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 903
    .line 904
    cmp-long v10, v10, v31

    .line 905
    .line 906
    if-gtz v10, :cond_23

    .line 907
    .line 908
    if-eq v13, v9, :cond_22

    .line 909
    .line 910
    goto :goto_17

    .line 911
    :cond_22
    move-object/from16 v32, v0

    .line 912
    .line 913
    move-object/from16 v31, v2

    .line 914
    .line 915
    move-object/from16 v25, v3

    .line 916
    .line 917
    goto :goto_18

    .line 918
    :cond_23
    :goto_17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v10

    .line 922
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 923
    .line 924
    .line 925
    move-result-object v11

    .line 926
    move-object/from16 v25, v3

    .line 927
    .line 928
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    move-object/from16 v31, v2

    .line 933
    .line 934
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    move-object/from16 v32, v0

    .line 939
    .line 940
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    filled-new-array {v10, v11, v3, v2, v0}, [Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    const/16 v2, 0xabd

    .line 949
    .line 950
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 951
    .line 952
    .line 953
    iput-wide v7, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 954
    .line 955
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 956
    .line 957
    const-string/jumbo v2, "updateBroadcasts("

    .line 958
    .line 959
    .line 960
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 964
    .line 965
    invoke-static {v13, v3, v12, v15, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    const-string v3, ", seq:"

    .line 972
    .line 973
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 987
    .line 988
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v7

    .line 992
    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-result v7

    .line 996
    const-string/jumbo v10, "mUsableBytes : "

    .line 997
    .line 998
    .line 999
    const-string v11, ", mUsableFileNode : "

    .line 1000
    .line 1001
    const-string/jumbo v12, "seq"

    .line 1002
    .line 1003
    .line 1004
    if-nez v7, :cond_24

    .line 1005
    .line 1006
    move-object/from16 v33, v0

    .line 1007
    .line 1008
    move-object/from16 v37, v3

    .line 1009
    .line 1010
    move-object v13, v5

    .line 1011
    move-object v0, v6

    .line 1012
    move-object/from16 v23, v12

    .line 1013
    .line 1014
    move v6, v4

    .line 1015
    goto/16 :goto_1d

    .line 1016
    .line 1017
    :cond_24
    new-instance v7, Landroid/os/StatFs;

    .line 1018
    .line 1019
    iget-object v15, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1020
    .line 1021
    invoke-direct {v7, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v7, Landroid/content/Intent;

    .line 1025
    .line 1026
    const-string v15, "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_ON"

    .line 1027
    .line 1028
    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    const/high16 v15, 0x4000000

    .line 1032
    .line 1033
    invoke-virtual {v7, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v7

    .line 1037
    const/high16 v8, 0x1000000

    .line 1038
    .line 1039
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v7

    .line 1043
    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v7

    .line 1047
    new-instance v8, Landroid/content/Intent;

    .line 1048
    .line 1049
    move-object/from16 v33, v0

    .line 1050
    .line 1051
    const-string v0, "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_OFF"

    .line 1052
    .line 1053
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    const/4 v8, 0x1

    .line 1065
    invoke-static {v8, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v36

    .line 1069
    if-eqz v36, :cond_26

    .line 1070
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    iget-object v8, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1077
    .line 1078
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    const-string v8, ") sending intent : ACTION_DEVICE_STORAGE_CAUTION_ON"

    .line 1082
    .line 1083
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    move-object v8, v5

    .line 1099
    move-object/from16 v36, v6

    .line 1100
    .line 1101
    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1102
    .line 1103
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1110
    .line 1111
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1126
    .line 1127
    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1128
    .line 1129
    .line 1130
    :cond_25
    move-object v6, v2

    .line 1131
    move-object/from16 v37, v3

    .line 1132
    .line 1133
    goto :goto_19

    .line 1134
    :cond_26
    move-object v8, v5

    .line 1135
    move-object/from16 v36, v6

    .line 1136
    .line 1137
    const/4 v5, 0x1

    .line 1138
    invoke-static {v5, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v6

    .line 1142
    if-eqz v6, :cond_25

    .line 1143
    .line 1144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1150
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_CAUTION_OFF"

    .line 1155
    .line 1156
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v5

    .line 1163
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    move-object v6, v2

    .line 1172
    move-object/from16 v37, v3

    .line 1173
    .line 1174
    sget-wide v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1175
    .line 1176
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    sget-wide v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1183
    .line 1184
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v2

    .line 1198
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1199
    .line 1200
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v2

    .line 1207
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1208
    .line 1209
    .line 1210
    :goto_19
    new-instance v0, Landroid/content/Intent;

    .line 1211
    .line 1212
    const-string v2, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_ON"

    .line 1213
    .line 1214
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v0, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    const/high16 v2, 0x1000000

    .line 1222
    .line 1223
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    new-instance v2, Landroid/content/Intent;

    .line 1232
    .line 1233
    const-string v3, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_OFF"

    .line 1234
    .line 1235
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v2, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v2

    .line 1246
    const/4 v3, 0x2

    .line 1247
    invoke-static {v3, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v5

    .line 1251
    if-eqz v5, :cond_27

    .line 1252
    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1259
    .line 1260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    const-string v3, ") sending intent : ACTION_DEVICE_STORAGE_WARNING_ON"

    .line 1264
    .line 1265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v2

    .line 1272
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    move-object v3, v8

    .line 1281
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1282
    .line 1283
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1290
    .line 1291
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v2

    .line 1298
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1306
    .line 1307
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_1a

    .line 1311
    :cond_27
    move-object v3, v8

    .line 1312
    const/4 v5, 0x2

    .line 1313
    invoke-static {v5, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v7

    .line 1317
    if-eqz v7, :cond_28

    .line 1318
    .line 1319
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    iget-object v7, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1325
    .line 1326
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    .line 1328
    .line 1329
    const-string v7, ") sending intent : ACTION_DEVICE_STORAGE_WARNING_OFF"

    .line 1330
    .line 1331
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1347
    .line 1348
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1355
    .line 1356
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v5

    .line 1363
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v5

    .line 1370
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1371
    .line 1372
    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1380
    .line 1381
    .line 1382
    :cond_28
    :goto_1a
    new-instance v0, Landroid/content/Intent;

    .line 1383
    .line 1384
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 1385
    .line 1386
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    const/high16 v2, 0x5200000

    .line 1390
    .line 1391
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    new-instance v5, Landroid/content/Intent;

    .line 1400
    .line 1401
    const-string v7, "android.intent.action.DEVICE_STORAGE_OK"

    .line 1402
    .line 1403
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v5

    .line 1410
    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v2

    .line 1414
    const/4 v5, 0x3

    .line 1415
    invoke-static {v5, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v7

    .line 1419
    if-eqz v7, :cond_29

    .line 1420
    .line 1421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    iget-object v5, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1427
    .line 1428
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    .line 1431
    const-string v5, ") sending intent : ACTION_DEVICE_STORAGE_LOW"

    .line 1432
    .line 1433
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v2

    .line 1440
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1449
    .line 1450
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1457
    .line 1458
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1473
    .line 1474
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1475
    .line 1476
    .line 1477
    goto :goto_1b

    .line 1478
    :cond_29
    const/4 v5, 0x3

    .line 1479
    invoke-static {v5, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v5

    .line 1483
    if-eqz v5, :cond_2a

    .line 1484
    .line 1485
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    iget-object v7, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1491
    .line 1492
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    const-string v7, ") sending intent : ACTION_DEVICE_STORAGE_OK"

    .line 1496
    .line 1497
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v5

    .line 1504
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1513
    .line 1514
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    sget-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1521
    .line 1522
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v5

    .line 1529
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v5

    .line 1536
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1537
    .line 1538
    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1546
    .line 1547
    .line 1548
    :cond_2a
    :goto_1b
    new-instance v0, Landroid/content/Intent;

    .line 1549
    .line 1550
    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    .line 1551
    .line 1552
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v0, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    new-instance v2, Landroid/content/Intent;

    .line 1564
    .line 1565
    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    .line 1566
    .line 1567
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v2, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v2

    .line 1574
    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    new-instance v5, Landroid/content/Intent;

    .line 1579
    .line 1580
    const-string v7, "com.samsung.intent.action.DEVICE_STORAGE_FULL"

    .line 1581
    .line 1582
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v5

    .line 1589
    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v5

    .line 1593
    new-instance v7, Landroid/content/Intent;

    .line 1594
    .line 1595
    const-string v8, "com.samsung.intent.action.DEVICE_STORAGE_NOT_FULL"

    .line 1596
    .line 1597
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v7, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v7

    .line 1604
    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v7

    .line 1608
    const/4 v8, 0x4

    .line 1609
    invoke-static {v8, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    .line 1610
    .line 1611
    .line 1612
    move-result v15

    .line 1613
    const-string v8, "com.samsung.android.lool"

    .line 1614
    .line 1615
    move-object/from16 v23, v12

    .line 1616
    .line 1617
    const-string v12, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 1618
    .line 1619
    if-eqz v15, :cond_2c

    .line 1620
    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1627
    .line 1628
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    .line 1631
    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_FULL"

    .line 1632
    .line 1633
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v2

    .line 1640
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1644
    .line 1645
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1646
    .line 1647
    .line 1648
    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1649
    .line 1650
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1657
    .line 1658
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v2

    .line 1665
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v2

    .line 1672
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1673
    .line 1674
    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1675
    .line 1676
    .line 1677
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    invoke-virtual {v0, v12, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v0

    .line 1692
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1693
    .line 1694
    .line 1695
    :cond_2b
    move-object v13, v3

    .line 1696
    move v6, v4

    .line 1697
    goto :goto_1c

    .line 1698
    :cond_2c
    const/4 v5, 0x4

    .line 1699
    invoke-static {v5, v13, v9}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v5

    .line 1703
    if-eqz v5, :cond_2b

    .line 1704
    .line 1705
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1706
    .line 1707
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1708
    .line 1709
    .line 1710
    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1711
    .line 1712
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_NOT_FULL"

    .line 1716
    .line 1717
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v5

    .line 1724
    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1728
    .line 1729
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1730
    .line 1731
    .line 1732
    move-object v13, v3

    .line 1733
    move v6, v4

    .line 1734
    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 1735
    .line 1736
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    .line 1741
    .line 1742
    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1743
    .line 1744
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v3

    .line 1751
    invoke-virtual {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v3

    .line 1758
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1759
    .line 1760
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1768
    .line 1769
    .line 1770
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    invoke-virtual {v0, v12, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v0

    .line 1778
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1786
    .line 1787
    .line 1788
    :goto_1c
    move-object/from16 v0, v36

    .line 1789
    .line 1790
    :goto_1d
    iput v9, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 1791
    .line 1792
    new-instance v0, Landroid/os/StatFs;

    .line 1793
    .line 1794
    iget-object v2, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1795
    .line 1796
    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalFileNode()J

    .line 1800
    .line 1801
    .line 1802
    move-result-wide v2

    .line 1803
    const-wide/16 v4, 0x64

    .line 1804
    .line 1805
    div-long v7, v2, v4

    .line 1806
    .line 1807
    mul-long v18, v18, v2

    .line 1808
    .line 1809
    div-long v18, v18, v4

    .line 1810
    .line 1811
    new-instance v9, Landroid/os/StatFs;

    .line 1812
    .line 1813
    const-string v12, "/data"

    .line 1814
    .line 1815
    invoke-direct {v9, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v12

    .line 1822
    const-class v15, Landroid/os/storage/StorageManager;

    .line 1823
    .line 1824
    invoke-virtual {v12, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v12

    .line 1828
    check-cast v12, Landroid/os/storage/StorageManager;

    .line 1829
    .line 1830
    invoke-virtual {v9}, Landroid/os/StatFs;->getTotalFileNode()J

    .line 1831
    .line 1832
    .line 1833
    move-result-wide v20

    .line 1834
    invoke-virtual {v12}, Landroid/os/storage/StorageManager;->getUsedF2fsFileNode()J

    .line 1835
    .line 1836
    .line 1837
    move-result-wide v38

    .line 1838
    const-wide/16 v40, -0x1

    .line 1839
    .line 1840
    cmp-long v9, v38, v40

    .line 1841
    .line 1842
    if-nez v9, :cond_2d

    .line 1843
    .line 1844
    const-string v9, "Cannot get USED FILE NODE NUMBER!!!"

    .line 1845
    .line 1846
    invoke-static {v13, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    .line 1848
    .line 1849
    :goto_1e
    move-wide/from16 v4, v40

    .line 1850
    .line 1851
    goto :goto_1f

    .line 1852
    :cond_2d
    sub-long v40, v20, v38

    .line 1853
    .line 1854
    goto :goto_1e

    .line 1855
    :goto_1f
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1856
    .line 1857
    const-string v12, "Available File Node Number is ["

    .line 1858
    .line 1859
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1863
    .line 1864
    .line 1865
    const-string v12, "]"

    .line 1866
    .line 1867
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v9

    .line 1874
    invoke-static {v13, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    .line 1876
    .line 1877
    cmp-long v9, v4, v42

    .line 1878
    .line 1879
    if-gez v9, :cond_2e

    .line 1880
    .line 1881
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeFileNode()J

    .line 1882
    .line 1883
    .line 1884
    move-result-wide v4

    .line 1885
    :cond_2e
    sput-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    .line 1886
    .line 1887
    sput-wide v18, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    .line 1888
    .line 1889
    sput-wide v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 1890
    .line 1891
    sput-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 1892
    .line 1893
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 1894
    .line 1895
    move-object/from16 v2, v32

    .line 1896
    .line 1897
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    .line 1902
    .line 1903
    if-nez v0, :cond_2f

    .line 1904
    .line 1905
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    .line 1906
    .line 1907
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1908
    .line 1909
    .line 1910
    const/4 v3, 0x0

    .line 1911
    iput v3, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    .line 1912
    .line 1913
    iget-object v9, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 1914
    .line 1915
    invoke-virtual {v9, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    goto :goto_20

    .line 1919
    :cond_2f
    const/4 v3, 0x0

    .line 1920
    :goto_20
    iget v2, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    .line 1921
    .line 1922
    iget v9, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    .line 1923
    .line 1924
    const/4 v12, -0x1

    .line 1925
    if-eq v9, v12, :cond_30

    .line 1926
    .line 1927
    iget v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    .line 1928
    .line 1929
    move v7, v2

    .line 1930
    const/4 v2, -0x1

    .line 1931
    goto :goto_21

    .line 1932
    :cond_30
    cmp-long v7, v4, v7

    .line 1933
    .line 1934
    if-gtz v7, :cond_31

    .line 1935
    .line 1936
    const/4 v7, 0x2

    .line 1937
    goto :goto_21

    .line 1938
    :cond_31
    cmp-long v7, v4, v18

    .line 1939
    .line 1940
    if-gtz v7, :cond_32

    .line 1941
    .line 1942
    const/4 v7, 0x1

    .line 1943
    goto :goto_21

    .line 1944
    :cond_32
    move v7, v3

    .line 1945
    :goto_21
    const-string v8, ", fn_newLevel:"

    .line 1946
    .line 1947
    const-string v9, ") fn_oldLevel:"

    .line 1948
    .line 1949
    if-eqz v7, :cond_33

    .line 1950
    .line 1951
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1952
    .line 1953
    move-object/from16 v15, v31

    .line 1954
    .line 1955
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    iget-object v15, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1959
    .line 1960
    invoke-static {v2, v15, v9, v8, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1964
    .line 1965
    .line 1966
    const-string v15, " (usableFileNode="

    .line 1967
    .line 1968
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1972
    .line 1973
    .line 1974
    move-object/from16 v4, v25

    .line 1975
    .line 1976
    invoke-static {v12, v4, v13}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    .line 1978
    .line 1979
    :cond_33
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v4

    .line 1983
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v5

    .line 1987
    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v5

    .line 1991
    const/4 v12, 0x1

    .line 1992
    if-lt v7, v12, :cond_35

    .line 1993
    .line 1994
    if-lt v2, v12, :cond_34

    .line 1995
    .line 1996
    const/4 v12, -0x1

    .line 1997
    if-ne v2, v12, :cond_35

    .line 1998
    .line 1999
    :cond_34
    const/4 v3, 0x1

    .line 2000
    :cond_35
    const-string/jumbo v15, "updateNotifications_filenode("

    .line 2001
    .line 2002
    .line 2003
    if-eqz v3, :cond_36

    .line 2004
    .line 2005
    const v3, 0x104071f

    .line 2006
    .line 2007
    .line 2008
    invoke-virtual {v4, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v3

    .line 2012
    const v12, 0x104071e

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v4, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v12

    .line 2019
    move-object/from16 v18, v0

    .line 2020
    .line 2021
    new-instance v0, Landroid/app/Notification$Builder;

    .line 2022
    .line 2023
    move-object/from16 v19, v11

    .line 2024
    .line 2025
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 2026
    .line 2027
    invoke-direct {v0, v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2028
    .line 2029
    .line 2030
    const v11, 0x1080b71

    .line 2031
    .line 2032
    .line 2033
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v0

    .line 2037
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v0

    .line 2041
    const v11, 0x106001c

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v4, v11}, Landroid/content/Context;->getColor(I)I

    .line 2045
    .line 2046
    .line 2047
    move-result v4

    .line 2048
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v0

    .line 2052
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v0

    .line 2056
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v0

    .line 2060
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 2061
    .line 2062
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 2063
    .line 2064
    .line 2065
    invoke-virtual {v3, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v3

    .line 2069
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v0

    .line 2073
    const/4 v3, 0x1

    .line 2074
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v0

    .line 2078
    const-string/jumbo v3, "sys"

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v0

    .line 2085
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v0

    .line 2089
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 2090
    .line 2091
    or-int/lit8 v3, v3, 0x20

    .line 2092
    .line 2093
    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 2094
    .line 2095
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2096
    .line 2097
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2098
    .line 2099
    .line 2100
    iget-object v4, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2101
    .line 2102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    .line 2104
    .line 2105
    const-string v4, ") notifyAsUser"

    .line 2106
    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    .line 2109
    .line 2110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v3

    .line 2114
    invoke-virtual {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2115
    .line 2116
    .line 2117
    iget-object v3, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 2118
    .line 2119
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v4

    .line 2123
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2124
    .line 2125
    const/16 v11, 0x68

    .line 2126
    .line 2127
    invoke-virtual {v3, v4, v11, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2128
    .line 2129
    .line 2130
    goto :goto_22

    .line 2131
    :cond_36
    move-object/from16 v18, v0

    .line 2132
    .line 2133
    move-object/from16 v19, v11

    .line 2134
    .line 2135
    const/4 v3, 0x1

    .line 2136
    if-ge v7, v3, :cond_38

    .line 2137
    .line 2138
    if-ge v2, v3, :cond_37

    .line 2139
    .line 2140
    const/4 v0, -0x1

    .line 2141
    if-ne v2, v0, :cond_38

    .line 2142
    .line 2143
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2144
    .line 2145
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2146
    .line 2147
    .line 2148
    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2149
    .line 2150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    .line 2152
    .line 2153
    const-string v3, ") cancelAsUser"

    .line 2154
    .line 2155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    .line 2157
    .line 2158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v0

    .line 2162
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2163
    .line 2164
    .line 2165
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 2166
    .line 2167
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v3

    .line 2171
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2172
    .line 2173
    const/16 v5, 0x68

    .line 2174
    .line 2175
    invoke-virtual {v0, v3, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2176
    .line 2177
    .line 2178
    :cond_38
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2179
    .line 2180
    const-string/jumbo v3, "updateBroadcasts_filenode("

    .line 2181
    .line 2182
    .line 2183
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2184
    .line 2185
    .line 2186
    iget-object v4, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2187
    .line 2188
    invoke-static {v2, v4, v9, v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2192
    .line 2193
    .line 2194
    move-object/from16 v4, v37

    .line 2195
    .line 2196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    .line 2199
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2200
    .line 2201
    .line 2202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v0

    .line 2206
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v0

    .line 2213
    move-object/from16 v4, v33

    .line 2214
    .line 2215
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2216
    .line 2217
    .line 2218
    move-result v0

    .line 2219
    if-nez v0, :cond_3a

    .line 2220
    .line 2221
    :cond_39
    :goto_23
    move-object/from16 v0, v18

    .line 2222
    .line 2223
    goto/16 :goto_26

    .line 2224
    .line 2225
    :cond_3a
    new-instance v0, Landroid/os/StatFs;

    .line 2226
    .line 2227
    iget-object v4, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2228
    .line 2229
    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2230
    .line 2231
    .line 2232
    new-instance v0, Landroid/content/Intent;

    .line 2233
    .line 2234
    const-string v4, "com.samsung.intent.action.DEVICE_FILENODE_FULL"

    .line 2235
    .line 2236
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .line 2238
    .line 2239
    const/high16 v4, 0x5200000

    .line 2240
    .line 2241
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v0

    .line 2245
    move-object/from16 v5, v23

    .line 2246
    .line 2247
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v0

    .line 2251
    new-instance v8, Landroid/content/Intent;

    .line 2252
    .line 2253
    const-string v9, "com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL "

    .line 2254
    .line 2255
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual {v8, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v4

    .line 2262
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v4

    .line 2266
    const/4 v5, 0x1

    .line 2267
    if-lt v7, v5, :cond_3b

    .line 2268
    .line 2269
    if-lt v2, v5, :cond_3c

    .line 2270
    .line 2271
    const/4 v5, -0x1

    .line 2272
    if-ne v2, v5, :cond_3b

    .line 2273
    .line 2274
    goto :goto_24

    .line 2275
    :cond_3b
    move-object/from16 v5, v19

    .line 2276
    .line 2277
    const/4 v8, 0x1

    .line 2278
    goto :goto_25

    .line 2279
    :cond_3c
    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2280
    .line 2281
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2282
    .line 2283
    .line 2284
    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2285
    .line 2286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    .line 2289
    const-string v3, ") sending intent : ACTION_DEVICE_FILENODE_FULL"

    .line 2290
    .line 2291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v2

    .line 2298
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2299
    .line 2300
    .line 2301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2302
    .line 2303
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2304
    .line 2305
    .line 2306
    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 2307
    .line 2308
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2309
    .line 2310
    .line 2311
    move-object/from16 v5, v19

    .line 2312
    .line 2313
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    .line 2316
    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 2317
    .line 2318
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2319
    .line 2320
    .line 2321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v2

    .line 2325
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2326
    .line 2327
    .line 2328
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v2

    .line 2332
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2333
    .line 2334
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2335
    .line 2336
    .line 2337
    goto :goto_23

    .line 2338
    :goto_25
    if-ge v7, v8, :cond_39

    .line 2339
    .line 2340
    if-ge v2, v8, :cond_3d

    .line 2341
    .line 2342
    const/4 v8, -0x1

    .line 2343
    if-ne v2, v8, :cond_39

    .line 2344
    .line 2345
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2346
    .line 2347
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2348
    .line 2349
    .line 2350
    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2351
    .line 2352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    .line 2354
    .line 2355
    const-string v3, ") sending intent : ACTION_DEVICE_FILENODE_NOT_FULL"

    .line 2356
    .line 2357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v2

    .line 2364
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2365
    .line 2366
    .line 2367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2368
    .line 2369
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2370
    .line 2371
    .line 2372
    sget-wide v8, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 2373
    .line 2374
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    .line 2379
    .line 2380
    sget-wide v8, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 2381
    .line 2382
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v2

    .line 2389
    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 2390
    .line 2391
    .line 2392
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v2

    .line 2396
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2397
    .line 2398
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2399
    .line 2400
    .line 2401
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v0

    .line 2405
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2406
    .line 2407
    .line 2408
    goto/16 :goto_23

    .line 2409
    .line 2410
    :goto_26
    iput v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    .line 2411
    .line 2412
    move v4, v6

    .line 2413
    move-object v5, v13

    .line 2414
    move-object/from16 v3, v16

    .line 2415
    .line 2416
    move-object/from16 v8, v24

    .line 2417
    .line 2418
    const/4 v2, 0x1

    .line 2419
    const-wide v6, 0x7fffffffffffffffL

    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    const-wide/16 v9, 0x64

    .line 2425
    .line 2426
    const/16 v11, 0x14

    .line 2427
    .line 2428
    const/4 v12, 0x2

    .line 2429
    move-object/from16 v13, p0

    .line 2430
    .line 2431
    goto/16 :goto_2

    .line 2432
    .line 2433
    :cond_3e
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 2434
    .line 2435
    const/4 v2, 0x1

    .line 2436
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 2437
    .line 2438
    .line 2439
    move-result v0

    .line 2440
    if-nez v0, :cond_3f

    .line 2441
    .line 2442
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 2443
    .line 2444
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v2

    .line 2448
    const-wide/32 v3, 0xea60

    .line 2449
    .line 2450
    .line 2451
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2452
    .line 2453
    .line 2454
    :cond_3f
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 2455
    .line 2456
    const/4 v2, 0x2

    .line 2457
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 2458
    .line 2459
    .line 2460
    move-result v0

    .line 2461
    if-nez v0, :cond_40

    .line 2462
    .line 2463
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 2464
    .line 2465
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v1

    .line 2469
    const-wide/32 v2, 0x2255100

    .line 2470
    .line 2471
    .line 2472
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2473
    .line 2474
    .line 2475
    :cond_40
    return-void
.end method
