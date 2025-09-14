.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 20
    .line 21
    const-string v4, "RollbackManager"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "enableRollback sessionId="

    .line 26
    .line 27
    invoke-static {v2, v1, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v5, 0x1

    .line 45
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    const-string v0, "Unable to find session for enabled rollback."

    .line 51
    .line 52
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    move-object/from16 v23, v6

    .line 56
    .line 57
    goto/16 :goto_14

    .line 58
    .line 59
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v1, v2

    .line 75
    :goto_1
    if-nez v1, :cond_3

    .line 76
    .line 77
    const-string v0, "Unable to find parent session for enabled rollback."

    .line 78
    .line 79
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v0, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    if-nez v8, :cond_b

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 97
    .line 98
    .line 99
    move v8, v7

    .line 100
    :goto_2
    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 101
    .line 102
    const v10, 0x7ffffffe

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    add-int/lit8 v11, v9, 0x1

    .line 110
    .line 111
    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 112
    .line 113
    invoke-virtual {v9, v11, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_9

    .line 118
    .line 119
    iget-object v8, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 120
    .line 121
    invoke-virtual {v8, v11, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_4

    .line 135
    .line 136
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    :goto_3
    move v15, v8

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    goto :goto_3

    .line 153
    :goto_4
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    sget-boolean v9, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 162
    .line 163
    if-eqz v9, :cond_5

    .line 164
    .line 165
    const-string v9, "createNewRollback id="

    .line 166
    .line 167
    const-string v10, " user="

    .line 168
    .line 169
    const-string v12, " installer="

    .line 170
    .line 171
    invoke-static {v11, v15, v9, v10, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_6

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    :goto_5
    move-object/from16 v17, v9

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    new-array v9, v5, [I

    .line 199
    .line 200
    aput v13, v9, v7

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :goto_6
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-eqz v9, :cond_7

    .line 208
    .line 209
    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 210
    .line 211
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    .line 212
    .line 213
    .line 214
    move-result-object v18

    .line 215
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v12, Ljava/io/File;

    .line 219
    .line 220
    iget-object v9, v9, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 221
    .line 222
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-direct {v12, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v9, Lcom/android/server/rollback/Rollback;

    .line 230
    .line 231
    const/4 v14, 0x1

    .line 232
    move-object v10, v9

    .line 233
    move-object/from16 v16, v8

    .line 234
    .line 235
    invoke-direct/range {v10 .. v18}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 236
    .line 237
    .line 238
    :goto_7
    move-object v8, v9

    .line 239
    goto :goto_8

    .line 240
    :cond_7
    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 241
    .line 242
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    .line 243
    .line 244
    .line 245
    move-result-object v18

    .line 246
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    new-instance v12, Ljava/io/File;

    .line 250
    .line 251
    iget-object v9, v9, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 252
    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-direct {v12, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v9, Lcom/android/server/rollback/Rollback;

    .line 261
    .line 262
    const/4 v14, 0x0

    .line 263
    move-object v10, v9

    .line 264
    move-object/from16 v16, v8

    .line 265
    .line 266
    invoke-direct/range {v10 .. v18}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 267
    .line 268
    .line 269
    goto :goto_7

    .line 270
    :goto_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->rollbackLifetime()Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_8

    .line 275
    .line 276
    iget-wide v9, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    .line 277
    .line 278
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 279
    .line 280
    .line 281
    iput-wide v9, v8, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 282
    .line 283
    :cond_8
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 284
    .line 285
    check-cast v1, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .line 292
    .line 293
    const/16 v10, 0x20

    .line 294
    .line 295
    if-ge v8, v10, :cond_a

    .line 296
    .line 297
    move v8, v9

    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    const-string v1, "Failed to allocate rollback ID"

    .line 303
    .line 304
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :cond_b
    :goto_9
    const-string v1, " is not installed"

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 311
    .line 312
    .line 313
    iget v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 314
    .line 315
    const/high16 v10, 0x40000

    .line 316
    .line 317
    and-int/2addr v10, v9

    .line 318
    if-nez v10, :cond_c

    .line 319
    .line 320
    const-string v0, "Rollback is not enabled."

    .line 321
    .line 322
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :goto_a
    move-object/from16 v23, v6

    .line 326
    .line 327
    goto/16 :goto_13

    .line 328
    .line 329
    :cond_c
    and-int/lit16 v10, v9, 0x800

    .line 330
    .line 331
    if-eqz v10, :cond_d

    .line 332
    .line 333
    const-string v0, "Rollbacks not supported for instant app install"

    .line 334
    .line 335
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_d
    iget-object v10, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 340
    .line 341
    if-nez v10, :cond_e

    .line 342
    .line 343
    const-string v0, "Session code path has not been resolved."

    .line 344
    .line 345
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_e
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v10}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    new-instance v11, Ljava/io/File;

    .line 358
    .line 359
    iget-object v12, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 360
    .line 361
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v10, v11, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_f

    .line 373
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v1, "Unable to parse new package: "

    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v4, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_f
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    check-cast v10, Landroid/content/pm/parsing/ApkLite;

    .line 405
    .line 406
    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    iget v12, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 411
    .line 412
    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getRollbackDataPolicy()I

    .line 413
    .line 414
    .line 415
    move-result v13

    .line 416
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 417
    .line 418
    .line 419
    if-eqz v13, :cond_10

    .line 420
    .line 421
    move v12, v13

    .line 422
    :cond_10
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 423
    .line 424
    .line 425
    move-result v13

    .line 426
    const/high16 v14, 0x20000

    .line 427
    .line 428
    if-nez v13, :cond_11

    .line 429
    .line 430
    and-int v13, v9, v14

    .line 431
    .line 432
    if-eqz v13, :cond_11

    .line 433
    .line 434
    const/4 v13, 0x2

    .line 435
    if-eq v12, v13, :cond_11

    .line 436
    .line 437
    const-string v0, "Only RETAIN is supported for rebootless APEX: "

    .line 438
    .line 439
    invoke-static {v0, v11, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_11
    const-string v13, "Enabling rollback for install of "

    .line 444
    .line 445
    const-string v15, ", session:"

    .line 446
    .line 447
    invoke-static {v13, v11, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    iget v15, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 452
    .line 453
    const-string v5, ", rollbackDataPolicy="

    .line 454
    .line 455
    const-string v14, ", rollbackId:"

    .line 456
    .line 457
    invoke-static {v15, v12, v5, v14, v13}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 458
    .line 459
    .line 460
    iget-object v5, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 461
    .line 462
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v5, ", originalSessionId:"

    .line 470
    .line 471
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget v5, v8, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 475
    .line 476
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    if-nez v5, :cond_12

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_12
    iget-object v13, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 494
    .line 495
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 496
    .line 497
    .line 498
    move-result-object v13

    .line 499
    const-string v14, "android.permission.MANAGE_ROLLBACKS"

    .line 500
    .line 501
    invoke-virtual {v13, v14, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    if-nez v14, :cond_13

    .line 506
    .line 507
    const/4 v14, 0x1

    .line 508
    goto :goto_b

    .line 509
    :cond_13
    move v14, v7

    .line 510
    :goto_b
    const-string v15, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 511
    .line 512
    invoke-virtual {v13, v15, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v13

    .line 516
    if-nez v13, :cond_14

    .line 517
    .line 518
    const/4 v13, 0x1

    .line 519
    goto :goto_c

    .line 520
    :cond_14
    move v13, v7

    .line 521
    :goto_c
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 522
    .line 523
    .line 524
    move-result-object v15

    .line 525
    iget-object v15, v15, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 526
    .line 527
    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v15

    .line 531
    if-nez v15, :cond_15

    .line 532
    .line 533
    iget-object v15, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 534
    .line 535
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 536
    .line 537
    .line 538
    move-result-object v15

    .line 539
    :try_start_0
    invoke-virtual {v15, v11, v7}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 540
    .line 541
    .line 542
    move-result-object v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    if-eqz v15, :cond_16

    .line 544
    .line 545
    :cond_15
    if-nez v14, :cond_17

    .line 546
    .line 547
    :catch_0
    :cond_16
    if-eqz v13, :cond_18

    .line 548
    .line 549
    :cond_17
    const/high16 v5, 0x20000

    .line 550
    .line 551
    goto :goto_e

    .line 552
    :cond_18
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v1, "Installer "

    .line 555
    .line 556
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v1, " is not allowed to enable rollback on "

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    goto/16 :goto_a

    .line 578
    .line 579
    :goto_e
    and-int/2addr v5, v9

    .line 580
    if-eqz v5, :cond_19

    .line 581
    .line 582
    const/4 v5, 0x1

    .line 583
    goto :goto_f

    .line 584
    :cond_19
    move v5, v7

    .line 585
    :goto_f
    :try_start_1
    invoke-virtual {v0, v11}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 586
    .line 587
    .line 588
    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 589
    if-eqz v5, :cond_1a

    .line 590
    .line 591
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 596
    .line 597
    check-cast v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 598
    .line 599
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 600
    .line 601
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 602
    .line 603
    invoke-virtual {v13, v11}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v13

    .line 607
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 608
    .line 609
    .line 610
    move-result-object v13

    .line 611
    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v14

    .line 615
    if-eqz v14, :cond_1a

    .line 616
    .line 617
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v14

    .line 621
    check-cast v14, Ljava/lang/String;

    .line 622
    .line 623
    :try_start_2
    invoke-virtual {v0, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 624
    .line 625
    .line 626
    move-result-object v15
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 627
    move/from16 v24, v5

    .line 628
    .line 629
    move-object/from16 v23, v6

    .line 630
    .line 631
    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 632
    .line 633
    .line 634
    move-result-wide v5

    .line 635
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 636
    .line 637
    .line 638
    new-instance v15, Landroid/content/rollback/PackageRollbackInfo;

    .line 639
    .line 640
    move-object/from16 v25, v13

    .line 641
    .line 642
    new-instance v13, Landroid/content/pm/VersionedPackage;

    .line 643
    .line 644
    invoke-direct {v13, v14, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 645
    .line 646
    .line 647
    new-instance v7, Landroid/content/pm/VersionedPackage;

    .line 648
    .line 649
    invoke-direct {v7, v14, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 650
    .line 651
    .line 652
    new-instance v17, Ljava/util/ArrayList;

    .line 653
    .line 654
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .line 656
    .line 657
    new-instance v18, Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .line 661
    .line 662
    new-instance v21, Ljava/util/ArrayList;

    .line 663
    .line 664
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .line 666
    .line 667
    const/16 v19, 0x0

    .line 668
    .line 669
    const/16 v20, 0x1

    .line 670
    .line 671
    move-object v14, v15

    .line 672
    move-object v5, v15

    .line 673
    move-object v15, v13

    .line 674
    move-object/from16 v16, v7

    .line 675
    .line 676
    move/from16 v22, v12

    .line 677
    .line 678
    invoke-direct/range {v14 .. v22}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 679
    .line 680
    .line 681
    iget-object v6, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 682
    .line 683
    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-object/from16 v6, v23

    .line 691
    .line 692
    move/from16 v5, v24

    .line 693
    .line 694
    move-object/from16 v13, v25

    .line 695
    .line 696
    const/4 v7, 0x0

    .line 697
    goto :goto_10

    .line 698
    :catch_1
    move-object/from16 v23, v6

    .line 699
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    goto/16 :goto_13

    .line 719
    .line 720
    :cond_1a
    move/from16 v24, v5

    .line 721
    .line 722
    move-object/from16 v23, v6

    .line 723
    .line 724
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 725
    .line 726
    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    int-to-long v5, v5

    .line 731
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 732
    .line 733
    .line 734
    move-result-wide v9

    .line 735
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 736
    .line 737
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 738
    .line 739
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    .line 740
    .line 741
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 742
    .line 743
    .line 744
    :try_start_3
    invoke-static {v8, v11, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v7

    .line 751
    if-nez v7, :cond_1b

    .line 752
    .line 753
    array-length v7, v1

    .line 754
    const/4 v13, 0x0

    .line 755
    :goto_11
    if-ge v13, v7, :cond_1b

    .line 756
    .line 757
    aget-object v14, v1, v13

    .line 758
    .line 759
    invoke-static {v8, v11, v14}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 760
    .line 761
    .line 762
    add-int/lit8 v13, v13, 0x1

    .line 763
    .line 764
    goto :goto_11

    .line 765
    :catch_2
    move-exception v0

    .line 766
    goto :goto_12

    .line 767
    :cond_1b
    new-instance v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 768
    .line 769
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 770
    .line 771
    invoke-direct {v15, v11, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 772
    .line 773
    .line 774
    new-instance v4, Landroid/content/pm/VersionedPackage;

    .line 775
    .line 776
    invoke-direct {v4, v11, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 777
    .line 778
    .line 779
    new-instance v17, Ljava/util/ArrayList;

    .line 780
    .line 781
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .line 783
    .line 784
    new-instance v18, Ljava/util/ArrayList;

    .line 785
    .line 786
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .line 788
    .line 789
    new-instance v21, Ljava/util/ArrayList;

    .line 790
    .line 791
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .line 793
    .line 794
    const/16 v20, 0x0

    .line 795
    .line 796
    move-object v14, v1

    .line 797
    move-object/from16 v16, v4

    .line 798
    .line 799
    move/from16 v19, v24

    .line 800
    .line 801
    move/from16 v22, v12

    .line 802
    .line 803
    invoke-direct/range {v14 .. v22}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 804
    .line 805
    .line 806
    iget-object v4, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 807
    .line 808
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 816
    .line 817
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    .line 818
    .line 819
    .line 820
    move-result v1

    .line 821
    if-ge v1, v2, :cond_1c

    .line 822
    .line 823
    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 824
    .line 825
    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setRollbackImpactLevel(I)V

    .line 826
    .line 827
    .line 828
    :cond_1c
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-eqz v1, :cond_1d

    .line 833
    .line 834
    invoke-virtual {v0, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    move v7, v0

    .line 839
    goto :goto_14

    .line 840
    :cond_1d
    const/4 v7, 0x1

    .line 841
    goto :goto_14

    .line 842
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    const-string v2, "Unable to copy package for rollback for "

    .line 845
    .line 846
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .line 858
    .line 859
    goto :goto_13

    .line 860
    :catch_3
    move-object/from16 v23, v6

    .line 861
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    :goto_13
    const/4 v7, 0x0

    .line 881
    :goto_14
    if-nez v7, :cond_1e

    .line 882
    .line 883
    const/4 v5, -0x1

    .line 884
    goto :goto_15

    .line 885
    :cond_1e
    const/4 v5, 0x1

    .line 886
    :goto_15
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 891
    .line 892
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 893
    .line 894
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 895
    .line 896
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 897
    .line 898
    const/16 v1, 0x15

    .line 899
    .line 900
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 905
    .line 906
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 907
    .line 908
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    .line 910
    .line 911
    return-void
.end method
