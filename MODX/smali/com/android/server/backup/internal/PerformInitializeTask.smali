.class public final Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBaseStateDir:Ljava/io/File;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mObserver:Landroid/app/backup/IBackupObserver;

.field public final mQueue:[Ljava/lang/String;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 8
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 12
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 14
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "BackupManagerService"

    .line 5
    const-string v3, "PerformInitializeTask.run()"

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 11
    array-length v0, v0

    .line 12
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 17
    array-length v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    :goto_0
    if-ge v8, v7, :cond_7

    .line 22
    :try_start_1
    aget-object v10, v0, v8

    .line 24
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 26
    invoke-virtual {v11, v10, v3}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 29
    move-result-object v11

    .line 30
    if-nez v11, :cond_0

    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v12, "Requested init for "

    .line 39
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v10, " but not found"

    .line 47
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v10

    .line 54
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto/16 :goto_2

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move v6, v9

    .line 61
    goto/16 :goto_c

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move v6, v9

    .line 65
    goto/16 :goto_9

    .line 67
    :cond_0
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v12, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v13, "Initializing (wiping) backup transport storage: "

    .line 77
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v12

    .line 87
    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v12, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 92
    iget-object v13, v11, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v12, v13}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 97
    move-result-object v12

    .line 98
    const/16 v13, 0xb05

    .line 100
    invoke-static {v13, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 106
    move-result-wide v13

    .line 107
    invoke-virtual {v11, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 110
    move-result-object v11

    .line 111
    iget-object v15, v11, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 113
    invoke-virtual {v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 116
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    iget-object v6, v11, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 119
    invoke-interface {v6, v5}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 122
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 125
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    :try_start_3
    invoke-virtual {v15, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 129
    if-eqz v6, :cond_1

    .line 131
    const-string v5, "Transport error in initializeDevice()"

    .line 133
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_2

    .line 143
    const-string v5, "Transport error in finishBackup()"

    .line 145
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    :goto_1
    if-nez v6, :cond_4

    .line 150
    const-string v5, "Device init successful"

    .line 152
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 158
    move-result-wide v5

    .line 159
    sub-long/2addr v5, v13

    .line 160
    long-to-int v5, v5

    .line 161
    const/4 v6, 0x0

    .line 162
    new-array v11, v6, [Ljava/lang/Object;

    .line 164
    const/16 v6, 0xb0b

    .line 166
    invoke-static {v6, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 169
    new-instance v6, Ljava/io/File;

    .line 171
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 173
    invoke-direct {v6, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 178
    invoke-virtual {v11, v6}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 181
    const/4 v6, 0x0

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v11

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v5

    .line 190
    filled-new-array {v11, v5}, [Ljava/lang/Object;

    .line 193
    move-result-object v5

    .line 194
    const/16 v11, 0xb09

    .line 196
    invoke-static {v11, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 199
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 201
    invoke-virtual {v5, v10, v12, v6}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :try_start_4
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 206
    if-eqz v5, :cond_3

    .line 208
    invoke-interface {v5, v10, v6}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    goto :goto_2

    .line 212
    :catch_1
    const/4 v5, 0x0

    .line 213
    :try_start_5
    iput-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 215
    :cond_3
    :goto_2
    const/4 v12, 0x0

    .line 216
    goto :goto_5

    .line 217
    :cond_4
    const-string v5, "(initialize)"

    .line 219
    const/16 v13, 0xb06

    .line 221
    invoke-static {v13, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 224
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 226
    const/4 v13, 0x1

    .line 227
    invoke-virtual {v5, v10, v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    :try_start_6
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 232
    if-eqz v5, :cond_5

    .line 234
    invoke-interface {v5, v10, v6}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 237
    goto :goto_3

    .line 238
    :catch_2
    const/4 v5, 0x0

    .line 239
    :try_start_7
    iput-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 241
    :cond_5
    :goto_3
    :try_start_8
    iget-object v5, v11, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 243
    invoke-virtual {v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 246
    move-result-object v5

    .line 247
    iget-object v9, v11, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 249
    invoke-interface {v9, v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 252
    invoke-virtual {v11, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Ljava/lang/Long;

    .line 258
    if-nez v5, :cond_6

    .line 260
    const-wide/16 v11, -0x3e8

    .line 262
    goto :goto_4

    .line 263
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 266
    move-result-wide v11

    .line 267
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    const-string v9, "Init failed on "

    .line 274
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v9, " resched in "

    .line 282
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v5

    .line 292
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 297
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 302
    move-result-wide v9

    .line 303
    add-long/2addr v9, v11

    .line 304
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 306
    iget-object v11, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 308
    const/4 v12, 0x0

    .line 309
    invoke-virtual {v5, v12, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 312
    move v9, v6

    .line 313
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 315
    goto/16 :goto_0

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    goto :goto_c

    .line 319
    :catch_3
    move-exception v0

    .line 320
    goto :goto_9

    .line 321
    :catchall_2
    move-exception v0

    .line 322
    :try_start_9
    invoke-virtual {v15, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 325
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 326
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 329
    move-result-object v0

    .line 330
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_8

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    move-result-object v2

    .line 340
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 342
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 344
    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 347
    goto :goto_6

    .line 348
    :cond_8
    :try_start_a
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 350
    if-eqz v0, :cond_9

    .line 352
    invoke-interface {v0, v9}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    .line 355
    goto :goto_8

    .line 356
    :catch_4
    const/4 v2, 0x0

    .line 357
    :goto_7
    iput-object v2, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 359
    :cond_9
    :goto_8
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 361
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 364
    goto :goto_b

    .line 365
    :catchall_3
    move-exception v0

    .line 366
    const/4 v12, 0x0

    .line 367
    move v6, v12

    .line 368
    goto :goto_c

    .line 369
    :catch_5
    move-exception v0

    .line 370
    const/4 v12, 0x0

    .line 371
    move v6, v12

    .line 372
    :goto_9
    :try_start_b
    const-string v5, "Unexpected error performing init"

    .line 374
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 377
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 380
    move-result-object v0

    .line 381
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_a

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    move-result-object v2

    .line 391
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 393
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 395
    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 398
    goto :goto_a

    .line 399
    :cond_a
    :try_start_c
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 401
    if-eqz v0, :cond_9

    .line 403
    const/16 v2, -0x3e8

    .line 405
    invoke-interface {v0, v2}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    .line 408
    goto :goto_8

    .line 409
    :catch_6
    const/4 v2, 0x0

    .line 410
    goto :goto_7

    .line 411
    :goto_b
    return-void

    .line 412
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    move-result-object v2

    .line 416
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_b

    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 428
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 430
    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 433
    goto :goto_d

    .line 434
    :cond_b
    :try_start_d
    iget-object v2, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 436
    if-eqz v2, :cond_c

    .line 438
    invoke-interface {v2, v6}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 441
    goto :goto_e

    .line 442
    :catch_7
    const/4 v2, 0x0

    .line 443
    iput-object v2, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 445
    :cond_c
    :goto_e
    iget-object v1, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 447
    invoke-interface {v1, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 450
    throw v0
.end method
