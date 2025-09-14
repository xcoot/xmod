.class public final Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupThread:Landroid/os/HandlerThread;

.field volatile mIsStopping:Z

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 11
    iput-object p3, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 13
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 15
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 17
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 19
    const-string p2, "Timeout parameters cannot be null"

    .line 21
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 26
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-boolean p0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    :goto_0
    return-void

    .line 11
    :cond_0
    throw p1
.end method

.method public dispatchMessageInternal(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string/jumbo v2, "couldn\'t find params for token "

    .line 8
    iget v3, v0, Landroid/os/Message;->what:I

    .line 10
    const/16 v4, 0x16

    .line 12
    if-ne v3, v4, :cond_0

    .line 14
    const-string v3, "BackupManagerService"

    .line 16
    const-string v4, "Stopping backup handler"

    .line 18
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 23
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 25
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 28
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 30
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 33
    :cond_0
    iget-boolean v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 35
    if-eqz v3, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 40
    iget-object v3, v5, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 42
    iget v4, v0, Landroid/os/Message;->what:I

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    if-eq v4, v6, :cond_16

    .line 49
    const/4 v3, 0x2

    .line 50
    if-eq v4, v3, :cond_15

    .line 52
    const/4 v3, 0x3

    .line 53
    const/16 v9, 0x14

    .line 55
    if-eq v4, v3, :cond_13

    .line 57
    const/4 v3, 0x4

    .line 58
    if-eq v4, v3, :cond_12

    .line 60
    const/4 v3, 0x6

    .line 61
    if-eq v4, v3, :cond_b

    .line 63
    const/16 v3, 0xc

    .line 65
    if-eq v4, v3, :cond_a

    .line 67
    const/16 v3, 0x65

    .line 69
    if-eq v4, v3, :cond_7

    .line 71
    if-eq v4, v9, :cond_6

    .line 73
    const/16 v3, 0x15

    .line 75
    if-eq v4, v3, :cond_5

    .line 77
    packed-switch v4, :pswitch_data_0

    .line 80
    packed-switch v4, :pswitch_data_1

    .line 83
    goto/16 :goto_16

    .line 85
    :pswitch_0
    const-string v2, "BackupManagerService"

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    const-string v4, "Timeout message received for token="

    .line 91
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 112
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-direct {v2, v3, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 123
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 125
    invoke-virtual {v1, v0, v8, v2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 128
    goto/16 :goto_16

    .line 130
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-virtual {v5, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 137
    goto/16 :goto_16

    .line 139
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 143
    iput-boolean v6, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 145
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 147
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 149
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 152
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 154
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 156
    iget-object v5, v0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 158
    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    .line 160
    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    .line 162
    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    .line 164
    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 166
    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 168
    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    .line 170
    iget-boolean v14, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    .line 172
    iget-object v15, v0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 174
    const/4 v13, 0x1

    .line 175
    move-object v4, v1

    .line 176
    check-cast v4, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 178
    const/4 v8, 0x0

    .line 179
    invoke-static/range {v3 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 182
    goto/16 :goto_16

    .line 184
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 188
    new-instance v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    .line 190
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 192
    iget-object v7, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 194
    iget-object v8, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 196
    iget-object v9, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 198
    iget-object v10, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 200
    iget-object v11, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 204
    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    .line 206
    move-object v6, v1

    .line 207
    check-cast v6, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 209
    move-object v4, v2

    .line 210
    invoke-direct/range {v4 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    .line 213
    new-instance v0, Ljava/lang/Thread;

    .line 215
    const-string v1, "adb-restore"

    .line 217
    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    goto/16 :goto_16

    .line 225
    :pswitch_4
    iget-object v3, v5, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 227
    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 230
    iget-object v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 232
    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 234
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lcom/android/server/backup/params/AdbParams;

    .line 240
    if-eqz v4, :cond_2

    .line 242
    const-string v2, "BackupManagerService"

    .line 244
    const-string v5, "Full backup/restore timed out waiting for user confirmation"

    .line 246
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-static {v4}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 257
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 259
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 261
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 263
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 266
    iget-object v0, v4, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    if-eqz v0, :cond_3

    .line 270
    :try_start_1
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    goto :goto_1

    .line 276
    :cond_2
    :try_start_2
    const-string v1, "BackupManagerService"

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 285
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :catch_0
    :cond_3
    :goto_0
    monitor-exit v3

    .line 296
    goto/16 :goto_16

    .line 298
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    throw v0

    .line 300
    :pswitch_5
    monitor-enter v5

    .line 301
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 303
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 305
    if-eqz v0, :cond_4

    .line 307
    const-string v0, "BackupManagerService"

    .line 309
    const-string v2, "Restore session timed out; aborting"

    .line 311
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 316
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 318
    iput-boolean v6, v2, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 320
    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    .line 322
    invoke-direct {v3, v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 325
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    goto :goto_2

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    goto :goto_3

    .line 331
    :cond_4
    :goto_2
    monitor-exit v5

    .line 332
    goto/16 :goto_16

    .line 334
    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    throw v0

    .line 336
    :cond_5
    :try_start_4
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    check-cast v1, Landroid/util/Pair;

    .line 340
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 342
    check-cast v2, Lcom/android/server/backup/BackupRestoreTask;

    .line 344
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 346
    check-cast v1, Ljava/lang/Long;

    .line 348
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 351
    move-result-wide v3

    .line 352
    invoke-interface {v2, v3, v4}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    .line 355
    goto/16 :goto_16

    .line 357
    :catch_1
    const-string v1, "BackupManagerService"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    const-string v3, "Invalid completion in flight, obj="

    .line 363
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v0

    .line 375
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto/16 :goto_16

    .line 380
    :cond_6
    :try_start_5
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    check-cast v1, Lcom/android/server/backup/BackupRestoreTask;

    .line 384
    invoke-interface {v1}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    .line 387
    goto/16 :goto_16

    .line 389
    :catch_2
    const-string v1, "BackupManagerService"

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    const-string v3, "Invalid backup/restore task in flight, obj="

    .line 395
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v0

    .line 407
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    goto/16 :goto_16

    .line 412
    :cond_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    .line 416
    if-eqz v0, :cond_9

    .line 418
    const-string v2, "BackupManagerService"

    .line 420
    const-string/jumbo v3, "sep backup/restore timed out waiting for success"

    .line 423
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 428
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 434
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 436
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 438
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_8

    .line 444
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 446
    iget-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 448
    if-eqz v3, :cond_8

    .line 450
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 452
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 455
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 457
    iput-boolean v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 459
    :cond_8
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 461
    if-eqz v0, :cond_1e

    .line 463
    :try_start_6
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_c

    .line 466
    goto/16 :goto_16

    .line 468
    :cond_9
    const-string v0, "BackupManagerService"

    .line 470
    const-string/jumbo v1, "params is null"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    goto/16 :goto_16

    .line 478
    :cond_a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 482
    iget-object v1, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    .line 484
    iget-object v0, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    .line 486
    invoke-virtual {v5, v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    goto/16 :goto_16

    .line 491
    :cond_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    move-object v2, v0

    .line 494
    check-cast v2, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 496
    const-string v3, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 498
    const/16 v4, 0x8

    .line 500
    :try_start_7
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 502
    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 505
    move-result-object v0

    .line 506
    iget-object v5, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 508
    invoke-virtual {v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 511
    move-result-object v5

    .line 512
    iget-object v6, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 514
    invoke-interface {v6, v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    .line 517
    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 520
    move-result-object v0

    .line 521
    move-object v5, v0

    .line 522
    check-cast v5, Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 524
    :try_start_8
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 526
    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 527
    :try_start_9
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 529
    iput-object v5, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 531
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 532
    if-nez v5, :cond_c

    .line 534
    :try_start_a
    new-array v0, v8, [Ljava/lang/Object;

    .line 536
    const/16 v6, 0xb0f

    .line 538
    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 541
    goto :goto_4

    .line 542
    :catchall_2
    move-exception v0

    .line 543
    move-object/from16 v26, v5

    .line 545
    move-object v5, v0

    .line 546
    move-object/from16 v0, v26

    .line 548
    goto/16 :goto_c

    .line 550
    :catch_3
    move-exception v0

    .line 551
    goto :goto_a

    .line 552
    :cond_c
    :goto_4
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 554
    if-eqz v0, :cond_e

    .line 556
    if-nez v5, :cond_d

    .line 558
    :try_start_b
    invoke-interface {v0, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    .line 561
    goto :goto_7

    .line 562
    :catch_4
    move-exception v0

    .line 563
    goto :goto_5

    .line 564
    :cond_d
    new-array v6, v8, [Landroid/app/backup/RestoreSet;

    .line 566
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 569
    move-result-object v5

    .line 570
    check-cast v5, [Landroid/app/backup/RestoreSet;

    .line 572
    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 575
    goto :goto_7

    .line 576
    :goto_5
    const-string v5, "BackupManagerService"

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    .line 580
    const-string v7, "Restore observer threw: "

    .line 582
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    :goto_6
    invoke-static {v0, v6, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 588
    goto :goto_7

    .line 589
    :catch_5
    const-string v0, "BackupManagerService"

    .line 591
    const-string v5, "Unable to report listing to observer"

    .line 593
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_e
    :goto_7
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 601
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    .line 604
    move-result-wide v5

    .line 605
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 610
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 613
    goto/16 :goto_16

    .line 615
    :catchall_3
    move-exception v0

    .line 616
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 617
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 618
    :goto_8
    move-object v5, v0

    .line 619
    move-object v0, v7

    .line 620
    goto :goto_c

    .line 621
    :goto_9
    move-object v5, v7

    .line 622
    goto :goto_a

    .line 623
    :catchall_4
    move-exception v0

    .line 624
    goto :goto_8

    .line 625
    :catch_6
    move-exception v0

    .line 626
    goto :goto_9

    .line 627
    :goto_a
    :try_start_e
    const-string v6, "BackupManagerService"

    .line 629
    new-instance v9, Ljava/lang/StringBuilder;

    .line 631
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    const-string v10, "Error from transport getting set list: "

    .line 636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    move-result-object v0

    .line 650
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 653
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 655
    if-eqz v0, :cond_e

    .line 657
    if-nez v5, :cond_f

    .line 659
    :try_start_f
    invoke-interface {v0, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    .line 662
    goto :goto_7

    .line 663
    :catch_7
    move-exception v0

    .line 664
    goto :goto_b

    .line 665
    :cond_f
    new-array v6, v8, [Landroid/app/backup/RestoreSet;

    .line 667
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 670
    move-result-object v5

    .line 671
    check-cast v5, [Landroid/app/backup/RestoreSet;

    .line 673
    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 676
    goto :goto_7

    .line 677
    :goto_b
    const-string v5, "BackupManagerService"

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    .line 681
    const-string v7, "Restore observer threw: "

    .line 683
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    goto :goto_6

    .line 687
    :goto_c
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 689
    if-eqz v6, :cond_11

    .line 691
    if-nez v0, :cond_10

    .line 693
    :try_start_10
    invoke-interface {v6, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    .line 696
    goto :goto_e

    .line 697
    :catch_8
    move-exception v0

    .line 698
    goto :goto_d

    .line 699
    :cond_10
    new-array v7, v8, [Landroid/app/backup/RestoreSet;

    .line 701
    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 704
    move-result-object v0

    .line 705
    check-cast v0, [Landroid/app/backup/RestoreSet;

    .line 707
    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 710
    goto :goto_e

    .line 711
    :goto_d
    const-string v6, "BackupManagerService"

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    .line 715
    const-string v8, "Restore observer threw: "

    .line 717
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-static {v0, v7, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 723
    goto :goto_e

    .line 724
    :catch_9
    const-string v0, "BackupManagerService"

    .line 726
    const-string v6, "Unable to report listing to observer"

    .line 728
    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_11
    :goto_e
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 736
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    .line 739
    move-result-wide v6

    .line 740
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 743
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 745
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 748
    throw v5

    .line 749
    :cond_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 751
    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 753
    new-instance v1, Lcom/android/server/backup/internal/PerformClearTask;

    .line 755
    iget-object v2, v0, Lcom/android/server/backup/params/ClearParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 757
    iget-object v3, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 759
    iget-object v0, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 761
    check-cast v0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    .line 763
    invoke-direct {v1, v5, v2, v3, v0}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;)V

    .line 766
    invoke-virtual {v1}, Lcom/android/server/backup/internal/PerformClearTask;->run()V

    .line 769
    goto/16 :goto_16

    .line 771
    :cond_13
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 773
    check-cast v0, Lcom/android/server/backup/params/RestoreParams;

    .line 775
    const-string v2, "BackupManagerService"

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    .line 779
    const-string v4, "MSG_RUN_RESTORE observer="

    .line 781
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    iget-object v4, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 786
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    move-result-object v3

    .line 793
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 798
    iget-object v11, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 800
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 802
    iget-object v13, v0, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 804
    iget-object v14, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 806
    iget-object v15, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 808
    iget-wide v4, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 810
    iget-object v7, v0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 812
    iget v8, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 814
    iget-boolean v12, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 816
    iget-object v10, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 818
    iget-object v9, v0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 820
    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 822
    check-cast v3, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 824
    move-object/from16 v21, v10

    .line 826
    move-object v10, v2

    .line 827
    move/from16 v20, v12

    .line 829
    move-object v12, v3

    .line 830
    move-wide/from16 v16, v4

    .line 832
    move-object/from16 v18, v7

    .line 834
    move/from16 v19, v8

    .line 836
    move-object/from16 v22, v9

    .line 838
    move-object/from16 v23, v0

    .line 840
    invoke-direct/range {v10 .. v23}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 843
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 845
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 847
    monitor-enter v3

    .line 848
    :try_start_11
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 850
    iget-boolean v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 852
    if-eqz v0, :cond_14

    .line 854
    const-string v0, "BackupManagerService"

    .line 856
    const-string v4, "Restore in progress, queueing."

    .line 858
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 863
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 865
    check-cast v0, Ljava/util/ArrayDeque;

    .line 867
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 870
    goto :goto_f

    .line 871
    :catchall_5
    move-exception v0

    .line 872
    goto :goto_10

    .line 873
    :cond_14
    const-string v0, "BackupManagerService"

    .line 875
    const-string v4, "Starting restore."

    .line 877
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 882
    iput-boolean v6, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 884
    const/16 v0, 0x14

    .line 886
    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 889
    move-result-object v0

    .line 890
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 893
    :goto_f
    monitor-exit v3

    .line 894
    goto/16 :goto_16

    .line 896
    :goto_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 897
    throw v0

    .line 898
    :cond_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 900
    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 902
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    .line 904
    move-object v4, v2

    .line 905
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 907
    iget-object v7, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 909
    iget-object v8, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 911
    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    .line 913
    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    .line 915
    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    .line 917
    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    .line 919
    iget-object v13, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 921
    iget-object v14, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 923
    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    .line 925
    iget-boolean v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    .line 927
    move/from16 v16, v3

    .line 929
    iget-boolean v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    .line 931
    move/from16 v17, v3

    .line 933
    iget-boolean v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    .line 935
    move/from16 v18, v3

    .line 937
    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    .line 939
    move-object/from16 v19, v3

    .line 941
    iget-object v3, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 943
    move-object/from16 v20, v3

    .line 945
    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 947
    move-object/from16 v21, v3

    .line 949
    iget-boolean v3, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 951
    move/from16 v22, v3

    .line 953
    iget v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    .line 955
    move/from16 v23, v3

    .line 957
    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->smartswitchBackupPath:[Ljava/lang/String;

    .line 959
    move-object/from16 v24, v3

    .line 961
    iget v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->transportFlags:I

    .line 963
    move/from16 v25, v0

    .line 965
    move-object v6, v1

    .line 966
    check-cast v6, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 968
    invoke-direct/range {v4 .. v25}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;I)V

    .line 971
    new-instance v0, Ljava/lang/Thread;

    .line 973
    const-string v1, "adb-backup"

    .line 975
    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 981
    goto/16 :goto_16

    .line 983
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 986
    move-result-wide v9

    .line 987
    iput-wide v9, v5, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 989
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 991
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 994
    move-result-object v4

    .line 995
    if-eqz v4, :cond_17

    .line 997
    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 1000
    move-result-object v0

    .line 1001
    goto :goto_11

    .line 1002
    :cond_17
    move-object v0, v7

    .line 1003
    :goto_11
    if-nez v0, :cond_19

    .line 1005
    if-eqz v4, :cond_18

    .line 1007
    iget-object v0, v3, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 1009
    invoke-virtual {v0, v4, v2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 1012
    :cond_18
    const-string v0, "BackupManagerService"

    .line 1014
    const-string v1, "Backup requested but no transport available"

    .line 1016
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    goto/16 :goto_16

    .line 1021
    :cond_19
    new-instance v13, Ljava/util/ArrayList;

    .line 1023
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1028
    iget-object v14, v5, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 1030
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 1032
    monitor-enter v5

    .line 1033
    :try_start_12
    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1035
    iget-boolean v9, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 1037
    if-eqz v9, :cond_1a

    .line 1039
    const-string v0, "BackupManagerService"

    .line 1041
    const-string v1, "Backup time but one already running"

    .line 1043
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    monitor-exit v5

    .line 1047
    return-void

    .line 1048
    :catchall_6
    move-exception v0

    .line 1049
    goto/16 :goto_17

    .line 1051
    :cond_1a
    const-string v9, "BackupManagerService"

    .line 1053
    const-string v10, "Running a backup pass"

    .line 1055
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1060
    iput-boolean v6, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 1062
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1064
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1066
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 1069
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1071
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 1073
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 1076
    move-result v6

    .line 1077
    if-lez v6, :cond_1c

    .line 1079
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1081
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 1083
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1086
    move-result-object v6

    .line 1087
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1090
    move-result-object v6

    .line 1091
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1094
    move-result v9

    .line 1095
    if-eqz v9, :cond_1b

    .line 1097
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1100
    move-result-object v9

    .line 1101
    check-cast v9, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 1103
    iget-object v9, v9, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    .line 1105
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    goto :goto_12

    .line 1109
    :cond_1b
    const-string v6, "BackupManagerService"

    .line 1111
    const-string/jumbo v9, "clearing pending backups"

    .line 1114
    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1119
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 1121
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1124
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1126
    iput-object v7, v6, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 1128
    :cond_1c
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1129
    :try_start_13
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 1132
    move-result-object v7
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a

    .line 1133
    :goto_13
    move-object/from16 v16, v7

    .line 1135
    goto :goto_14

    .line 1136
    :catch_a
    const-string v5, "BackupManagerService"

    .line 1138
    const-string v6, "Failed to retrieve monitor from transport"

    .line 1140
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    goto :goto_13

    .line 1144
    :goto_14
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1147
    move-result v5

    .line 1148
    if-lez v5, :cond_1d

    .line 1150
    :try_start_14
    new-instance v5, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;

    .line 1152
    invoke-direct {v5, v3, v4}, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 1155
    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1157
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 1159
    iget-object v7, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 1161
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 1164
    move-result-object v7

    .line 1165
    iget-object v10, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 1167
    invoke-interface {v10, v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    .line 1170
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 1173
    move-result-object v0

    .line 1174
    move-object v12, v0

    .line 1175
    check-cast v12, Ljava/lang/String;

    .line 1177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1180
    move-result-object v18

    .line 1181
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1183
    invoke-virtual {v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 1186
    move-result-object v21

    .line 1187
    move-object v10, v6

    .line 1188
    check-cast v10, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 1190
    const/4 v15, 0x0

    .line 1191
    const/16 v19, 0x0

    .line 1193
    const/16 v20, 0x0

    .line 1195
    move-object v11, v4

    .line 1196
    move-object/from16 v17, v5

    .line 1198
    invoke-static/range {v9 .. v21}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 1201
    goto :goto_16

    .line 1202
    :catch_b
    move-exception v0

    .line 1203
    const-string v5, "BackupManagerService"

    .line 1205
    const-string v6, "Transport became unavailable attempting backup or error initializing backup task"

    .line 1207
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    goto :goto_15

    .line 1211
    :cond_1d
    const-string v0, "BackupManagerService"

    .line 1213
    const-string v5, "Backup requested but nothing pending"

    .line 1215
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_15
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 1221
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1223
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 1225
    monitor-enter v2

    .line 1226
    :try_start_15
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1228
    iput-boolean v8, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 1230
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1231
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1233
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1238
    :catch_c
    :cond_1e
    :goto_16
    return-void

    .line 1239
    :catchall_7
    move-exception v0

    .line 1240
    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 1241
    throw v0

    .line 1242
    :goto_17
    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1243
    throw v0

    .line 1244
    nop

    .line 1245
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1255
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final stop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 4
    const/16 v0, 0x16

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    return-void
.end method
