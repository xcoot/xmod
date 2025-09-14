.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/ParceledListSlice;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/content/IntentSender;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/content/IntentSender;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v6, "commitRollback id="

    .line 26
    .line 27
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, " caller="

    .line 34
    .line 35
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v6, "RollbackManager"

    .line 46
    .line 47
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    move v7, v3

    .line 55
    :goto_0
    iget-object v8, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 56
    .line 57
    check-cast v8, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ge v7, v8, :cond_1

    .line 64
    .line 65
    iget-object v8, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 66
    .line 67
    check-cast v8, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lcom/android/server/rollback/Rollback;

    .line 74
    .line 75
    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 76
    .line 77
    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-ne v10, v2, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v8, 0x0

    .line 88
    :goto_1
    const-string v2, "Rollback unavailable"

    .line 89
    .line 90
    const/4 v7, 0x2

    .line 91
    if-nez v8, :cond_2

    .line 92
    .line 93
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v7, v0, v5, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_b

    .line 99
    .line 100
    :cond_2
    iget-object v1, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_3

    .line 110
    .line 111
    invoke-static {v7, v1, v5, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_b

    .line 115
    .line 116
    :cond_3
    iget-object v2, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    const/4 v10, 0x1

    .line 131
    if-eqz v7, :cond_6

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroid/content/rollback/PackageRollbackInfo;

    .line 138
    .line 139
    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_4

    .line 144
    .line 145
    move v2, v3

    .line 146
    :goto_2
    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 147
    .line 148
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-ge v2, v7, :cond_6

    .line 153
    .line 154
    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 155
    .line 156
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-static {v7}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    iget-object v11, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 165
    .line 166
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-le v7, v11, :cond_5

    .line 171
    .line 172
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 173
    .line 174
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 179
    .line 180
    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 181
    .line 182
    invoke-static {v7, v2}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    const-string v0, "Rollback may violate a minExtensionVersion constraint"

    .line 189
    .line 190
    invoke-static {v10, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    :try_start_0
    iget v2, v8, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 199
    .line 200
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v4, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :try_start_1
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    new-instance v7, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 217
    .line 218
    invoke-direct {v7, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 225
    .line 226
    .line 227
    iget-object v11, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 228
    .line 229
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_7

    .line 234
    .line 235
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :catch_0
    move-exception v0

    .line 240
    goto/16 :goto_a

    .line 241
    .line 242
    :cond_7
    :goto_3
    const/4 v11, 0x5

    .line 243
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    new-instance v13, Ljava/util/ArrayList;

    .line 255
    .line 256
    iget-object v14, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 257
    .line 258
    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .line 268
    .line 269
    iget-object v14, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 270
    .line 271
    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    if-eqz v15, :cond_13

    .line 284
    .line 285
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v15

    .line 289
    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    .line 290
    .line 291
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_8

    .line 303
    .line 304
    const/4 v3, 0x0

    .line 305
    goto :goto_4

    .line 306
    :cond_8
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 307
    .line 308
    invoke-direct {v3, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 309
    .line 310
    .line 311
    iget-object v9, v8, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    if-eqz v16, :cond_9

    .line 318
    .line 319
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    :cond_9
    if-eqz v9, :cond_a

    .line 328
    .line 329
    invoke-virtual {v3, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_a
    invoke-virtual {v3, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-virtual {v9}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 340
    .line 341
    .line 342
    move-result-wide v10

    .line 343
    invoke-virtual {v3, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 344
    .line 345
    .line 346
    const/4 v9, 0x5

    .line 347
    invoke-virtual {v3, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 348
    .line 349
    .line 350
    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 351
    .line 352
    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    if-eqz v10, :cond_b

    .line 357
    .line 358
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 359
    .line 360
    .line 361
    :cond_b
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    if-eqz v10, :cond_c

    .line 366
    .line 367
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 368
    .line 369
    .line 370
    :cond_c
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    new-instance v9, Ljava/io/File;

    .line 383
    .line 384
    move-object/from16 v24, v2

    .line 385
    .line 386
    iget-object v2, v8, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 387
    .line 388
    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_d

    .line 396
    .line 397
    array-length v9, v2

    .line 398
    if-nez v9, :cond_e

    .line 399
    .line 400
    :cond_d
    const/4 v2, 0x0

    .line 401
    :cond_e
    if-nez v2, :cond_f

    .line 402
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v2, "Backup copy of package: "

    .line 409
    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v2, " is inaccessible"

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const/4 v2, 0x1

    .line 430
    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_b

    .line 434
    .line 435
    :cond_f
    array-length v9, v2

    .line 436
    const/4 v11, 0x0

    .line 437
    :goto_5
    if-ge v11, v9, :cond_12

    .line 438
    .line 439
    aget-object v15, v2, v11

    .line 440
    .line 441
    move-object/from16 v25, v2

    .line 442
    .line 443
    const/high16 v2, 0x10000000

    .line 444
    .line 445
    invoke-static {v15, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 446
    .line 447
    .line 448
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 449
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 450
    .line 451
    .line 452
    move-result-wide v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    move-object/from16 v28, v4

    .line 454
    .line 455
    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    .line 461
    .line 462
    goto :goto_6

    .line 463
    :catchall_0
    move-exception v0

    .line 464
    goto :goto_7

    .line 465
    :catch_1
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v18

    .line 469
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 470
    .line 471
    .line 472
    move-result-wide v21

    .line 473
    const-wide/16 v19, 0x0

    .line 474
    .line 475
    move-object/from16 v17, v10

    .line 476
    .line 477
    move-object/from16 v23, v2

    .line 478
    .line 479
    invoke-virtual/range {v17 .. v23}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    .line 481
    .line 482
    :goto_6
    :try_start_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 483
    .line 484
    .line 485
    if-eqz v2, :cond_10

    .line 486
    .line 487
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 488
    .line 489
    .line 490
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 491
    .line 492
    move-object/from16 v2, v25

    .line 493
    .line 494
    move-object/from16 v4, v28

    .line 495
    .line 496
    goto :goto_5

    .line 497
    :catchall_1
    move-exception v0

    .line 498
    move-object v3, v0

    .line 499
    goto :goto_8

    .line 500
    :goto_7
    :try_start_7
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    .line 502
    .line 503
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 504
    :goto_8
    if-eqz v2, :cond_11

    .line 505
    .line 506
    :try_start_8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 507
    .line 508
    .line 509
    goto :goto_9

    .line 510
    :catchall_2
    move-exception v0

    .line 511
    move-object v2, v0

    .line 512
    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 513
    .line 514
    .line 515
    :cond_11
    :goto_9
    throw v3

    .line 516
    :cond_12
    move-object/from16 v28, v4

    .line 517
    .line 518
    invoke-virtual {v12, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 519
    .line 520
    .line 521
    move-object/from16 v2, v24

    .line 522
    .line 523
    move-object/from16 v4, v28

    .line 524
    .line 525
    const/4 v3, 0x0

    .line 526
    const/4 v10, 0x1

    .line 527
    const/4 v11, 0x5

    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :cond_13
    invoke-static {v13}, Lcom/android/server/RescueParty;->resetDeviceConfigForPackages(Ljava/util/List;)V

    .line 531
    .line 532
    .line 533
    new-instance v2, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    .line 534
    .line 535
    invoke-direct {v2, v8, v1, v5, v0}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 536
    .line 537
    .line 538
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver;

    .line 539
    .line 540
    invoke-direct {v0, v2}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 541
    .line 542
    .line 543
    const-string v2, ""

    .line 544
    .line 545
    const/4 v3, 0x3

    .line 546
    invoke-virtual {v8, v3, v2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iget-object v2, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 550
    .line 551
    invoke-virtual {v2, v7}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 552
    .line 553
    .line 554
    const/4 v2, 0x1

    .line 555
    iput-boolean v2, v8, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 556
    .line 557
    new-instance v2, Landroid/content/IntentSender;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;

    .line 560
    .line 561
    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 565
    .line 566
    .line 567
    goto :goto_b

    .line 568
    :goto_a
    const-string v2, "Rollback failed"

    .line 569
    .line 570
    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .line 572
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v3, "IOException: "

    .line 576
    .line 577
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    const/4 v2, 0x1

    .line 592
    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    goto :goto_b

    .line 596
    :catch_2
    move v2, v10

    .line 597
    const-string v0, "Invalid callerPackageName"

    .line 598
    .line 599
    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :goto_b
    return-void
.end method
