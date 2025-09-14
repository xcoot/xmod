.class public final Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public mAdminCriticalSize:F

.field public final mAdminDirectoryPath:Ljava/lang/String;

.field public mAdminMaximumSize:F

.field public mBufferLimitSize:J

.field public volatile mCircularBufferSize:J

.field public final mContext:Landroid/content/Context;

.field public mCriticalIntent:Z

.field public mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field public final mDumpList:Ljava/util/List;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mFullBuffer:F

.field public mFullIntent:Z

.field public volatile mIsBootCompleted:Z

.field public volatile mIsDumping:Z

.field public final mIsPseudoAdminOfOrganizationOwnedDevice:Z

.field public volatile mLastDumpedFile:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mMaximumIntent:Z

.field public volatile mNumberOfDeprecatedFiles:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingIntentErrors:Ljava/util/List;

.field public mTotalDirectoryOccupation:J

.field public volatile mTypeOfDump:Z

.field public final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12

    .line 1
    const-string v0, "CircularBuffer"

    .line 3
    const-string/jumbo v1, "mIsPseudoAdminOfOrganizationOwnedDevice = "

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/Object;

    .line 11
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 19
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 21
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 23
    sget-object v3, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 28
    iput p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 30
    const/high16 v3, 0x428c0000    # 70.0f

    .line 32
    iput v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 34
    const/high16 v3, 0x42b40000    # 90.0f

    .line 36
    iput v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 38
    const/high16 v3, 0x42c20000    # 97.0f

    .line 40
    iput v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 44
    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 48
    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 50
    const/4 v5, 0x0

    .line 51
    iput-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 55
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 65
    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo p3, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    .line 90
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    .line 110
    move-result-wide p1

    .line 111
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 113
    const-string p1, "Exception occurred accessing Enterprise db "

    .line 115
    const-string p2, "auditNumberOfDepFiles"

    .line 117
    filled-new-array {p2}, [Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 121
    :try_start_1
    iget-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 123
    const-string v1, "AUDITLOG"

    .line 125
    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 127
    invoke-virtual {p3, v6, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_0

    .line 133
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    move-result p1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto/16 :goto_d

    .line 144
    :catch_1
    move-exception p2

    .line 145
    goto :goto_2

    .line 146
    :cond_0
    move p1, v2

    .line 147
    :goto_1
    if-eqz v5, :cond_2

    .line 149
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 152
    goto :goto_3

    .line 153
    :goto_2
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-eqz v5, :cond_1

    .line 174
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    move p1, v2

    .line 178
    :cond_2
    :goto_3
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    .line 182
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    .line 193
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    const-string p2, "/data/system/"

    .line 206
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 211
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 224
    new-instance p2, Ljava/io/File;

    .line 226
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_3

    .line 235
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 238
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 241
    move-result-object p1

    .line 242
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 244
    goto/16 :goto_c

    .line 246
    :cond_3
    invoke-static {p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_d

    .line 252
    array-length p2, p1

    .line 253
    move p3, v2

    .line 254
    move v1, p3

    .line 255
    :goto_4
    if-ge p3, p2, :cond_b

    .line 257
    aget-object v5, p1, p3

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_4

    .line 265
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 268
    goto/16 :goto_9

    .line 270
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 273
    move-result-wide v6

    .line 274
    cmp-long v6, v6, v3

    .line 276
    if-nez v6, :cond_5

    .line 278
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 281
    goto/16 :goto_a

    .line 283
    :cond_5
    new-instance v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 285
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 287
    invoke-direct {v6, v5, v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    const/4 v7, 0x1

    .line 291
    iput-boolean v7, v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 293
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    .line 295
    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    const/4 v9, 0x2

    .line 299
    new-array v10, v9, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 301
    :try_start_4
    invoke-virtual {v8, v10, v2, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 304
    aget-byte v9, v10, v2

    .line 306
    const/16 v11, 0x1f

    .line 308
    if-ne v9, v11, :cond_6

    .line 310
    aget-byte v9, v10, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    const/16 v10, -0x75

    .line 314
    if-ne v9, v10, :cond_6

    .line 316
    move v9, v7

    .line 317
    goto :goto_5

    .line 318
    :catchall_1
    move-exception v5

    .line 319
    goto :goto_6

    .line 320
    :cond_6
    move v9, v2

    .line 321
    :goto_5
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 324
    :catch_2
    if-nez v9, :cond_8

    .line 326
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->formatIfEmptyOrCorrupted(Ljava/io/File;)V

    .line 329
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 332
    move-result-wide v8

    .line 333
    cmp-long v8, v8, v3

    .line 335
    if-nez v8, :cond_7

    .line 337
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 340
    goto :goto_a

    .line 341
    :catch_3
    move-exception v5

    .line 342
    goto :goto_7

    .line 343
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 346
    goto :goto_8

    .line 347
    :goto_6
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 350
    :catch_4
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 351
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 353
    const-string v9, "IOException: "

    .line 355
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v5

    .line 369
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_8
    :goto_8
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 374
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 379
    if-le v1, v5, :cond_9

    .line 381
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 383
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 386
    move-result-wide v5

    .line 387
    add-long/2addr v5, v7

    .line 388
    iput-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 390
    goto :goto_9

    .line 391
    :cond_9
    monitor-enter v6

    .line 392
    :try_start_9
    iget-boolean v5, v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 394
    if-eqz v5, :cond_a

    .line 396
    monitor-exit v6

    .line 397
    goto :goto_9

    .line 398
    :cond_a
    :try_start_a
    iput-boolean v7, v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 400
    monitor-exit v6

    .line 401
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 403
    :goto_a
    add-int/lit8 p3, p3, 0x1

    .line 405
    goto/16 :goto_4

    .line 407
    :catchall_2
    move-exception p0

    .line 408
    monitor-exit v6

    .line 409
    throw p0

    .line 410
    :cond_b
    array-length p2, p1

    .line 411
    :goto_b
    if-ge v2, p2, :cond_c

    .line 413
    aget-object p3, p1, v2

    .line 415
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 417
    invoke-virtual {p3}, Ljava/io/File;->length()J

    .line 420
    move-result-wide v3

    .line 421
    add-long/2addr v3, v0

    .line 422
    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 426
    goto :goto_b

    .line 427
    :cond_c
    iget-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 429
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 431
    sub-long/2addr p1, v0

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 435
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 438
    move-result-object p1

    .line 439
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 441
    :goto_c
    return-void

    .line 442
    :goto_d
    if-eqz v5, :cond_e

    .line 444
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_e
    throw p0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    array-length v1, v0

    .line 14
    const-string v2, "Directory is deleted : "

    .line 16
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    array-length v1, v0

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    if-ge v3, v1, :cond_1

    .line 47
    aget-object v4, v0, v3

    .line 49
    new-instance v5, Ljava/io/File;

    .line 51
    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    array-length v0, v0

    .line 65
    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "File is deleted : "

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    const-string v0, "CircularBuffer"

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3
    :goto_1
    return-void
.end method

.method public static dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    return-object v1

    .line 16
    :cond_1
    new-instance v2, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    array-length v2, v0

    .line 25
    if-lez v2, :cond_4

    .line 27
    array-length v1, v0

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 30
    aget-object v1, v0, v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const-string v3, "_tmp"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 55
    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 8
    const-wide/16 v3, 0x64

    .line 10
    iget-wide v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 12
    mul-long/2addr v5, v3

    .line 13
    iget-wide v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 15
    div-long/2addr v5, v3

    .line 16
    long-to-int v0, v5

    .line 17
    int-to-float v3, v0

    .line 18
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 20
    cmpl-float v0, v3, v0

    .line 22
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 25
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 28
    const/4 v6, 0x1

    .line 29
    if-ltz v0, :cond_0

    .line 31
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 33
    if-nez v0, :cond_1

    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 37
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

    .line 40
    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 45
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    iget-object v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v8

    .line 57
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 59
    new-instance v11, Landroid/os/UserHandle;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    .line 64
    move-result v12

    .line 65
    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 68
    invoke-virtual {v10, v0, v11, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    new-instance v10, Landroid/content/Intent;

    .line 83
    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    move-result-object v7

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 95
    move-result v11

    .line 96
    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 99
    move-result v7

    .line 100
    invoke-virtual {v10, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 121
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 124
    move-result v13

    .line 125
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 127
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v0

    .line 131
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    const-string v7, "AuditLog has reached its critical size. Percentage is %.2f"

    .line 137
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object v15

    .line 141
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 143
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 146
    move-result v16

    .line 147
    const-string v14, "CircularBuffer"

    .line 149
    const/4 v10, 0x4

    .line 150
    const/4 v11, 0x2

    .line 151
    const/4 v12, 0x1

    .line 152
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 155
    goto :goto_1

    .line 156
    :cond_0
    iput-boolean v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 158
    :cond_1
    :goto_1
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 160
    cmpl-float v0, v3, v0

    .line 162
    if-ltz v0, :cond_2

    .line 164
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 166
    if-nez v0, :cond_3

    .line 168
    new-instance v0, Landroid/content/Intent;

    .line 170
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

    .line 173
    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 178
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 189
    move-result-wide v8

    .line 190
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 192
    new-instance v11, Landroid/os/UserHandle;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    .line 197
    move-result v12

    .line 198
    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 201
    invoke-virtual {v10, v0, v11, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 204
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    new-instance v10, Landroid/content/Intent;

    .line 216
    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 224
    move-result-object v7

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 228
    move-result v11

    .line 229
    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 232
    move-result v7

    .line 233
    invoke-virtual {v10, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_2

    .line 245
    :catch_1
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 254
    goto :goto_3

    .line 255
    :cond_2
    iput-boolean v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 257
    :cond_3
    :goto_3
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    .line 259
    cmpl-float v0, v3, v0

    .line 261
    if-ltz v0, :cond_4

    .line 263
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 265
    if-nez v0, :cond_5

    .line 267
    new-instance v0, Landroid/content/Intent;

    .line 269
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

    .line 272
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    iget v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 277
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 288
    move-result-wide v7

    .line 289
    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 291
    new-instance v10, Landroid/os/UserHandle;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    .line 296
    move-result v11

    .line 297
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 300
    invoke-virtual {v9, v0, v10, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 303
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 305
    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    new-instance v9, Landroid/content/Intent;

    .line 315
    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 323
    move-result-object v3

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 327
    move-result v10

    .line 328
    invoke-virtual {v3, v0, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 331
    move-result v3

    .line 332
    invoke-virtual {v9, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v0, v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    goto :goto_4

    .line 344
    :catch_2
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    iput-boolean v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 353
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 356
    move-result-object v0

    .line 357
    const-string v3, "Full Size Reached!"

    .line 359
    iget-object v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 361
    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    goto :goto_5

    .line 365
    :cond_4
    iput-boolean v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 367
    :cond_5
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 369
    if-nez v0, :cond_8

    .line 371
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 376
    move-result v0

    .line 377
    int-to-long v3, v0

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    .line 381
    move-result-wide v5

    .line 382
    cmp-long v0, v3, v5

    .line 384
    if-lez v0, :cond_8

    .line 386
    iget-object v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 388
    monitor-enter v3

    .line 389
    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 394
    move-result-object v0

    .line 395
    :goto_6
    iget-object v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 400
    move-result v4

    .line 401
    int-to-long v4, v4

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    .line 405
    move-result-wide v6

    .line 406
    cmp-long v4, v4, v6

    .line 408
    if-lez v4, :cond_7

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 416
    iget-boolean v5, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    .line 418
    if-eqz v5, :cond_6

    .line 420
    iget v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 422
    add-int/lit8 v6, v5, -0x1

    .line 424
    iput v6, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 426
    new-instance v6, Landroid/content/ContentValues;

    .line 428
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 431
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    move-result-object v5

    .line 435
    const-string v7, "auditNumberOfDepFiles"

    .line 437
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    iget-object v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 442
    iget v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 444
    const-string v8, "AUDITLOG"

    .line 446
    invoke-virtual {v5, v7, v2, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 449
    goto :goto_7

    .line 450
    :catchall_0
    move-exception v0

    .line 451
    goto :goto_8

    .line 452
    :cond_6
    iget-wide v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 454
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 457
    move-result-wide v7

    .line 458
    sub-long/2addr v5, v7

    .line 459
    iput-wide v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 461
    :goto_7
    iget-wide v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 463
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 466
    move-result-wide v7

    .line 467
    sub-long/2addr v5, v7

    .line 468
    iput-wide v5, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 470
    iget-wide v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 472
    sub-long/2addr v7, v5

    .line 473
    invoke-virtual {v1, v7, v8}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 476
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 482
    goto :goto_6

    .line 483
    :cond_7
    monitor-exit v3

    .line 484
    goto :goto_9

    .line 485
    :goto_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    throw v0

    .line 487
    :cond_8
    :goto_9
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 489
    iget-object v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 491
    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 493
    invoke-direct {v0, v2, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-object v0
.end method

.method public final closeFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 6
    iget-boolean v2, v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()V

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 15
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final createBubbleDir()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "/data/system/"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 12
    const-string v2, "_bubble"

    .line 14
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 30
    :cond_0
    return-void
.end method

.method public final formatIfEmptyOrCorrupted(Ljava/io/File;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "formatIfEmptyOrCorrupted.IOException"

    .line 4
    const-string v1, "CircularBuffer"

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 9
    const-string/jumbo v4, "rwd"

    .line 12
    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    const/high16 p1, 0x10000

    .line 17
    :try_start_1
    new-array p1, p1, [B

    .line 19
    const-wide/16 v4, 0x0

    .line 21
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 24
    move-result v2

    .line 25
    const/4 v6, 0x0

    .line 26
    if-lez v2, :cond_3

    .line 28
    add-int/lit8 v7, v2, -0x1

    .line 30
    aget-byte v7, p1, v7

    .line 32
    if-nez v7, :cond_2

    .line 34
    move v7, v6

    .line 35
    move v8, v7

    .line 36
    :goto_1
    if-ge v7, v2, :cond_4

    .line 38
    aget-byte v9, p1, v7

    .line 40
    const/16 v10, 0xa

    .line 42
    if-ne v9, v10, :cond_0

    .line 44
    move v8, v7

    .line 45
    :cond_0
    if-nez v9, :cond_1

    .line 47
    const/4 v6, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    move-object v2, v3

    .line 54
    goto :goto_5

    .line 55
    :catch_0
    move-exception p1

    .line 56
    move-object v2, v3

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    const-wide/16 v6, 0x1

    .line 60
    add-long/2addr v4, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v8, v6

    .line 63
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 65
    const-wide/32 v6, 0x10000

    .line 68
    mul-long/2addr v4, v6

    .line 69
    int-to-long v6, v8

    .line 70
    add-long/2addr v4, v6

    .line 71
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    goto :goto_4

    .line 78
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_4

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_5

    .line 84
    :catch_2
    move-exception p1

    .line 85
    :goto_3
    :try_start_3
    const-string/jumbo v3, "formatIfEmptyOrCorrupted.Exception"

    .line 88
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 93
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    if-eqz v2, :cond_6

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    :cond_6
    :goto_4
    return-void

    .line 102
    :goto_5
    if-eqz v2, :cond_7

    .line 104
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 107
    goto :goto_6

    .line 108
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_7
    :goto_6
    throw p0
.end method

.method public final getBufferLogSize()J
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "adminUid"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    const-string v1, "AUDITLOG"

    .line 21
    const-string v2, "auditLogBufferSize"

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Long;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v0, -0x1

    .line 49
    :goto_0
    return-wide v0
.end method

.method public final getTargetUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    move-result v0

    .line 7
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    sget p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 13
    sget-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 15
    check-cast p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    .line 22
    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public final markDeprecatedFiles()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 28
    iget-boolean v5, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 30
    if-nez v5, :cond_1

    .line 32
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 35
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    const/4 v5, 0x1

    .line 42
    if-eqz v3, :cond_4

    .line 44
    iget-boolean v6, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    .line 46
    if-eqz v6, :cond_2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 51
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 54
    move-result-wide v8

    .line 55
    sub-long/2addr v6, v8

    .line 56
    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 58
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-boolean v6, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v6, :cond_3

    .line 63
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :try_start_3
    iput-boolean v5, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :try_start_4
    monitor-exit v4

    .line 68
    :goto_1
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 70
    add-int/2addr v4, v5

    .line 71
    iput v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    monitor-exit v4

    .line 76
    throw p0

    .line 77
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 79
    if-eqz v6, :cond_0

    .line 81
    iget-object v4, v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 83
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 89
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_0

    .line 95
    const/4 v3, 0x0

    .line 96
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 98
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 101
    move v3, v5

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 105
    new-instance v3, Landroid/content/ContentValues;

    .line 107
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v1

    .line 114
    const-string v4, "auditNumberOfDepFiles"

    .line 116
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 121
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 123
    const-string v4, "AUDITLOG"

    .line 125
    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    throw p0
.end method

.method public final resizeBubbleFile(J)V
    .locals 8

    .line 1
    const-string/jumbo v0, "resizeBubbleFile.IOException"

    .line 4
    const-string v1, "CircularBuffer"

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v2, p1, v2

    .line 10
    const-string v3, "_bubble/bubbleFile"

    .line 12
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 14
    const-string v4, "/data/system/"

    .line 16
    if-gtz v2, :cond_0

    .line 18
    new-instance p1, Ljava/io/File;

    .line 20
    invoke-static {p0, v4, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    return-void

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 34
    new-instance v6, Ljava/io/File;

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo p0, "rws"

    .line 57
    invoke-direct {v5, v6, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    long-to-int p0, p1

    .line 61
    add-int/lit8 p0, p0, -0x1

    .line 63
    :try_start_1
    new-array v2, p0, [B

    .line 65
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v5, v2, p1, p0}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    goto :goto_4

    .line 76
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_4

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    move-object v2, v5

    .line 82
    goto :goto_5

    .line 83
    :catch_1
    move-exception p0

    .line 84
    move-object v2, v5

    .line 85
    goto :goto_0

    .line 86
    :catch_2
    move-object v2, v5

    .line 87
    goto :goto_2

    .line 88
    :catch_3
    move-object v2, v5

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_5

    .line 92
    :catch_4
    move-exception p0

    .line 93
    :goto_0
    :try_start_3
    const-string/jumbo p1, "resizeBubbleFile.OutOfMemoryError"

    .line 96
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    if-eqz v2, :cond_1

    .line 101
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    goto :goto_4

    .line 105
    :catch_5
    :goto_2
    :try_start_5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v2, :cond_1

    .line 110
    goto :goto_1

    .line 111
    :catch_6
    :goto_3
    const-string/jumbo p0, "resizeBubbleFile.FileNotFoundException"

    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    if-eqz v2, :cond_1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    :goto_4
    return-void

    .line 121
    :goto_5
    if-eqz v2, :cond_2

    .line 123
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 126
    goto :goto_6

    .line 127
    :catch_7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_6
    throw p0
.end method

.method public final totalNumberFiles()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x8fc

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    int-to-long v5, v0

    .line 20
    div-long/2addr v3, v5

    .line 21
    const-wide/16 v5, 0x0

    .line 23
    cmp-long v0, v3, v5

    .line 25
    if-eqz v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 29
    div-long/2addr v0, v3

    .line 30
    return-wide v0

    .line 31
    :cond_0
    return-wide v1
.end method

.method public final write(Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_2

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 5
    iget-object v0, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 19
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()V

    .line 22
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 24
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 26
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 29
    move-result-wide v2

    .line 30
    add-long/2addr v0, v2

    .line 31
    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 33
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 35
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 37
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 40
    move-result-wide v2

    .line 41
    add-long/2addr v0, v2

    .line 42
    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 44
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 46
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 48
    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 52
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 68
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 81
    goto/16 :goto_4

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    .line 85
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 88
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 96
    iget-object v2, v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 98
    if-eqz v2, :cond_3

    .line 100
    iget-object v2, v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 105
    move-result-wide v2

    .line 106
    iput-wide v2, v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 110
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()V

    .line 113
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 115
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 117
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 120
    move-result-wide v3

    .line 121
    add-long/2addr v1, v3

    .line 122
    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 124
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 126
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 128
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    .line 131
    move-result-wide v3

    .line 132
    add-long/2addr v1, v3

    .line 133
    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 135
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 137
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 140
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 142
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 150
    move-result-object v1

    .line 151
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 153
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    .line 156
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 158
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 160
    sub-long/2addr v1, v3

    .line 161
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 164
    goto :goto_1

    .line 165
    :catchall_0
    move-exception p1

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    :goto_1
    monitor-exit v0

    .line 168
    goto :goto_4

    .line 169
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :goto_3
    const-string v0, "CircularBuffer"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v2, "write.Exception: "

    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 198
    move-result-object v0

    .line 199
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 204
    :goto_4
    return-void
.end method
