.class public final Lcom/android/server/blob/BlobStoreManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveBlobIds:Landroid/util/ArraySet;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBlobsLock:Ljava/lang/Object;

.field public final mBlobsMap:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMaxSessionId:J

.field public final mHandler:Landroid/os/Handler;

.field public final mKnownBlobIds:Landroid/util/ArraySet;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRandom:Ljava/util/Random;

.field public final mSaveBlobsInfoRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

.field public final mSaveSessionsRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

.field public final mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field public final mSessions:Landroid/util/SparseArray;

.field public final mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;


# direct methods
.method public static -$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v10, p6

    .line 6
    .line 7
    move-object/from16 v11, p7

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v9, "Caller not allowed to access "

    .line 11
    .line 12
    const-string v12, "Acquired lease on "

    .line 13
    .line 14
    const-string v7, "Too many leased blobs for the caller: "

    .line 15
    .line 16
    iget-object v13, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v13

    .line 19
    :try_start_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    .line 25
    .line 26
    invoke-direct {v4, v11, v10, v3, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 37
    .line 38
    sget v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 39
    .line 40
    if-ge v8, v2, :cond_7

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    cmp-long v4, p4, v2

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-wide v4, v1, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    .line 49
    .line 50
    cmp-long v2, v4, v2

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    cmp-long v2, p4, v4

    .line 55
    .line 56
    if-gtz v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/16 v0, 0x12b

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    move/from16 v1, p6

    .line 67
    .line 68
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v1, "Lease expiry cannot be later than blobs expiry time"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v14, v2

    .line 89
    check-cast v14, Lcom/android/server/blob/BlobMetadata;

    .line 90
    .line 91
    if-eqz v14, :cond_5

    .line 92
    .line 93
    invoke-virtual {v14, v10, v11}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v14}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    invoke-virtual {v0, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    cmp-long v2, v2, v4

    .line 110
    .line 111
    if-gtz v2, :cond_4

    .line 112
    .line 113
    iget-wide v4, v14, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 114
    .line 115
    invoke-virtual {v14}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    const/4 v8, 0x1

    .line 120
    const/16 v2, 0x12b

    .line 121
    .line 122
    move/from16 v3, p6

    .line 123
    .line 124
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 125
    .line 126
    .line 127
    iget-object v15, v14, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    new-instance v8, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 131
    .line 132
    iget-object v3, v14, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    move-object v2, v8

    .line 135
    move-object/from16 v4, p7

    .line 136
    .line 137
    move/from16 v5, p6

    .line 138
    .line 139
    move/from16 v6, p2

    .line 140
    .line 141
    move-object/from16 v7, p3

    .line 142
    .line 143
    move-object v0, v8

    .line 144
    move-wide/from16 v8, p4

    .line 145
    .line 146
    invoke-direct/range {v2 .. v9}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v14, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 150
    .line 151
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    iget-object v2, v14, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 155
    .line 156
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 161
    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    const-string v0, "BlobStore"

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, "; callingUid="

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", callingPackage="

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 198
    .line 199
    .line 200
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    return-void

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :try_start_4
    throw v0

    .line 205
    :cond_4
    iget-wide v2, v14, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 206
    .line 207
    invoke-virtual {v14}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    const/4 v6, 0x5

    .line 212
    const/16 v0, 0x12b

    .line 213
    .line 214
    move/from16 v1, p6

    .line 215
    .line 216
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Landroid/os/LimitExceededException;

    .line 220
    .line 221
    const-string v1, "Total amount of data with an active lease is exceeding the max limit"

    .line 222
    .line 223
    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_5
    :goto_1
    if-nez v14, :cond_6

    .line 228
    .line 229
    const/16 v2, 0x12b

    .line 230
    .line 231
    const-wide/16 v4, 0x0

    .line 232
    .line 233
    const-wide/16 v6, 0x0

    .line 234
    .line 235
    const/4 v8, 0x2

    .line 236
    move/from16 v3, p6

    .line 237
    .line 238
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_6
    iget-wide v4, v14, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 243
    .line 244
    invoke-virtual {v14}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    const/4 v8, 0x3

    .line 249
    const/16 v2, 0x12b

    .line 250
    .line 251
    move/from16 v3, p6

    .line 252
    .line 253
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 254
    .line 255
    .line 256
    :goto_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 257
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, "; callingUid="

    .line 267
    .line 268
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", callingPackage="

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_7
    const/16 v0, 0x12b

    .line 291
    .line 292
    const-wide/16 v2, 0x0

    .line 293
    .line 294
    const-wide/16 v4, 0x0

    .line 295
    .line 296
    const/4 v6, 0x6

    .line 297
    move/from16 v1, p6

    .line 298
    .line 299
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Landroid/os/LimitExceededException;

    .line 303
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :goto_3
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    throw v0
.end method

.method public static -$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p2

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    const-string v1, "Too many active sessions for the caller: "

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v13

    .line 12
    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    .line 19
    .line 20
    invoke-direct {v4, v11, v12, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 21
    .line 22
    .line 23
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v0, v5, v4}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sget-boolean v4, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 35
    .line 36
    sget v4, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 37
    .line 38
    if-ge v2, v4, :cond_4

    .line 39
    .line 40
    :goto_0
    iget-object v1, v0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    const-wide/high16 v4, -0x8000000000000000L

    .line 47
    .line 48
    cmp-long v4, v1, v4

    .line 49
    .line 50
    const-wide/16 v5, 0x0

    .line 51
    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    move-wide v14, v5

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    move-wide v14, v1

    .line 61
    :goto_1
    iget-object v1, v0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 62
    .line 63
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-gez v1, :cond_2

    .line 72
    .line 73
    cmp-long v1, v14, v5

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    new-instance v10, Lcom/android/server/blob/BlobStoreSession;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v8, v0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v16

    .line 87
    move-object v1, v10

    .line 88
    move-wide v3, v14

    .line 89
    move-object/from16 v5, p1

    .line 90
    .line 91
    move/from16 v6, p2

    .line 92
    .line 93
    move-object/from16 v7, p3

    .line 94
    .line 95
    move-object/from16 v18, v8

    .line 96
    .line 97
    move-wide/from16 v8, v16

    .line 98
    .line 99
    move-wide/from16 v16, v14

    .line 100
    .line 101
    move-object v14, v10

    .line 102
    move-object/from16 v10, v18

    .line 103
    .line 104
    invoke-direct/range {v1 .. v10}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 105
    .line 106
    .line 107
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-wide v2, v14, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 116
    .line 117
    invoke-virtual {v1, v2, v3, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-wide v1, v14, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 123
    .line 124
    .line 125
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 126
    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    const-string v1, "BlobStore"

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v3, "Created session for "

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-object/from16 v4, p1

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, "; callingUid="

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, ", callingPackage="

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto :goto_3

    .line 172
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 173
    .line 174
    .line 175
    monitor-exit v13

    .line 176
    return-wide v16

    .line 177
    :cond_2
    move-object/from16 v4, p1

    .line 178
    .line 179
    add-int/lit8 v1, v3, 0x1

    .line 180
    .line 181
    const/16 v2, 0x20

    .line 182
    .line 183
    if-ge v3, v2, :cond_3

    .line 184
    .line 185
    move v3, v1

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-string v1, "Failed to allocate session ID"

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_4
    new-instance v0, Landroid/os/LimitExceededException;

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :goto_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    throw v0
.end method

.method public static -$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "List of blobs ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "):"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    move v2, v1

    .line 40
    :goto_0
    if-ge v2, v0, :cond_8

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 49
    .line 50
    iget-wide v4, v3, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 51
    .line 52
    iget-object v6, p2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_0

    .line 59
    .line 60
    iget-object v6, p2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ltz v4, :cond_7

    .line 71
    .line 72
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v5, "Blob #"

    .line 75
    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-wide v5, v3, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 80
    .line 81
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v4, "size: "

    .line 95
    .line 96
    .line 97
    iget-object v5, v3, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter v5

    .line 100
    :try_start_0
    const-string/jumbo v6, "blobHandle:"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 107
    .line 108
    .line 109
    iget-object v6, v3, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 110
    .line 111
    iget-boolean v7, p2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    .line 112
    .line 113
    invoke-virtual {v6, p1, v7}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 117
    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 127
    .line 128
    .line 129
    move-result-wide v7

    .line 130
    const/16 v9, 0x8

    .line 131
    .line 132
    invoke-static {v4, v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v4, "Committers:"

    .line 147
    .line 148
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    .line 153
    .line 154
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_1

    .line 161
    .line 162
    const-string v4, "<empty>"

    .line 163
    .line 164
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_1
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    move v6, v1

    .line 178
    :goto_1
    if-ge v6, v4, :cond_2

    .line 179
    .line 180
    iget-object v7, v3, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 181
    .line 182
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 187
    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v9, "committer "

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 226
    .line 227
    .line 228
    const-string v4, "Leasees:"

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    .line 235
    .line 236
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 237
    .line 238
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_3

    .line 243
    .line 244
    const-string v4, "<empty>"

    .line 245
    .line 246
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_3
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 251
    .line 252
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    move v6, v1

    .line 257
    :goto_3
    if-ge v6, v4, :cond_4

    .line 258
    .line 259
    iget-object v7, v3, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 260
    .line 261
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    check-cast v7, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 266
    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v9, "leasee "

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 293
    .line 294
    .line 295
    iget-object v8, v3, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-virtual {v7, v8, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 301
    .line 302
    .line 303
    add-int/lit8 v6, v6, 0x1

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    const-string v4, "Open fds:"

    .line 310
    .line 311
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 315
    .line 316
    .line 317
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 318
    .line 319
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-eqz v4, :cond_5

    .line 324
    .line 325
    const-string v3, "<empty>"

    .line 326
    .line 327
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_5
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 332
    .line 333
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    move v6, v1

    .line 338
    :goto_5
    if-ge v6, v4, :cond_6

    .line 339
    .line 340
    iget-object v7, v3, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 341
    .line 342
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 347
    .line 348
    iget-object v8, v3, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 349
    .line 350
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    check-cast v8, Landroid/util/ArraySet;

    .line 355
    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v7, ": #"

    .line 365
    .line 366
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    add-int/lit8 v6, v6, 0x1

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_6
    :goto_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 387
    .line 388
    .line 389
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 391
    .line 392
    .line 393
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :goto_7
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    throw p0

    .line 399
    :cond_8
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 400
    .line 401
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-eqz p0, :cond_9

    .line 406
    .line 407
    const-string p0, "<empty>"

    .line 408
    .line 409
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 413
    .line 414
    .line 415
    return-void
.end method

.method public static -$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v3, :cond_6

    .line 15
    .line 16
    iget-object v6, v0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v7, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    iget-object v7, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ltz v7, :cond_5

    .line 41
    .line 42
    :cond_0
    iget-object v7, v0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Landroid/util/LongSparseArray;

    .line 49
    .line 50
    const-string v8, "List of sessions in user #"

    .line 51
    .line 52
    const-string v9, " ("

    .line 53
    .line 54
    invoke-static {v6, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v8, "):"

    .line 66
    .line 67
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const/4 v8, 0x0

    .line 85
    :goto_1
    if-ge v8, v6, :cond_4

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    invoke-virtual {v7, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    check-cast v11, Lcom/android/server/blob/BlobStoreSession;

    .line 96
    .line 97
    iget-object v12, v11, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 98
    .line 99
    iget v13, v11, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 100
    .line 101
    iget-wide v14, v11, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 102
    .line 103
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_1

    .line 110
    .line 111
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-gez v4, :cond_1

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_1
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_2

    .line 128
    .line 129
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-gez v4, :cond_2

    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_2
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_3

    .line 150
    .line 151
    iget-object v4, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-gez v4, :cond_3

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v12, "Session #"

    .line 168
    .line 169
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 183
    .line 184
    .line 185
    const-string v4, "Open fds: #"

    .line 186
    .line 187
    const-string/jumbo v9, "size: "

    .line 188
    .line 189
    .line 190
    const-string/jumbo v10, "creation time: "

    .line 191
    .line 192
    .line 193
    const-string/jumbo v12, "ownerPkg: "

    .line 194
    .line 195
    .line 196
    const-string/jumbo v13, "ownerUid: "

    .line 197
    .line 198
    .line 199
    const-string/jumbo v14, "state: "

    .line 200
    .line 201
    .line 202
    iget-object v15, v11, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 203
    .line 204
    monitor-enter v15

    .line 205
    :try_start_0
    iget v0, v11, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 206
    .line 207
    invoke-static {v0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget v13, v11, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 224
    .line 225
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v12, v11, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-wide v12, v11, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 258
    .line 259
    invoke-static {v12, v13}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v9, v11, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v11}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    .line 281
    .line 282
    .line 283
    move-result-wide v12

    .line 284
    const/16 v10, 0x8

    .line 285
    .line 286
    invoke-static {v9, v12, v13, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v0, "blobHandle:"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    iget-object v0, v11, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 310
    .line 311
    iget-boolean v9, v2, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    .line 312
    .line 313
    invoke-virtual {v0, v1, v9}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 317
    .line 318
    .line 319
    const-string v0, "accessMode:"

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 325
    .line 326
    .line 327
    iget-object v0, v11, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobAccessMode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 333
    .line 334
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v4, v11, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 358
    .line 359
    .line 360
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 361
    .line 362
    move-object/from16 v0, p0

    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :catchall_0
    move-exception v0

    .line 367
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    throw v0

    .line 369
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 370
    .line 371
    .line 372
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 373
    .line 374
    move-object/from16 v0, p0

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_6
    return-void
.end method

.method public static -$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public static -$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .line 1
    const-string v0, "Caller not allowed to access "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-wide v5, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    const/4 v9, 0x1

    .line 30
    const/16 v3, 0x12c

    .line 31
    .line 32
    move v4, p2

    .line 33
    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {p1, v0, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 52
    .line 53
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_0
    :try_start_3
    monitor-exit v1

    .line 70
    return-object p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_4

    .line 73
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :catch_1
    move-exception p0

    .line 78
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0

    .line 83
    :cond_2
    :goto_2
    if-nez p0, :cond_3

    .line 84
    .line 85
    const/16 v2, 0x12c

    .line 86
    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    const/4 v8, 0x2

    .line 92
    move v3, p2

    .line 93
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget-wide v4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    const/4 v8, 0x3

    .line 104
    const/16 v2, 0x12c

    .line 105
    .line 106
    move v3, p2

    .line 107
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 108
    .line 109
    .line 110
    :goto_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, "; callingUid="

    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ", callingPackage="

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    throw p0
.end method

.method public static -$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string v0, "Specified calling package ["

    .line 19
    .line 20
    const-string v1, "] does not match the calling uid "

    .line 21
    .line 22
    invoke-static {p0, v0, p2, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;-><init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    .line 9
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 10
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 11
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    .line 12
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    .line 13
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 p2, 0x1

    const-string v0, "BlobStore"

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 19
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addActiveBlobIdLocked(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public varargs addActiveIdsForTest([J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-wide v3, p1, v2

    .line 9
    .line 10
    invoke-virtual {p0, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-wide v0, p1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addUserSessionsForTest(Landroid/util/LongSparseArray;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    iget-object v4, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/util/ArraySet;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    move v6, v2

    .line 30
    :goto_1
    if-ge v6, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroid/os/RevocableFileDescriptor;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 63
    .line 64
    iget-wide v0, p1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method

.method public final deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 12
    .line 13
    iget-wide v0, p1, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final forEachBlob(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final forEachBlobLocked(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final forEachSessionInUser(ILjava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/blob/BlobStoreSession;

    .line 20
    .line 21
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

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
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public getActiveIdsForTest()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getAllPackages()Landroid/util/SparseArray;
    .locals 11

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_1

    .line 22
    .line 23
    aget v5, v1, v4

    .line 24
    .line 25
    new-instance v6, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 34
    .line 35
    const-wide/32 v8, 0xc2000

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-virtual {v7, v5, v10, v8, v9}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    move v8, v3

    .line 51
    :goto_1
    if-ge v8, v7, :cond_0

    .line 52
    .line 53
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    .line 61
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v6, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-object v0
.end method

.method public getBlobForTest(Landroid/app/blob/BlobHandle;)Lcom/android/server/blob/BlobMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getBlobsCountForTest()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public getKnownIdsForTest()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    long-to-float v1, v1

    .line 15
    sget v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 16
    .line 17
    mul-float/2addr v1, v2

    .line 18
    float-to-long v1, v1

    .line 19
    sget-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 20
    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getTotalUsageBytesLocked(ILjava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    sub-long/2addr v1, p0

    .line 30
    const-wide/16 p0, 0x0

    .line 31
    .line 32
    cmp-long p2, v1, p0

    .line 33
    .line 34
    if-lez p2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v1, p0

    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-wide v1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public getTotalUsageBytesLocked(ILjava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public final getUserSessionsLocked(I)Landroid/util/LongSparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/LongSparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/LongSparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public handleIdleMaintenanceLocked()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string/jumbo v4, "blobstore"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    const-string/jumbo v4, "blobs"

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v4, "BlobStore"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    array-length v3, v2

    .line 47
    move v6, v5

    .line 48
    :goto_0
    if-ge v6, v3, :cond_1

    .line 49
    .line 50
    aget-object v7, v2, v6

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-gez v10, :cond_0

    .line 71
    .line 72
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v8

    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v10, "Error parsing the file name: "

    .line 87
    .line 88
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    move v3, v5

    .line 112
    :goto_2
    if-ge v3, v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/io/File;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    :goto_3
    if-ge v5, v1, :cond_3

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/util/LongSparseArray;

    .line 158
    .line 159
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;

    .line 160
    .line 161
    invoke-direct {v3, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v2, "Completed idle maintenance; deleted "

    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public handlePackageRemoved(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string v0, "Removed blobs data associated with pkg="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v3, p2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-direct {v3, p2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;-><init>(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 40
    .line 41
    .line 42
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    const-string p0, "BlobStore"

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ", uid="

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    sget-boolean p1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Lcom/android/server/blob/BlobStoreConfig$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "blobstore"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    new-array p0, p0, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string/jumbo v0, "blobstore"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/16 v0, 0x258

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getAllPackages()Landroid/util/SparseArray;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobSessionsLocked(Landroid/util/SparseArray;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobsInfoLocked(Landroid/util/SparseArray;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 79
    .line 80
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 83
    .line 84
    const/16 v1, 0x2761

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_2
    const/16 v0, 0x3e8

    .line 95
    .line 96
    if-ne p1, v0, :cond_3

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    sget p1, Lcom/android/server/blob/BlobStoreIdleJobService;->$r8$clinit:I

    .line 101
    .line 102
    const-string/jumbo p1, "jobscheduler"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 110
    .line 111
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 112
    .line 113
    new-instance v1, Landroid/content/ComponentName;

    .line 114
    .line 115
    const-class v2, Lcom/android/server/blob/BlobStoreIdleJobService;

    .line 116
    .line 117
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    const p0, 0xb70b1d7

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x1

    .line 127
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 136
    .line 137
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 148
    .line 149
    .line 150
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 151
    .line 152
    if-eqz p0, :cond_3

    .line 153
    .line 154
    const-string p0, "BlobStore"

    .line 155
    .line 156
    const-string p1, "Scheduling the idle maintenance job"

    .line 157
    .line 158
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "blob_store"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 15
    .line 16
    .line 17
    const-class v1, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-class v1, Landroid/app/StatsManager;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/app/StatsManager;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 45
    .line 46
    new-instance v4, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "package"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-direct {v2, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    .line 73
    .line 74
    .line 75
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 76
    .line 77
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v3, v7

    .line 81
    move-object v6, v10

    .line 82
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    new-instance v6, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-direct {v6, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    .line 97
    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-class v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    .line 110
    .line 111
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 114
    .line 115
    .line 116
    const-string p0, "BlobStore"

    .line 117
    .line 118
    invoke-interface {v0, v1, p0}, Lcom/android/server/usage/StorageStatsManagerLocal;->registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final openSessionInternal(ILjava/lang/String;J)Lcom/android/server/blob/BlobStoreSession;
    .locals 3

    .line 1
    const-string v0, "Session not found: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/blob/BlobStoreSession;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 23
    .line 24
    if-ne v2, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget p2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq p2, v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne p2, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 49
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :try_start_4
    throw p0

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    throw p0
.end method

.method public final readBlobSessionsLocked(Landroid/util/SparseArray;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "blobstore"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 32
    .line 33
    const-string/jumbo v3, "sessions_index.xml"

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance v1, Landroid/util/AtomicFile;

    .line 43
    .line 44
    const-string/jumbo v0, "session_index"

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    const-string v0, "BlobStore"

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    const-string p0, "Error creating sessions index file"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, "Sessions index file not available: "

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 94
    .line 95
    .line 96
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v3, "ss"

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v3, "v"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/4 v5, 0x1

    .line 131
    if-ne v4, v5, :cond_7

    .line 132
    .line 133
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 134
    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    const-string p0, "Finished reading sessions data"

    .line 138
    .line 139
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    :goto_3
    if-eqz v1, :cond_b

    .line 146
    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_8

    .line 151
    :catch_0
    move-exception p0

    .line 152
    goto :goto_7

    .line 153
    :cond_7
    :try_start_3
    const-string/jumbo v4, "s"

    .line 154
    .line 155
    .line 156
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_5

    .line 165
    .line 166
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 169
    .line 170
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/blob/BlobStoreSession;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-nez v4, :cond_8

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_8
    iget v5, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 178
    .line 179
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Landroid/util/SparseArray;

    .line 188
    .line 189
    if-eqz v5, :cond_9

    .line 190
    .line 191
    iget-object v6, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 192
    .line 193
    iget v7, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 194
    .line 195
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_9

    .line 204
    .line 205
    iget v5, v4, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 206
    .line 207
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {p0, v5}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    iget-wide v6, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 216
    .line 217
    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-wide v5, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 221
    .line 222
    invoke-virtual {p0, v5, v6}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_9
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 231
    .line 232
    .line 233
    :goto_4
    iget-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    .line 234
    .line 235
    iget-wide v7, v4, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 236
    .line 237
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 238
    .line 239
    .line 240
    move-result-wide v4

    .line 241
    iput-wide v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :goto_5
    if-eqz v1, :cond_a

    .line 245
    .line 246
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :catchall_1
    move-exception p1

    .line 251
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_6
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 255
    :goto_7
    const-string p1, "Error reading sessions data"

    .line 256
    .line 257
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    :cond_b
    :goto_8
    return-void
.end method

.method public final readBlobsInfoLocked(Landroid/util/SparseArray;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string/jumbo v3, "blobstore"

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v3, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    const-string/jumbo v4, "blobs_index.xml"

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v2, Landroid/util/AtomicFile;

    .line 44
    .line 45
    const-string/jumbo v1, "blobs_index"

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    if-nez v2, :cond_3

    .line 52
    .line 53
    const-string p0, "BlobStore"

    .line 54
    .line 55
    const-string p1, "Error creating blobs index file"

    .line 56
    .line 57
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    const-string p0, "BlobStore"

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "Blobs index file not available: "

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 94
    .line 95
    .line 96
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v3, "bs"

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v3, "v"

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-ne v4, v0, :cond_7

    .line 134
    .line 135
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 136
    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    const-string p0, "BlobStore"

    .line 140
    .line 141
    const-string p1, "Finished reading blobs data"

    .line 142
    .line 143
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_6
    :goto_3
    if-eqz v1, :cond_b

    .line 151
    .line 152
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :catch_0
    move-exception p0

    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_7
    :try_start_3
    const-string v4, "b"

    .line 161
    .line 162
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_5

    .line 171
    .line 172
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v2, v3, v4}, Lcom/android/server/blob/BlobMetadata;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :try_start_4
    iget-object v6, v4, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 182
    .line 183
    new-instance v7, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;

    .line 184
    .line 185
    invoke-direct {v7, v0, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;-><init>(ILandroid/util/SparseArray;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 189
    .line 190
    .line 191
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    :try_start_5
    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 193
    .line 194
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :try_start_6
    iget-object v6, v4, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 196
    .line 197
    new-instance v7, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    invoke-direct {v7, v8, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;-><init>(ILandroid/util/SparseArray;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 204
    .line 205
    .line 206
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    :try_start_7
    iget-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    .line 208
    .line 209
    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 210
    .line 211
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    iput-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    .line 216
    .line 217
    const/4 v5, 0x6

    .line 218
    if-lt v3, v5, :cond_8

    .line 219
    .line 220
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 225
    .line 226
    iget-object v6, v4, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 227
    .line 228
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Lcom/android/server/blob/BlobMetadata;

    .line 233
    .line 234
    if-nez v5, :cond_9

    .line 235
    .line 236
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    iget-object v6, v5, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 241
    .line 242
    iget-object v7, v4, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v5, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 248
    .line 249
    iget-object v6, v4, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :catchall_1
    move-exception p0

    .line 264
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 266
    :catchall_2
    move-exception p0

    .line 267
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 268
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 269
    :goto_4
    if-eqz v1, :cond_a

    .line 270
    .line 271
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :catchall_3
    move-exception p1

    .line 276
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    :cond_a
    :goto_5
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 280
    :goto_6
    const-string p1, "BlobStore"

    .line 281
    .line 282
    const-string v0, "Error reading blobs data"

    .line 283
    .line 284
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    :cond_b
    :goto_7
    return-void
.end method

.method public final writeBlobSessionsAsync()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final writeBlobSessionsLocked()V
    .locals 14

    .line 1
    const-string/jumbo v0, "s"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "ss"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 17
    .line 18
    const-string/jumbo v5, "sessions_index.xml"

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    if-nez v4, :cond_1

    .line 25
    .line 26
    move-object v2, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v2, Landroid/util/AtomicFile;

    .line 29
    .line 30
    const-string/jumbo v5, "session_index"

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const-string v4, "BlobStore"

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const-string p0, "Error creating sessions index file"

    .line 41
    .line 42
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    .line 55
    .line 56
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 57
    .line 58
    .line 59
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v6, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v7, "v"

    .line 77
    .line 78
    .line 79
    const/4 v8, 0x6

    .line 80
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, 0x0

    .line 90
    move v9, v8

    .line 91
    :goto_2
    if-ge v9, v7, :cond_4

    .line 92
    .line 93
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Landroid/util/LongSparseArray;

    .line 100
    .line 101
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    move v12, v8

    .line 106
    :goto_3
    if-ge v12, v11, :cond_3

    .line 107
    .line 108
    invoke-virtual {v6, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    check-cast v13, Lcom/android/server/blob/BlobStoreSession;

    .line 116
    .line 117
    invoke-virtual {v13, v6}, Lcom/android/server/blob/BlobStoreSession;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_0
    move-exception p0

    .line 127
    move-object v3, v5

    .line 128
    goto :goto_4

    .line 129
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual {v6, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 139
    .line 140
    .line 141
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    const-string p0, "Finished persisting sessions data"

    .line 146
    .line 147
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    :cond_5
    return-void

    .line 151
    :catch_1
    move-exception p0

    .line 152
    :goto_4
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "Error writing sessions data"

    .line 156
    .line 157
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final writeBlobsInfoAsync()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final writeBlobsInfoLocked()V
    .locals 10

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    const-string/jumbo v1, "bs"

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 16
    .line 17
    const-string/jumbo v5, "blobs_index.xml"

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    if-nez v4, :cond_1

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v2, Landroid/util/AtomicFile;

    .line 28
    .line 29
    const-string/jumbo v5, "blobs_index"

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    const-string v4, "BlobStore"

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string p0, "Error creating blobs index file"

    .line 40
    .line 41
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    .line 54
    .line 55
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v6, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v7, "v"

    .line 76
    .line 77
    .line 78
    const/4 v8, 0x6

    .line 79
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const/4 v8, 0x0

    .line 89
    :goto_2
    if-ge v8, v7, :cond_3

    .line 90
    .line 91
    invoke-virtual {v6, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Lcom/android/server/blob/BlobMetadata;

    .line 101
    .line 102
    invoke-virtual {v9, v6}, Lcom/android/server/blob/BlobMetadata;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    .line 107
    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception p0

    .line 112
    move-object v3, v5

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v6, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 121
    .line 122
    .line 123
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 124
    .line 125
    if-eqz p0, :cond_4

    .line 126
    .line 127
    const-string p0, "Finished persisting blobs data"

    .line 128
    .line 129
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_4
    return-void

    .line 133
    :catch_1
    move-exception p0

    .line 134
    :goto_3
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "Error writing blobs data"

    .line 138
    .line 139
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    throw p0
.end method
