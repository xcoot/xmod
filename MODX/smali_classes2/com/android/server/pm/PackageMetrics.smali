.class public final Lcom/android/server/pm/PackageMetrics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallStartTimestampMillis:J

.field public final mInstallSteps:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onStepFinished(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onStepStarted(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final reportInstallationStats(Z)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    .line 19
    .line 20
    sub-long v22, v2, v4

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    if-ge v5, v6, :cond_2

    .line 42
    .line 43
    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 50
    .line 51
    iget-wide v9, v6, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    .line 52
    .line 53
    cmp-long v6, v9, v7

    .line 54
    .line 55
    if-ltz v6, :cond_1

    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 77
    .line 78
    iget-wide v6, v6, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    .line 79
    .line 80
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    new-array v6, v5, [I

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    new-array v9, v9, [J

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    :goto_1
    if-ge v10, v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    check-cast v11, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    aput v11, v6, v10

    .line 116
    .line 117
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    check-cast v11, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v11

    .line 127
    aput-wide v11, v9, v10

    .line 128
    .line 129
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    new-instance v2, Landroid/util/Pair;

    .line 133
    .line 134
    invoke-direct {v2, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 138
    .line 139
    iget-object v10, v0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 140
    .line 141
    iget-object v12, v0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 142
    .line 143
    iget-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 144
    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    iget v5, v3, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 150
    .line 151
    and-int/lit8 v5, v5, 0x20

    .line 152
    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    iget-object v5, v0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 160
    :goto_3
    if-eqz v3, :cond_6

    .line 161
    .line 162
    iget-object v3, v3, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 163
    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 167
    .line 168
    :goto_4
    move/from16 v25, v3

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_6
    iget v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :goto_5
    if-eqz p1, :cond_f

    .line 175
    .line 176
    iget-boolean v3, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 177
    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    iget-object v3, v0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 181
    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    new-instance v6, Ljava/io/File;

    .line 189
    .line 190
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 198
    .line 199
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 200
    .line 201
    .line 202
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    new-instance v11, Lcom/android/server/pm/PackageMetrics$1;

    .line 207
    .line 208
    invoke-direct {v11, v6, v3}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v9, v11}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    .line 214
    :catch_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    goto :goto_6

    .line 219
    :cond_7
    move-wide v13, v7

    .line 220
    :goto_6
    move-wide/from16 v18, v7

    .line 221
    .line 222
    move-wide v3, v13

    .line 223
    goto/16 :goto_a

    .line 224
    .line 225
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eqz v3, :cond_f

    .line 230
    .line 231
    iget-wide v13, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-static {v6}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-eqz v6, :cond_e

    .line 242
    .line 243
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 244
    .line 245
    if-nez v3, :cond_9

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    const-string v9, ".apk"

    .line 253
    .line 254
    if-eqz v6, :cond_a

    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_a

    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 271
    .line 272
    .line 273
    move-result-wide v7

    .line 274
    goto :goto_8

    .line 275
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-nez v6, :cond_b

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    array-length v6, v3

    .line 287
    const/4 v11, 0x0

    .line 288
    :goto_7
    if-ge v11, v6, :cond_d

    .line 289
    .line 290
    aget-object v15, v3, v11

    .line 291
    .line 292
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v16

    .line 296
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_c

    .line 305
    .line 306
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 307
    .line 308
    .line 309
    move-result-wide v15

    .line 310
    add-long/2addr v15, v7

    .line 311
    move-wide v7, v15

    .line 312
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_d
    :goto_8
    move-wide v3, v7

    .line 316
    :goto_9
    move-wide/from16 v18, v13

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_e
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 320
    .line 321
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 322
    .line 323
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 324
    .line 325
    .line 326
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    new-instance v7, Lcom/android/server/pm/PackageMetrics$1;

    .line 331
    .line 332
    invoke-direct {v7, v3, v4}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v6, v7}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .line 337
    .line 338
    :catch_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 339
    .line 340
    .line 341
    move-result-wide v3

    .line 342
    goto :goto_9

    .line 343
    :cond_f
    move-wide v3, v7

    .line 344
    move-wide/from16 v18, v3

    .line 345
    .line 346
    :goto_a
    iget v6, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 347
    .line 348
    const/4 v7, -0x1

    .line 349
    iget v8, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 350
    .line 351
    if-ne v8, v7, :cond_10

    .line 352
    .line 353
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    :cond_10
    invoke-static {v8, v6}, Landroid/os/UserHandle;->getUid(II)I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    iget v14, v0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 370
    .line 371
    iget v15, v0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    .line 372
    .line 373
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 374
    .line 375
    move-object/from16 v20, v1

    .line 376
    .line 377
    check-cast v20, [I

    .line 378
    .line 379
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 380
    .line 381
    move-object/from16 v21, v1

    .line 382
    .line 383
    check-cast v21, [J

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 386
    .line 387
    .line 388
    move-result v24

    .line 389
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 390
    .line 391
    .line 392
    move-result v27

    .line 393
    iget v1, v0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 394
    .line 395
    and-int/lit16 v1, v1, 0x2000

    .line 396
    .line 397
    if-eqz v1, :cond_11

    .line 398
    .line 399
    const/4 v1, 0x1

    .line 400
    move/from16 v29, v1

    .line 401
    .line 402
    goto :goto_b

    .line 403
    :cond_11
    const/16 v29, 0x0

    .line 404
    .line 405
    :goto_b
    iget-boolean v1, v0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 406
    .line 407
    iget-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 408
    .line 409
    iget-boolean v8, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    .line 410
    .line 411
    iget-boolean v7, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    .line 414
    .line 415
    .line 416
    move-result v34

    .line 417
    const/16 v6, 0x20c

    .line 418
    .line 419
    const/16 v26, -0x1

    .line 420
    .line 421
    iget v6, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 422
    .line 423
    move/from16 v33, v7

    .line 424
    .line 425
    move v7, v6

    .line 426
    iget v0, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 427
    .line 428
    move/from16 v28, v0

    .line 429
    .line 430
    const/16 v35, 0x0

    .line 431
    .line 432
    move v0, v8

    .line 433
    move-object v8, v5

    .line 434
    move-wide/from16 v16, v3

    .line 435
    .line 436
    move/from16 v30, v1

    .line 437
    .line 438
    move/from16 v31, v2

    .line 439
    .line 440
    move/from16 v32, v0

    .line 441
    .line 442
    const/16 v6, 0x20c

    .line 443
    .line 444
    invoke-static/range {v6 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZ)V

    .line 445
    .line 446
    .line 447
    return-void
.end method
