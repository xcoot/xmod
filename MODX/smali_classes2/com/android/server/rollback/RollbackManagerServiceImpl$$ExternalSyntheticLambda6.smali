.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$2:[I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$2:[I

    .line 8
    .line 9
    iget v11, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$3:I

    .line 10
    .line 11
    iget-object v12, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$5:I

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 19
    .line 20
    .line 21
    sget-boolean v4, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 22
    .line 23
    const-string v5, " users="

    .line 24
    .line 25
    const-string v6, "RollbackManager"

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const-string/jumbo v4, "snapshotUserData pkg="

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    iget-object v7, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 52
    .line 53
    check-cast v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v4, v7, :cond_7

    .line 60
    .line 61
    iget-object v7, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 62
    .line 63
    check-cast v7, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lcom/android/server/rollback/Rollback;

    .line 70
    .line 71
    iget-object v8, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_2

    .line 81
    .line 82
    :cond_1
    move/from16 v17, v0

    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_2
    iget-object v9, v7, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_1

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Landroid/content/rollback/PackageRollbackInfo;

    .line 107
    .line 108
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-eqz v14, :cond_3

    .line 117
    .line 118
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-nez v9, :cond_1

    .line 123
    .line 124
    iget-object v9, v7, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    array-length v14, v3

    .line 134
    const/4 v15, 0x0

    .line 135
    :goto_1
    if-ge v15, v14, :cond_5

    .line 136
    .line 137
    aget v13, v3, v15

    .line 138
    .line 139
    invoke-virtual {v8, v13}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    .line 140
    .line 141
    .line 142
    move-result v16

    .line 143
    if-eqz v16, :cond_4

    .line 144
    .line 145
    move/from16 v16, v14

    .line 146
    .line 147
    new-instance v14, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    move/from16 v17, v0

    .line 150
    .line 151
    const-string v0, "User: "

    .line 152
    .line 153
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, " isn\'t unlocked, skipping CE userdata backup."

    .line 160
    .line 161
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, v13}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    .line 172
    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    move/from16 v17, v0

    .line 177
    .line 178
    move/from16 v16, v14

    .line 179
    .line 180
    const/4 v0, 0x3

    .line 181
    :goto_2
    invoke-virtual {v8, v10, v13, v9, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    .line 182
    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    move/from16 v14, v16

    .line 187
    .line 188
    move/from16 v0, v17

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    move/from16 v17, v0

    .line 192
    .line 193
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const/4 v8, 0x0

    .line 198
    :goto_3
    array-length v9, v3

    .line 199
    if-ge v8, v9, :cond_6

    .line 200
    .line 201
    aget v9, v3, v8

    .line 202
    .line 203
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    add-int/lit8 v8, v8, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    iget-object v0, v7, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 214
    .line 215
    invoke-static {v7, v0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 216
    .line 217
    .line 218
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    move/from16 v0, v17

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_7
    move/from16 v17, v0

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 227
    .line 228
    .line 229
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 230
    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    const-string/jumbo v0, "restoreUserData pkg="

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_8
    const/4 v0, 0x0

    .line 255
    :goto_5
    iget-object v4, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 256
    .line 257
    check-cast v4, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-ge v0, v4, :cond_f

    .line 264
    .line 265
    iget-object v4, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 266
    .line 267
    check-cast v4, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    move-object v13, v4

    .line 274
    check-cast v13, Lcom/android/server/rollback/Rollback;

    .line 275
    .line 276
    iget-object v14, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 277
    .line 278
    invoke-virtual {v13}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 282
    .line 283
    .line 284
    iget-boolean v4, v13, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 285
    .line 286
    if-nez v4, :cond_9

    .line 287
    .line 288
    goto/16 :goto_9

    .line 289
    .line 290
    :cond_9
    iget-object v4, v13, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 291
    .line 292
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_e

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    move-object v15, v5

    .line 311
    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    .line 312
    .line 313
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_a

    .line 322
    .line 323
    array-length v0, v3

    .line 324
    const/4 v1, 0x0

    .line 325
    const/4 v2, 0x0

    .line 326
    :goto_6
    if-ge v1, v0, :cond_d

    .line 327
    .line 328
    aget v6, v3, v1

    .line 329
    .line 330
    iget-object v4, v13, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 331
    .line 332
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    if-eqz v4, :cond_b

    .line 348
    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-interface {v4, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    const/4 v9, -0x1

    .line 358
    if-eq v8, v9, :cond_b

    .line 359
    .line 360
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    :goto_7
    const/4 v10, 0x1

    .line 372
    const/16 v16, 0x1

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_b
    invoke-virtual {v14, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_c

    .line 380
    .line 381
    new-instance v4, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 382
    .line 383
    invoke-direct {v4, v6, v11, v12}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_c
    const/4 v10, 0x3

    .line 391
    const/16 v16, 0x0

    .line 392
    .line 393
    :goto_8
    move-object v4, v14

    .line 394
    move-object v5, v15

    .line 395
    move v8, v11

    .line 396
    move-object v9, v12

    .line 397
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    .line 398
    .line 399
    .line 400
    or-int v2, v2, v16

    .line 401
    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_d
    if-eqz v2, :cond_f

    .line 406
    .line 407
    iget-object v0, v13, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 408
    .line 409
    invoke-static {v13, v0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 410
    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 414
    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :cond_f
    :goto_a
    if-lez v17, :cond_10

    .line 418
    .line 419
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 420
    .line 421
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 426
    .line 427
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    const-string v1, "Only the system is allowed to finish installs"

    .line 435
    .line 436
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-wide/32 v1, 0x40000

    .line 440
    .line 441
    .line 442
    const-string/jumbo v3, "restore"

    .line 443
    .line 444
    .line 445
    move/from16 v4, v17

    .line 446
    .line 447
    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 448
    .line 449
    .line 450
    const/16 v1, 0x9

    .line 451
    .line 452
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 453
    .line 454
    const/4 v2, 0x0

    .line 455
    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    .line 461
    .line 462
    :cond_10
    return-void
.end method
