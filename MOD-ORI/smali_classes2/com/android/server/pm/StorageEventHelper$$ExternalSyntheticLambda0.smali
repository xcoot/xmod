.class public final synthetic Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/StorageEventHelper;

.field public final synthetic f$1:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final run$com$android$server$pm$StorageEventHelper$$ExternalSyntheticLambda0()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v9, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "PackageManager"

    .line 19
    .line 20
    const-string v1, "Loading internal storage is probably a mistake; ignoring"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto/16 :goto_d

    .line 26
    .line 27
    :cond_0
    new-instance v10, Lcom/android/server/pm/AppDataHelper;

    .line 28
    .line 29
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    invoke-direct {v10, v0}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 32
    .line 33
    .line 34
    new-instance v11, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v12, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 47
    .line 48
    or-int/lit8 v3, v3, 0x8

    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 51
    .line 52
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 53
    .line 54
    monitor-enter v4

    .line 55
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 58
    .line 59
    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 66
    .line 67
    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v5, v0

    .line 89
    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 90
    .line 91
    iget-object v14, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 92
    .line 93
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const-string v17, "loadPrivatePackagesInner"

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    const/16 v16, -0x1

    .line 102
    .line 103
    const/16 v18, 0xd

    .line 104
    .line 105
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 113
    .line 114
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 115
    .line 116
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    .line 120
    .line 121
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 122
    .line 123
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 128
    .line 129
    const/16 v8, 0x200

    .line 130
    .line 131
    invoke-virtual {v0, v7, v3, v8}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v1, v0

    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_2
    const-string v7, "PackageManager"

    .line 144
    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v14, "Failed to scan "

    .line 151
    .line 152
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v14, ": "

    .line 163
    .line 164
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_1
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v7, v13, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_1

    .line 190
    .line 191
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/4 v5, -0x1

    .line 196
    const v7, 0x20027

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v0, v5, v7}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .line 201
    .line 202
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    move-object v2, v0

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    :goto_3
    throw v1

    .line 216
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 219
    .line 220
    const-class v3, Landroid/os/storage/StorageManager;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 223
    .line 224
    invoke-interface {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object v14, v0

    .line 229
    check-cast v14, Landroid/os/storage/StorageManager;

    .line 230
    .line 231
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 240
    .line 241
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 244
    .line 245
    const-class v3, Landroid/os/storage/StorageManagerInternal;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 248
    .line 249
    invoke-interface {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object v8, v0

    .line 254
    check-cast v8, Landroid/os/storage/StorageManagerInternal;

    .line 255
    .line 256
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 259
    .line 260
    const/4 v7, 0x1

    .line 261
    const/4 v6, 0x0

    .line 262
    invoke-virtual {v0, v7, v6, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v16

    .line 272
    :cond_3
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    .line 278
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 283
    .line 284
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 285
    .line 286
    invoke-static {v3}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_4

    .line 291
    .line 292
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 293
    .line 294
    invoke-virtual {v8, v3}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_4

    .line 299
    .line 300
    const/4 v3, 0x3

    .line 301
    move v5, v3

    .line 302
    goto :goto_5

    .line 303
    :cond_4
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 304
    .line 305
    invoke-virtual {v15, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_3

    .line 310
    .line 311
    move v5, v7

    .line 312
    :goto_5
    :try_start_4
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 313
    .line 314
    invoke-virtual {v14, v9, v3, v5}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;II)V

    .line 315
    .line 316
    .line 317
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 318
    .line 319
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 320
    .line 321
    iget-object v3, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 324
    .line 325
    .line 326
    :try_start_5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 327
    .line 328
    const/16 v17, 0x0

    .line 329
    .line 330
    const/16 v18, 0x1

    .line 331
    .line 332
    move-object v3, v10

    .line 333
    move-object/from16 v19, v4

    .line 334
    .line 335
    move-object v4, v9

    .line 336
    move/from16 v20, v5

    .line 337
    .line 338
    move v5, v0

    .line 339
    move/from16 v6, v20

    .line 340
    .line 341
    move/from16 v20, v7

    .line 342
    .line 343
    move/from16 v7, v18

    .line 344
    .line 345
    move-object/from16 v18, v8

    .line 346
    .line 347
    move/from16 v8, v17

    .line 348
    .line 349
    :try_start_6
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 350
    .line 351
    .line 352
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 353
    .line 354
    .line 355
    goto :goto_a

    .line 356
    :catch_1
    move-exception v0

    .line 357
    goto :goto_9

    .line 358
    :catchall_2
    move-exception v0

    .line 359
    :goto_6
    move-object v3, v0

    .line 360
    goto :goto_7

    .line 361
    :catchall_3
    move-exception v0

    .line 362
    move-object/from16 v19, v4

    .line 363
    .line 364
    move/from16 v20, v7

    .line 365
    .line 366
    move-object/from16 v18, v8

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :goto_7
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :catchall_4
    move-exception v0

    .line 374
    move-object v4, v0

    .line 375
    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    :goto_8
    throw v3
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 379
    :catch_2
    move-exception v0

    .line 380
    move/from16 v20, v7

    .line 381
    .line 382
    move-object/from16 v18, v8

    .line 383
    .line 384
    :goto_9
    const-string v3, "PackageManager"

    .line 385
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v5, "Failed to prepare storage: "

    .line 389
    .line 390
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    :goto_a
    move-object/from16 v8, v18

    .line 404
    .line 405
    move/from16 v7, v20

    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    goto/16 :goto_4

    .line 409
    .line 410
    :cond_5
    move/from16 v20, v7

    .line 411
    .line 412
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 413
    .line 414
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 415
    .line 416
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 417
    .line 418
    monitor-enter v3

    .line 419
    :try_start_a
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v4, v13, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    xor-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    if-eqz v4, :cond_6

    .line 430
    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v6, "Partitions fingerprint changed from "

    .line 437
    .line 438
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v6, v13, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v6, " to "

    .line 447
    .line 448
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v0, "; regranting permissions for "

    .line 455
    .line 456
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    const/4 v5, 0x4

    .line 467
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_b

    .line 471
    :catchall_5
    move-exception v0

    .line 472
    goto :goto_e

    .line 473
    :cond_6
    :goto_b
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 474
    .line 475
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 476
    .line 477
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 478
    .line 479
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 480
    .line 481
    invoke-interface {v0, v9, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v13}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 488
    .line 489
    const/4 v4, 0x0

    .line 490
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 491
    .line 492
    .line 493
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 494
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_7

    .line 503
    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    check-cast v3, Lcom/android/server/pm/PackageFreezer;

    .line 509
    .line 510
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 511
    .line 512
    .line 513
    goto :goto_c

    .line 514
    :cond_7
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 515
    .line 516
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 517
    .line 518
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    new-instance v4, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 522
    .line 523
    invoke-direct {v4, v0}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 524
    .line 525
    .line 526
    const/4 v5, 0x1

    .line 527
    const/4 v6, 0x0

    .line 528
    const/4 v8, 0x0

    .line 529
    move-object v7, v12

    .line 530
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 531
    .line 532
    .line 533
    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 534
    .line 535
    monitor-enter v4

    .line 536
    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 537
    .line 538
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    monitor-exit v4

    .line 546
    :goto_d
    return-void

    .line 547
    :catchall_6
    move-exception v0

    .line 548
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 549
    throw v0

    .line 550
    :goto_e
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 551
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 552
    .line 553
    throw v0

    .line 554
    :catchall_7
    move-exception v0

    .line 555
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 556
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 557
    .line 558
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const-string v0, "PackageManager"

    .line 25
    .line 26
    const-string v1, "Unloading internal storage is probably a mistake; ignoring"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    iget-object v4, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    new-instance v13, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v14, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 49
    .line 50
    iget-object v5, v14, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    iget-object v15, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 58
    .line 59
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 60
    .line 61
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 62
    :try_start_1
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 65
    .line 66
    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object/from16 v16, v5

    .line 87
    .line 88
    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 89
    .line 90
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-nez v5, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 102
    .line 103
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const-string/jumbo v7, "unloadPrivatePackagesInner"

    .line 108
    .line 109
    .line 110
    const/4 v8, -0x1

    .line 111
    invoke-virtual {v5, v8, v1, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    .line 112
    .line 113
    .line 114
    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 116
    .line 117
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    new-instance v11, Lcom/android/server/pm/PackageRemovedInfo;

    .line 122
    .line 123
    invoke-direct {v11}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 124
    .line 125
    .line 126
    const/16 v18, 0x0

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v10, 0x1

    .line 131
    move-object v9, v4

    .line 132
    move-object v1, v12

    .line 133
    move/from16 v12, v18

    .line 134
    .line 135
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_2

    .line 140
    .line 141
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const-string v1, "PackageManager"

    .line 149
    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v6, "Failed to unload "

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    :goto_1
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v1, v5}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    goto :goto_0

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    goto :goto_6

    .line 192
    :goto_2
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :catchall_2
    move-exception v0

    .line 197
    move-object v2, v0

    .line 198
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :goto_3
    throw v1

    .line 202
    :cond_3
    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 206
    .line 207
    .line 208
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 209
    :try_start_6
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 210
    .line 211
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 212
    .line 213
    .line 214
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 215
    .line 216
    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 217
    .line 218
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    new-instance v6, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 222
    .line 223
    invoke-direct {v6, v1}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 224
    .line 225
    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v8, 0x0

    .line 228
    const/4 v10, 0x0

    .line 229
    move-object v9, v13

    .line 230
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 234
    .line 235
    monitor-enter v1

    .line 236
    :try_start_7
    iget-object v2, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 246
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v1, v0}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :goto_4
    const/4 v0, 0x3

    .line 262
    if-ge v3, v0, :cond_4

    .line 263
    .line 264
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 268
    .line 269
    .line 270
    const/4 v0, 0x1

    .line 271
    add-int/2addr v3, v0

    .line 272
    goto :goto_4

    .line 273
    :cond_4
    :goto_5
    return-void

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 276
    throw v0

    .line 277
    :catchall_4
    move-exception v0

    .line 278
    move-object v1, v0

    .line 279
    goto :goto_7

    .line 280
    :goto_6
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 281
    :try_start_a
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 282
    .line 283
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 284
    :goto_7
    :try_start_b
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 285
    .line 286
    .line 287
    goto :goto_8

    .line 288
    :catchall_5
    move-exception v0

    .line 289
    move-object v2, v0

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_8
    throw v1

    .line 294
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->run$com$android$server$pm$StorageEventHelper$$ExternalSyntheticLambda0()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
