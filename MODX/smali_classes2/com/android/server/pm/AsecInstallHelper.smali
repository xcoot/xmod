.class public final Lcom/android/server/pm/AsecInstallHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ASEC_INTERNAL_PATH:Ljava/lang/String;

.field public static final CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field public static final UNBIND_DELAY:J

.field public static mContext:Landroid/content/Context;

.field public static sPreMounted:Z


# instance fields
.field public mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAvailableMountLock:Ljava/lang/Object;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mMediaMounted:Z

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static -$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSecureContainerList()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, -0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v1, "PackageManager"

    .line 24
    .line 25
    const-string v2, "No secure containers found"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 35
    .line 36
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 37
    .line 38
    monitor-enter v3

    .line 39
    :try_start_0
    new-instance v6, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v6, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_9

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v6}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-nez v7, :cond_3

    .line 72
    .line 73
    const-string v7, "PackageManager"

    .line 74
    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v9, "Found stale container "

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, " with no package name"

    .line 89
    .line 90
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_d

    .line 103
    .line 104
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    .line 106
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 107
    .line 108
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 109
    .line 110
    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 117
    .line 118
    if-nez v7, :cond_4

    .line 119
    .line 120
    const-string v7, "PackageManager"

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v9, "Found stale container "

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v6, " with no matching settings"

    .line 136
    .line 137
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    if-nez p1, :cond_5

    .line 149
    .line 150
    iget v8, v7, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 151
    .line 152
    const/high16 v9, 0x40000

    .line 153
    .line 154
    and-int/2addr v8, v9

    .line 155
    if-eqz v8, :cond_1

    .line 156
    .line 157
    :cond_5
    const-string v8, "PackageManager"

    .line 158
    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v10, "isMounted: "

    .line 165
    .line 166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v10, ", PreMounted: "

    .line 173
    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    sget-boolean v10, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    sget-boolean v8, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 190
    .line 191
    if-eq p1, v8, :cond_6

    .line 192
    .line 193
    if-nez p2, :cond_6

    .line 194
    .line 195
    if-nez v8, :cond_6

    .line 196
    .line 197
    const-string p0, "PackageManager"

    .line 198
    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v0, "Already unmounted!! "

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 221
    .line 222
    goto/16 :goto_c

    .line 223
    .line 224
    :cond_6
    :try_start_1
    new-instance v8, Lcom/android/server/pm/AsecInstallArgs;

    .line 225
    .line 226
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-static {v9, v10}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    iget-object v9, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 238
    .line 239
    invoke-static {v6}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    sget-object v11, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    xor-int/lit8 v10, v10, 0x1

    .line 250
    .line 251
    if-eqz v10, :cond_7

    .line 252
    .line 253
    const/16 v10, 0x8

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_7
    move v10, v4

    .line 257
    :goto_1
    sget-object v11, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 258
    .line 259
    sget-object v12, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 260
    .line 261
    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/pm/AsecInstallArgs;-><init>(ILcom/android/server/pm/InstallSource;Lcom/android/server/pm/PackageManagerService;)V

    .line 262
    .line 263
    .line 264
    iput-object v6, v8, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .line 266
    :try_start_2
    invoke-static {v6}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v8, v9}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :catch_0
    :try_start_3
    const-string v9, "PackageManager"

    .line 275
    .line 276
    const-string v10, "Catch nullpointer exception"

    .line 277
    .line 278
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    :goto_2
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 282
    .line 283
    if-eqz v9, :cond_8

    .line 284
    .line 285
    iget-object v10, v8, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_8

    .line 292
    .line 293
    iget-object v6, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    iget v6, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 299
    .line 300
    if-eq v6, v5, :cond_1

    .line 301
    .line 302
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_8
    const-string v8, "PackageManager"

    .line 309
    .line 310
    new-instance v9, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v10, "Found stale container "

    .line 316
    .line 317
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v6, ": expected codePath="

    .line 324
    .line 325
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v6, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 344
    .line 345
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 346
    .line 347
    .line 348
    :goto_3
    if-eqz p1, :cond_f

    .line 349
    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallHelper;->loadMediaPackages(Landroid/util/ArrayMap;)V

    .line 351
    .line 352
    .line 353
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 354
    .line 355
    iget-object v1, p2, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 356
    .line 357
    monitor-enter v1

    .line 358
    :try_start_4
    new-instance v0, Landroid/util/ArraySet;

    .line 359
    .line 360
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSecureContainerList()[Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    array-length v3, v2

    .line 368
    move v6, v4

    .line 369
    :goto_4
    if-ge v6, v3, :cond_b

    .line 370
    .line 371
    aget-object v7, v2, v6

    .line 372
    .line 373
    invoke-static {v7}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    if-eqz v8, :cond_a

    .line 378
    .line 379
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :catchall_1
    move-exception p0

    .line 384
    goto :goto_8

    .line 385
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_b
    move v2, v4

    .line 389
    :goto_6
    iget-object v3, p2, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 390
    .line 391
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-ge v2, v3, :cond_d

    .line 396
    .line 397
    iget-object v3, p2, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 398
    .line 399
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 404
    .line 405
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    if-eqz v6, :cond_c

    .line 412
    .line 413
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    const/16 v7, 0x3e8

    .line 418
    .line 419
    invoke-static {v3, v6, v7}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_d
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_e

    .line 434
    .line 435
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Ljava/lang/String;

    .line 440
    .line 441
    const-string v2, "PackageInstaller"

    .line 442
    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v6, "Deleting orphan container "

    .line 449
    .line 450
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_e
    monitor-exit v1

    .line 468
    goto :goto_9

    .line 469
    :goto_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    throw p0

    .line 471
    :cond_f
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/AsecInstallHelper;->unloadMediaPackages(Landroid/util/ArrayMap;Z)V

    .line 472
    .line 473
    .line 474
    :goto_9
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 475
    .line 476
    if-eqz p2, :cond_11

    .line 477
    .line 478
    if-nez p1, :cond_11

    .line 479
    .line 480
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 481
    .line 482
    monitor-enter p1

    .line 483
    :try_start_5
    sget-object p2, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-lez v0, :cond_10

    .line 490
    .line 491
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 492
    .line 493
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 494
    .line 495
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 500
    .line 501
    iget v0, v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 502
    .line 503
    invoke-virtual {p0, v0, v5}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :catchall_2
    move-exception p0

    .line 508
    goto :goto_b

    .line 509
    :cond_10
    :goto_a
    move-object p0, p1

    .line 510
    check-cast p0, Ljava/util/HashMap;

    .line 511
    .line 512
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 516
    .line 517
    .line 518
    monitor-exit p1

    .line 519
    goto :goto_c

    .line 520
    :goto_b
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 521
    throw p0

    .line 522
    :cond_11
    :goto_c
    return-void

    .line 523
    :goto_d
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 524
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 525
    .line 526
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "app-asec"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 20
    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-wide/16 v1, 0x5

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lcom/android/server/pm/AsecInstallHelper;->UNBIND_DELAY:J

    .line 30
    .line 31
    new-instance v0, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-string v1, "com.samsung.android.container"

    .line 34
    .line 35
    const-string v2, "com.samsung.android.container.ContainerService"

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/server/pm/AsecInstallHelper;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    sput-object v1, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/pm/AppDataHelper;

    .line 34
    .line 35
    invoke-direct {v3, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/android/server/pm/BroadcastHelper;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 41
    .line 42
    invoke-direct {v6, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 43
    .line 44
    .line 45
    iput-object v6, p0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 46
    .line 47
    new-instance v4, Lcom/android/server/pm/RemovePackageHelper;

    .line 48
    .line 49
    invoke-direct {v4, p1, v3, v6}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/android/server/pm/DeletePackageHelper;

    .line 53
    .line 54
    invoke-direct {v5, p1, v4, v6}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Lcom/android/server/pm/AsecInstallHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 58
    .line 59
    new-instance v7, Lcom/android/server/pm/InstallPackageHelper;

    .line 60
    .line 61
    move-object v1, v7

    .line 62
    move-object v2, p1

    .line 63
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    .line 64
    .line 65
    .line 66
    iput-object v7, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 73
    .line 74
    iget-object p1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 85
    .line 86
    return-void
.end method

.method public static canInstallOnExternal(IILjava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    const-string v1, "com.android.vending"

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    sget-object p2, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "installToSdCardState"

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string v1, "checkSettingsForDirectSdInstall value : "

    .line 26
    .line 27
    const-string v2, "PackageManager"

    .line 28
    .line 29
    invoke-static {p2, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p2, v1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    :try_start_0
    const-string p2, "android"

    .line 40
    .line 41
    invoke-static {p1, p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    move p2, v0

    .line 51
    :goto_0
    array-length v2, p1

    .line 52
    if-ge p2, v2, :cond_2

    .line 53
    .line 54
    aget-object v2, p1, p2

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string/jumbo v4, "sd"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string/jumbo v3, "mounted"

    .line 80
    .line 81
    .line 82
    if-ne v2, v3, :cond_1

    .line 83
    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    const/4 p1, 0x2

    .line 87
    if-ne p0, p1, :cond_2

    .line 88
    .line 89
    :cond_0
    return v1

    .line 90
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_2
    return v0
.end method

.method public static doRenameAsec(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v2, :cond_c

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Ljava/security/SecureRandom;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    if-ge v5, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextFloat()F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/high16 v7, 0x42740000    # 61.0f

    .line 32
    .line 33
    mul-float/2addr v6, v7

    .line 34
    float-to-int v6, v6

    .line 35
    const/16 v7, 0xa

    .line 36
    .line 37
    if-ge v6, v7, :cond_1

    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x30

    .line 40
    .line 41
    int-to-char v6, v6

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v7, 0x24

    .line 47
    .line 48
    if-ge v6, v7, :cond_2

    .line 49
    .line 50
    add-int/lit8 v6, v6, 0x37

    .line 51
    .line 52
    int-to-char v6, v6

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x3d

    .line 58
    .line 59
    int-to-char v6, v6

    .line 60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "-"

    .line 67
    .line 68
    invoke-static {v3, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/File;

    .line 84
    .line 85
    const-string v5, "/mnt/asec"

    .line 86
    .line 87
    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v3, "nextCodePath for ASEC: "

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, "PackageManager"

    .line 112
    .line 113
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-static {v1, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const-string p0, "Failed to unmount "

    .line 138
    .line 139
    const-string p1, " before renaming"

    .line 140
    .line 141
    invoke-static {p0, v1, p1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_5
    :goto_2
    invoke-static {v1, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const-string v4, " to "

    .line 151
    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    const-string v2, "Failed to rename "

    .line 155
    .line 156
    const-string v5, " which might be stale. Will try to clean up"

    .line 157
    .line 158
    invoke-static {v2, v1, v4, v0, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_7

    .line 170
    .line 171
    invoke-static {v1, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_6

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const-string p0, " inspite of cleaning it up"

    .line 179
    .line 180
    invoke-static {v2, v1, v4, v0, p0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_7
    const-string p0, "Very strange. Cannot clean up stale container "

    .line 190
    .line 191
    invoke-static {p0, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_8
    :goto_3
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_9

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v5, "Mounting container "

    .line 205
    .line 206
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const/16 v5, 0x3e8

    .line 224
    .line 225
    invoke-static {v0, v2, v5}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    goto :goto_4

    .line 230
    :cond_9
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :goto_4
    if-eqz v2, :cond_b

    .line 235
    .line 236
    const-string v5, "Successfully renamed "

    .line 237
    .line 238
    const-string v6, " at new path: "

    .line 239
    .line 240
    invoke-static {v5, v1, v4, v0, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    const/4 v4, -0x1

    .line 249
    invoke-static {v0, v4, v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_a

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v2, p0}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-interface {p1, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 271
    .line 272
    .line 273
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-interface {p1, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 282
    .line 283
    .line 284
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v1, "Failed to fixPerms "

    .line 299
    .line 300
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    const/16 v0, -0x12

    .line 317
    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_b
    const-string p0, "Failed to get cache path for  "

    .line 323
    .line 324
    invoke-static {p0, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :goto_5
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 328
    .line 329
    const/4 p1, -0x4

    .line 330
    const-string v0, "Failed rename"

    .line 331
    .line 332
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p0

    .line 336
    :cond_c
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 337
    .line 338
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p0
.end method

.method public static extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getEncryptKey()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "AppsOnSD"

    .line 2
    .line 3
    const-string v1, "PackageManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "AES"

    .line 21
    .line 22
    const/16 v5, 0x80

    .line 23
    .line 24
    invoke-virtual {v3, v5, v4, v0}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    const-string v0, "Failed to create encryption keys"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    return-object v3

    .line 41
    :goto_0
    const-string v3, "Failed to retrieve encryption keys with exception: "

    .line 42
    .line 43
    invoke-static {v3, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "Failed to create encryption keys with exception: "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-object v2
.end method

.method public static installOnExternalAsec(I)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    and-int/lit8 p0, p0, 0x8

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    return v1
.end method

.method public static isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method public static setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    const-string/jumbo v1, "pkg.apk"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public final cleanUpAsecResources(Ljava/io/File;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p2, Lcom/android/server/pm/AsecInstallArgs;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 8
    .line 9
    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-direct {p2, v1, v0, p0}, Lcom/android/server/pm/AsecInstallArgs;-><init>(ILcom/android/server/pm/InstallSource;Lcom/android/server/pm/PackageManagerService;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p0, "pkg.apk"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_0
    const-string p0, "/"

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v2, 0x1

    .line 52
    add-int/2addr p0, v2

    .line 53
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iput-object p0, p2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1, v2}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(IZ)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final getMountedExternalVolume()Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 1
    const-class v0, Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    if-ne v1, v2, :cond_0

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public final loadMediaPackages(Landroid/util/ArrayMap;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const-string v3, "PackageManager"

    .line 19
    .line 20
    const-string v4, "checkAvailableMount Waiting Latch"

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const-wide/16 v6, 0xf0

    .line 30
    .line 31
    invoke-virtual {v3, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-string v3, "PackageManager"

    .line 38
    .line 39
    const-string v4, "checkAvailableMount Wake Latch"

    .line 40
    .line 41
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v3

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v3, "PackageManager"

    .line 50
    .line 51
    const-string v4, "checkAvailableMount still wait......"

    .line 52
    .line 53
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    monitor-exit v2

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    const-string v2, "PackageManager"

    .line 61
    .line 62
    const-string v3, "checkAvailableMount Latch Exception"

    .line 63
    .line 64
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v2, :cond_d

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/android/server/pm/AsecInstallArgs;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    const/16 v6, -0x12

    .line 91
    .line 92
    :try_start_3
    iget-object v7, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v7}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-nez v8, :cond_4

    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const/16 v9, 0x3e8

    .line 105
    .line 106
    invoke-static {v7, v8, v9}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-eqz v7, :cond_3

    .line 111
    .line 112
    invoke-virtual {v2, v7}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_3
    const-string v4, "PackageManager"

    .line 117
    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v8, "Failed to mount cid: "

    .line 124
    .line 125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v8, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v8, " when installing from sdcard"

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .line 144
    .line 145
    const-string v3, "PackageManager"

    .line 146
    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v6, "Container "

    .line 150
    .line 151
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_4
    iget-object v2, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, " is stale, retCode=-18"

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    goto/16 :goto_e

    .line 174
    .line 175
    :cond_4
    :goto_6
    if-eqz v4, :cond_b

    .line 176
    .line 177
    :try_start_4
    iget-object v7, v2, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_5

    .line 184
    .line 185
    goto/16 :goto_d

    .line 186
    .line 187
    :cond_5
    iget-object v7, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 188
    .line 189
    iget v8, v7, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 190
    .line 191
    iget v9, v2, Lcom/android/server/pm/AsecInstallArgs;->mInstallFlags:I

    .line 192
    .line 193
    and-int/lit8 v9, v9, 0x8

    .line 194
    .line 195
    if-eqz v9, :cond_6

    .line 196
    .line 197
    or-int/lit8 v8, v8, 0x8

    .line 198
    .line 199
    :cond_6
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 200
    .line 201
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 202
    .line 203
    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    :try_start_5
    iget-object v9, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 205
    .line 206
    new-instance v10, Ljava/io/File;

    .line 207
    .line 208
    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/16 v11, 0x800

    .line 212
    .line 213
    invoke-virtual {v9, v10, v8, v11}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 214
    .line 215
    .line 216
    move-result-object v8
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 217
    goto :goto_7

    .line 218
    :catchall_2
    move-exception v4

    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :catch_1
    move-exception v8

    .line 222
    :try_start_6
    const-string v9, "PackageManager"

    .line 223
    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v11, "Failed to scan "

    .line 230
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v11, ": "

    .line 238
    .line 239
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-object v8, v0

    .line 257
    :goto_7
    if-eqz v8, :cond_a

    .line 258
    .line 259
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 260
    .line 261
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 262
    .line 263
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 264
    .line 265
    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 266
    :try_start_7
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    iget-object v8, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 274
    .line 275
    const/16 v9, 0x2710

    .line 276
    .line 277
    if-lt v6, v9, :cond_8

    .line 278
    .line 279
    const/4 v6, -0x1

    .line 280
    invoke-static {v8, v6, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-nez v6, :cond_7

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_7
    invoke-static {v8}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-nez v6, :cond_9

    .line 292
    .line 293
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    invoke-static {v8, v6, v9}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_8
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v9, "Failed to finalize "

    .line 308
    .line 309
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const-string v9, "PackageManager"

    .line 320
    .line 321
    invoke-static {v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    invoke-static {v8}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    :cond_9
    :goto_9
    monitor-exit v4

    .line 328
    move v6, v3

    .line 329
    goto :goto_a

    .line 330
    :catchall_3
    move-exception v6

    .line 331
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 332
    :try_start_8
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 333
    .line 334
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 335
    :catchall_4
    move-exception v4

    .line 336
    move v6, v3

    .line 337
    goto :goto_c

    .line 338
    :cond_a
    :try_start_9
    const-string v8, "PackageManager"

    .line 339
    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v10, "Failed to install pkg from  "

    .line 346
    .line 347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v4, " from sdcard"

    .line 354
    .line 355
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :goto_a
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 366
    :try_start_a
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 367
    .line 368
    if-eq v6, v3, :cond_2

    .line 369
    .line 370
    const-string v3, "PackageManager"

    .line 371
    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v7, "Container "

    .line 375
    .line 376
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :goto_b
    iget-object v2, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v2, " is stale, retCode="

    .line 385
    .line 386
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    goto/16 :goto_5

    .line 393
    .line 394
    :goto_c
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 395
    :try_start_c
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 396
    .line 397
    throw v4

    .line 398
    :cond_b
    :goto_d
    const-string v7, "PackageManager"

    .line 399
    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v9, "Container "

    .line 406
    .line 407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v9, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v9, " cachepath "

    .line 416
    .line 417
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    iget-object v9, v2, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v9, " does not match one in settings "

    .line 426
    .line 427
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 438
    .line 439
    .line 440
    const-string v3, "PackageManager"

    .line 441
    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v6, "Container "

    .line 445
    .line 446
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_4

    .line 450
    .line 451
    :catch_2
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    const-string v7, "loadMediaPackage Exception: "

    .line 457
    .line 458
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    iget-object v7, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 471
    .line 472
    const/4 v7, 0x5

    .line 473
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 474
    .line 475
    .line 476
    if-eq v6, v3, :cond_2

    .line 477
    .line 478
    const-string v3, "PackageManager"

    .line 479
    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v7, "Container "

    .line 483
    .line 484
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    goto :goto_b

    .line 488
    :goto_e
    if-eq v6, v3, :cond_c

    .line 489
    .line 490
    const-string p1, "PackageManager"

    .line 491
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string v1, "Container "

    .line 495
    .line 496
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v1, " is stale, retCode="

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    :cond_c
    throw p0

    .line 520
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 521
    .line 522
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 523
    .line 524
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 525
    .line 526
    monitor-enter p1

    .line 527
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 528
    .line 529
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 530
    .line 531
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 532
    .line 533
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 534
    .line 535
    const-string/jumbo v1, "primary_physical"

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 543
    .line 544
    const-string/jumbo v1, "primary_physical"

    .line 545
    .line 546
    .line 547
    iget v2, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 548
    .line 549
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 550
    .line 551
    iget v4, v4, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 552
    .line 553
    if-eq v2, v4, :cond_e

    .line 554
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .line 559
    .line 560
    const-string v4, "Platform changed from "

    .line 561
    .line 562
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 566
    .line 567
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v4, " to "

    .line 571
    .line 572
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 576
    .line 577
    iget v4, v4, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 578
    .line 579
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v4, "; regranting permissions for external"

    .line 583
    .line 584
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    const/4 v4, 0x4

    .line 592
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    goto :goto_f

    .line 596
    :catchall_5
    move-exception p0

    .line 597
    goto :goto_11

    .line 598
    :cond_e
    :goto_f
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 599
    .line 600
    iget v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 601
    .line 602
    iget-object v6, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 603
    .line 604
    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 605
    .line 606
    const/4 v7, 0x0

    .line 607
    if-eq v4, v6, :cond_f

    .line 608
    .line 609
    goto :goto_10

    .line 610
    :cond_f
    move v3, v7

    .line 611
    :goto_10
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 612
    .line 613
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 614
    .line 615
    invoke-interface {v2, v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 619
    .line 620
    .line 621
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 622
    .line 623
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 628
    .line 629
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 630
    .line 631
    invoke-virtual {v1, v0, v7}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 632
    .line 633
    .line 634
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 635
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 636
    .line 637
    .line 638
    move-result p1

    .line 639
    if-lez p1, :cond_10

    .line 640
    .line 641
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 642
    .line 643
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 644
    .line 645
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    new-instance v2, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 649
    .line 650
    invoke-direct {v2, p0}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 651
    .line 652
    .line 653
    const/4 v3, 0x1

    .line 654
    const/4 v4, 0x0

    .line 655
    const/4 v6, 0x0

    .line 656
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 657
    .line 658
    .line 659
    :cond_10
    return-void

    .line 660
    :goto_11
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 661
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 662
    .line 663
    throw p0
.end method

.method public final setAvailableMountSync(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "PackageManager"

    .line 11
    .line 12
    const-string/jumbo v1, "setAvailableMountSync Create Latch"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string p0, "PackageManager"

    .line 30
    .line 31
    const-string/jumbo v0, "setAvailableMountSync Unknown Latch"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    monitor-exit p1

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const-string p1, "PackageManager"

    .line 46
    .line 47
    const-string/jumbo v0, "setAvailableMountSync Latch CountDown"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public final unloadAllContainers(Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/pm/AsecInstallArgs;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 20
    .line 21
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0, v2, v2}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(IZ)Z

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 33
    .line 34
    throw p0

    .line 35
    :cond_0
    return-void
.end method

.method public final unloadMediaPackages(Landroid/util/ArrayMap;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/pm/AsecInstallArgs;

    .line 35
    .line 36
    iget-object v8, v5, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v8}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 45
    .line 46
    invoke-virtual {v9, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 51
    .line 52
    new-instance v16, Lcom/android/server/pm/PackageRemovedInfo;

    .line 53
    .line 54
    invoke-direct/range {v16 .. v16}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 58
    .line 59
    iget-object v14, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 60
    .line 61
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 62
    .line 63
    monitor-enter v14

    .line 64
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 65
    .line 66
    const-string/jumbo v10, "unloadMediaPackages"

    .line 67
    .line 68
    .line 69
    const/4 v11, -0x1

    .line 70
    invoke-virtual {v9, v11, v7, v8, v10}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    .line 71
    .line 72
    .line 73
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 74
    :try_start_1
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 75
    .line 76
    iget-object v10, v0, Lcom/android/server/pm/AsecInstallHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 77
    .line 78
    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 79
    .line 80
    .line 81
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v12, 0x0

    .line 84
    const/16 v17, 0x1

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    move-object v10, v8

    .line 89
    move-object/from16 v19, v14

    .line 90
    .line 91
    move/from16 v14, v17

    .line 92
    .line 93
    move-object/from16 v20, v15

    .line 94
    .line 95
    move-object/from16 v15, v16

    .line 96
    .line 97
    move/from16 v16, v18

    .line 98
    .line 99
    :try_start_2
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 104
    .line 105
    .line 106
    if-eqz v9, :cond_0

    .line 107
    .line 108
    move-object/from16 v7, v20

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v5, v5, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_5

    .line 121
    :cond_0
    const-string v5, "PackageManager"

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v9, "Failed to delete pkg from sdcard: "

    .line 129
    .line 130
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :goto_1
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    const-string v5, "PackageManager"

    .line 145
    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v9, "!@Remove package from AttributeCache: "

    .line 149
    .line 150
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v5, v8}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :catchall_1
    move-exception v0

    .line 173
    :goto_2
    move-object v1, v0

    .line 174
    goto :goto_3

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    move-object/from16 v19, v14

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :catchall_3
    move-exception v0

    .line 184
    move-object v2, v0

    .line 185
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    :goto_4
    throw v1

    .line 189
    :catchall_4
    move-exception v0

    .line 190
    move-object/from16 v19, v14

    .line 191
    .line 192
    :goto_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 194
    .line 195
    throw v0

    .line 196
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 197
    .line 198
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 199
    .line 200
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 201
    .line 202
    monitor-enter v3

    .line 203
    :try_start_6
    iget-object v5, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 204
    .line 205
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    iget-object v8, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 210
    .line 211
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 212
    .line 213
    const/4 v9, 0x0

    .line 214
    invoke-virtual {v8, v5, v9}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 215
    .line 216
    .line 217
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 218
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-lez v3, :cond_3

    .line 223
    .line 224
    invoke-virtual {v0, v7}, Lcom/android/server/pm/AsecInstallHelper;->setAvailableMountSync(Z)V

    .line 225
    .line 226
    .line 227
    const-string v3, "PackageManager"

    .line 228
    .line 229
    const-string/jumbo v5, "setAvailableMountSync true"

    .line 230
    .line 231
    .line 232
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 236
    .line 237
    iget-object v5, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 238
    .line 239
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    new-instance v7, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 243
    .line 244
    invoke-direct {v7, v5}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper$3;

    .line 248
    .line 249
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/pm/AsecInstallHelper$3;-><init>(Lcom/android/server/pm/AsecInstallHelper;ZLjava/util/Set;)V

    .line 250
    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    move-object v0, v3

    .line 255
    move-object v1, v7

    .line 256
    move v3, v8

    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_2

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2, v1}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 292
    .line 293
    .line 294
    const-string v0, "PackageManager"

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v2, "Flush ResourceManager path: "

    .line 299
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/AsecInstallHelper;->updateMediaStatus(ILjava/util/Set;)V

    .line 315
    .line 316
    .line 317
    :goto_7
    return-void

    .line 318
    :catchall_5
    move-exception v0

    .line 319
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 320
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 321
    .line 322
    throw v0
.end method

.method public final updateExternalMediaStatus(ZZ)V
    .locals 4

    .line 1
    const-string v0, "Updating external media status from "

    .line 2
    .line 3
    const-string v1, "Media status can only be updated by the system"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 11
    .line 12
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    const-string v2, "PackageManager"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string/jumbo v0, "mounted"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const-string/jumbo v0, "unmounted"

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " to "

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const-string/jumbo v0, "mounted"

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string/jumbo v0, "unmounted"

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 63
    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    invoke-virtual {p1, v2, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 87
    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 92
    .line 93
    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$2;

    .line 94
    .line 95
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/AsecInstallHelper$2;-><init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 104
    .line 105
    throw p0
.end method

.method public final updateMediaStatus(ILjava/util/Set;)V
    .locals 4

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    const-string v1, "Got message UPDATED_MEDIA_STATUS!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "reportStatus: "

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", doGc: "

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const-string p1, "Unloading all containers"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    :try_start_0
    const-string p0, "Invoking MountService call back"

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->finishMediaUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const-string p0, "MountService not running?"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    return-void
.end method
