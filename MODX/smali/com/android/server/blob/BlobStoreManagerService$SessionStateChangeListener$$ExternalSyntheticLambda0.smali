.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 25

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    move-object/from16 v3, p1

    .line 6
    check-cast v3, Lcom/android/server/blob/BlobStoreManagerService;

    .line 8
    move-object/from16 v4, p2

    .line 10
    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v5, "Session is invalid; deleted "

    .line 17
    const-string v6, "Failed to commit: too many committed blobs. count: "

    .line 19
    iget-object v7, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 21
    monitor-enter v7

    .line 22
    :try_start_0
    iget v8, v4, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 24
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 25
    if-eq v8, v2, :cond_d

    .line 27
    const/4 v7, 0x3

    .line 28
    if-eq v8, v7, :cond_c

    .line 30
    const/4 v7, 0x4

    .line 31
    if-eq v8, v7, :cond_0

    .line 33
    const/4 v0, 0x5

    .line 34
    if-eq v8, v0, :cond_d

    .line 36
    const-string v0, "BlobStore"

    .line 38
    iget-object v1, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_1
    iget v2, v4, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Invalid session state: "

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto/16 :goto_a

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw v0

    .line 62
    :cond_0
    iget-object v5, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 64
    monitor-enter v5

    .line 65
    :try_start_3
    iget v7, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 67
    iget-object v8, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 69
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 74
    new-instance v10, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    .line 76
    invoke-direct {v10, v8, v7, v9, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 79
    invoke-virtual {v3, v10}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 82
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 85
    move-result v2

    .line 86
    sget-boolean v7, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 88
    sget v7, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 90
    if-lt v2, v7, :cond_1

    .line 92
    const-string v0, "BlobStore"

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "; blob: "

    .line 104
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v4, v1}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 123
    iget v0, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 125
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 128
    move-result v0

    .line 129
    invoke-virtual {v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 132
    move-result-object v0

    .line 133
    iget-wide v1, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 138
    iget v7, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 140
    iget-wide v8, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 142
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    .line 145
    move-result-wide v10

    .line 146
    const/4 v12, 0x4

    .line 147
    const/16 v6, 0x12a

    .line 149
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 152
    monitor-exit v5

    .line 153
    goto/16 :goto_a

    .line 155
    :catchall_1
    move-exception v0

    .line 156
    goto/16 :goto_8

    .line 158
    :cond_1
    iget-object v2, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 160
    iget-object v6, v4, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 162
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 165
    move-result v2

    .line 166
    if-ltz v2, :cond_2

    .line 168
    iget-object v6, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 170
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 176
    goto :goto_0

    .line 177
    :cond_2
    new-instance v2, Lcom/android/server/blob/BlobMetadata;

    .line 179
    iget-object v6, v3, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 181
    iget-wide v7, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 183
    iget-object v9, v4, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 185
    invoke-direct {v2, v6, v7, v8, v9}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 188
    invoke-virtual {v3, v2}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 191
    :goto_0
    iget-object v6, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 193
    iget v7, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 195
    iget-object v8, v2, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 197
    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :try_start_4
    iget-object v9, v2, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 200
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 203
    move-result v9

    .line 204
    move v10, v0

    .line 205
    :goto_1
    if-ge v10, v9, :cond_4

    .line 207
    iget-object v11, v2, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 209
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 212
    move-result-object v11

    .line 213
    check-cast v11, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 215
    iget v12, v11, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 217
    if-ne v12, v7, :cond_3

    .line 219
    iget-object v12, v11, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 221
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v12

    .line 225
    if-eqz v12, :cond_3

    .line 227
    monitor-exit v8

    .line 228
    goto :goto_2

    .line 229
    :catchall_2
    move-exception v0

    .line 230
    goto/16 :goto_7

    .line 232
    :cond_3
    add-int/2addr v10, v1

    .line 233
    goto :goto_1

    .line 234
    :cond_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 235
    const/4 v11, 0x0

    .line 236
    :goto_2
    const-wide/16 v6, 0x0

    .line 238
    if-nez v11, :cond_5

    .line 240
    move-wide v8, v6

    .line 241
    goto :goto_3

    .line 242
    :cond_5
    :try_start_5
    iget-wide v8, v11, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 244
    :goto_3
    new-instance v10, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 246
    iget-object v13, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 248
    iget v14, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 250
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;

    .line 253
    move-result-object v15

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    move-result-wide v16

    .line 258
    cmp-long v6, v8, v6

    .line 260
    if-eqz v6, :cond_7

    .line 262
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 264
    add-long/2addr v6, v8

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    move-result-wide v18

    .line 269
    cmp-long v6, v6, v18

    .line 271
    if-gez v6, :cond_6

    .line 273
    goto :goto_4

    .line 274
    :cond_6
    move-wide/from16 v16, v8

    .line 276
    :cond_7
    :goto_4
    move-object v12, v10

    .line 277
    invoke-direct/range {v12 .. v17}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    .line 280
    invoke-virtual {v2, v10}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 283
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V

    .line 286
    iget v6, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 288
    iget-wide v7, v2, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 290
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 293
    move-result-wide v22

    .line 294
    const/16 v24, 0x1

    .line 296
    const/16 v18, 0x12a

    .line 298
    move/from16 v19, v6

    .line 300
    move-wide/from16 v20, v7

    .line 302
    invoke-static/range {v18 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 305
    invoke-virtual {v4, v0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 308
    goto :goto_6

    .line 309
    :catch_0
    move-exception v0

    .line 310
    if-nez v11, :cond_8

    .line 312
    :try_start_7
    invoke-virtual {v2, v10}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    .line 315
    goto :goto_5

    .line 316
    :cond_8
    invoke-virtual {v2, v11}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    .line 319
    :goto_5
    const-string v6, "BlobStore"

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string v8, "Error committing the blob: "

    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v7

    .line 338
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget v9, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 343
    iget-wide v10, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 345
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 348
    move-result-wide v12

    .line 349
    const/4 v14, 0x2

    .line 350
    const/16 v8, 0x12a

    .line 352
    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 355
    invoke-virtual {v4, v1}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 358
    iget-wide v0, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 360
    iget-wide v6, v2, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 362
    cmp-long v0, v0, v6

    .line 364
    if-nez v0, :cond_9

    .line 366
    invoke-virtual {v3, v2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 369
    iget-object v0, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 371
    iget-object v1, v2, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 373
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_9
    :goto_6
    iget-wide v0, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 378
    iget-wide v6, v2, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 380
    cmp-long v0, v0, v6

    .line 382
    if-eqz v0, :cond_a

    .line 384
    invoke-virtual {v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 387
    :cond_a
    iget v0, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 389
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 392
    move-result v0

    .line 393
    invoke-virtual {v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 396
    move-result-object v0

    .line 397
    iget-wide v1, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 402
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 404
    if-eqz v0, :cond_b

    .line 406
    const-string v0, "BlobStore"

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    const-string v2, "Successfully committed session "

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v1

    .line 425
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_b
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 429
    goto :goto_a

    .line 430
    :goto_7
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 431
    :try_start_9
    throw v0

    .line 432
    :goto_8
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 433
    throw v0

    .line 434
    :cond_c
    iget-object v1, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 436
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    .line 438
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 441
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    goto :goto_a

    .line 445
    :cond_d
    iget-object v1, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 447
    monitor-enter v1

    .line 448
    :try_start_a
    invoke-virtual {v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 451
    iget v0, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 453
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 456
    move-result v0

    .line 457
    invoke-virtual {v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 460
    move-result-object v0

    .line 461
    iget-wide v6, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 463
    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 466
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 468
    if-eqz v0, :cond_e

    .line 470
    const-string v0, "BlobStore"

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 474
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    goto :goto_9

    .line 488
    :catchall_3
    move-exception v0

    .line 489
    goto :goto_d

    .line 490
    :cond_e
    :goto_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 491
    :goto_a
    iget-object v2, v3, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 493
    monitor-enter v2

    .line 494
    :try_start_b
    invoke-virtual {v3}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 497
    goto :goto_b

    .line 498
    :catchall_4
    move-exception v0

    .line 499
    goto :goto_c

    .line 500
    :catch_1
    :goto_b
    :try_start_c
    monitor-exit v2

    .line 501
    return-void

    .line 502
    :goto_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 503
    throw v0

    .line 504
    :goto_d
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 505
    throw v0

    .line 506
    :catchall_5
    move-exception v0

    .line 507
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 508
    throw v0
.end method
