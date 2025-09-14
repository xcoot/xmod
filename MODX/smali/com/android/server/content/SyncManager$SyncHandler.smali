.class public final Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field public final mWakeLocks:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance p2, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 8
    invoke-direct {p2, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 11
    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 13
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public final cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 5
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 30
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 32
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 43
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 55
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 57
    const-string v3, "MESSAGE_CANCEL"

    .line 59
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "SyncManager"

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v3, "unBindFromSyncAdapter: connection "

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 33
    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 38
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 40
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 42
    const-string/jumbo v2, "unbindService for "

    .line 45
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 52
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 54
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 59
    :try_start_0
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 61
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 63
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 65
    iget v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 67
    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteSyncFinish(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    :cond_1
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 83
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 90
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 92
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 94
    iget-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 96
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 98
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 100
    const-string/jumbo v5, "removeActiveSync: account="

    .line 103
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 105
    monitor-enter v6

    .line 106
    :try_start_1
    const-string v7, "SyncManager"

    .line 108
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_2

    .line 114
    const-string v7, "SyncManager"

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v5, v3, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 123
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v5, " user="

    .line 128
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v5, " auth="

    .line 136
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v5, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 141
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 156
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Ljava/util/ArrayList;

    .line 165
    if-nez v7, :cond_3

    .line 167
    new-instance v7, Ljava/util/ArrayList;

    .line 169
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 174
    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :try_start_3
    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    iget-object v5, v3, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 184
    iget-object v3, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 186
    if-eqz v5, :cond_5

    .line 188
    if-nez v3, :cond_4

    .line 190
    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 193
    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 196
    move-result-object v2

    .line 197
    :cond_5
    :goto_1
    const/4 v3, 0x4

    .line 198
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 201
    const-string v0, "SyncManager"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 209
    const-string v0, "SyncManager"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v2, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 235
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 237
    const/16 v1, 0x8

    .line 239
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 242
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 244
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 246
    const-string/jumbo v0, "closeActiveSyncContext: "

    .line 249
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 256
    return-void

    .line 257
    :catchall_1
    move-exception p0

    .line 258
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    :try_start_5
    throw p0

    .line 260
    :goto_2
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    throw p0
.end method

.method public final computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .locals 12

    .line 1
    const-string v0, "SyncManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 10
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 12
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 17
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 19
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 21
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 23
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 25
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x3

    .line 30
    if-nez v4, :cond_1

    .line 32
    if-eqz v0, :cond_0

    .line 34
    const-string p0, "SyncManager"

    .line 36
    const-string p1, "    Dropping sync operation: account doesn\'t exist."

    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_3

    .line 45
    :cond_0
    :goto_0
    const-string p0, "SYNC_OP_STATE_INVALID: account doesn\'t exist."

    .line 47
    const-string p1, "SyncManager"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v3

    .line 53
    return v5

    .line 54
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 57
    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 59
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 61
    iget-object v9, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 63
    const/4 v10, 0x1

    .line 64
    const/4 v11, 0x1

    .line 65
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    .line 68
    move-result v3

    .line 69
    if-ne v3, v5, :cond_3

    .line 71
    if-eqz v0, :cond_2

    .line 73
    const-string p0, "SyncManager"

    .line 75
    const-string p1, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    const-string p0, "SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    .line 82
    const-string p1, "SyncManager"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 88
    :cond_3
    if-nez v3, :cond_5

    .line 90
    if-eqz v0, :cond_4

    .line 92
    const-string p0, "SyncManager"

    .line 94
    const-string p1, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4
    const-string p0, "SYNC_OP_STATE_INVALID: NOT_SYNCABLE"

    .line 101
    const-string p1, "SyncManager"

    .line 103
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 p0, 0x4

    .line 107
    return p0

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 110
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 112
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 114
    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    .line 117
    move-result v1

    .line 118
    const/4 v4, 0x1

    .line 119
    const/4 v5, 0x0

    .line 120
    if-eqz v1, :cond_6

    .line 122
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 124
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 126
    iget-object v1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 128
    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 130
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v1, v2, v6}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_6

    .line 138
    move p0, v4

    .line 139
    goto :goto_1

    .line 140
    :cond_6
    move p0, v5

    .line 141
    :goto_1
    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 143
    const-string/jumbo v1, "ignore_settings"

    .line 146
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_8

    .line 152
    if-gez v3, :cond_7

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    move v4, v5

    .line 156
    :cond_8
    :goto_2
    if-nez p0, :cond_a

    .line 158
    if-nez v4, :cond_a

    .line 160
    if-eqz v0, :cond_9

    .line 162
    const-string p0, "SyncManager"

    .line 164
    const-string p1, "    Dropping sync operation: disallowed by settings/network."

    .line 166
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_9
    const-string p0, "SYNC_OP_STATE_INVALID: disallowed by settings/network"

    .line 171
    const-string p1, "SyncManager"

    .line 173
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 p0, 0x5

    .line 177
    return p0

    .line 178
    :cond_a
    return v5

    .line 179
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0
.end method

.method public final deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 5
    iget-boolean v1, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string/jumbo v1, "periodic "

    .line 12
    :goto_0
    move-object v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v1, ""

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v7

    .line 21
    const-string/jumbo v4, "sync.  op="

    .line 24
    const-string v6, " delay="

    .line 26
    const-string/jumbo v2, "deferSyncH() "

    .line 29
    const-string v8, " why="

    .line 31
    move-object v5, p1

    .line 32
    move-object v9, p4

    .line 33
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 40
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 42
    invoke-static {v0, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 45
    iget-boolean p4, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 47
    if-eqz p4, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string/jumbo p4, "deferSyncH()"

    .line 60
    invoke-virtual {p0, p1, p4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 66
    :goto_2
    return-void
.end method

.method public final findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 21
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 27
    if-ne v1, p1, :cond_0

    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 13
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 22
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 27
    throw p1
.end method

.method public final handleSyncMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string/jumbo v1, "syncFinished"

    .line 8
    const-string/jumbo v2, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    .line 11
    const-string/jumbo v3, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    .line 14
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    .line 17
    const-string/jumbo v5, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    .line 20
    const-string v6, "Detected sync making no progress for "

    .line 22
    const-string/jumbo v7, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    .line 25
    const-string v9, "Stopping sync. Reschedule: "

    .line 27
    const-string v10, "SyncManager"

    .line 29
    const/4 v11, 0x2

    .line 30
    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    move-result v12

    .line 34
    :try_start_0
    iget-object v13, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 36
    invoke-virtual {v13}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 43
    move-result-object v14

    .line 44
    const/4 v15, 0x1

    .line 45
    if-eqz v14, :cond_0

    .line 47
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 50
    move-result v14

    .line 51
    if-eqz v14, :cond_0

    .line 53
    move v14, v15

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v14, 0x0

    .line 56
    :goto_0
    iput-boolean v14, v13, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 58
    iget v13, v0, Landroid/os/Message;->what:I

    .line 60
    if-eq v13, v15, :cond_11

    .line 62
    const/4 v1, 0x4

    .line 63
    if-eq v13, v1, :cond_f

    .line 65
    const/4 v1, 0x5

    .line 66
    if-eq v13, v1, :cond_c

    .line 68
    const/4 v1, 0x6

    .line 69
    if-eq v13, v1, :cond_a

    .line 71
    const/4 v1, 0x0

    .line 72
    packed-switch v13, :pswitch_data_0

    .line 75
    goto/16 :goto_4

    .line 77
    :pswitch_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    check-cast v1, Landroid/util/Pair;

    .line 81
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 88
    move-result-object v0

    .line 89
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 91
    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-virtual {v8, v2, v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 96
    goto/16 :goto_4

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto/16 :goto_5

    .line 101
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    check-cast v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 105
    iget-object v2, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 107
    iget-wide v3, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    .line 109
    iget-wide v5, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    .line 111
    iget-object v7, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    .line 113
    move-object/from16 v1, p0

    .line 115
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 118
    goto/16 :goto_4

    .line 120
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    check-cast v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 124
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 126
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 128
    iget-wide v3, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    .line 130
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 133
    goto/16 :goto_4

    .line 135
    :pswitch_3
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 139
    if-eqz v12, :cond_1

    .line 141
    const-string v3, "Stop sync received."

    .line 143
    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 148
    invoke-virtual {v8, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_14

    .line 154
    invoke-virtual {v8, v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 157
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 159
    if-eqz v1, :cond_2

    .line 161
    move v1, v15

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    const/4 v1, 0x0

    .line 164
    :goto_1
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 166
    if-eqz v0, :cond_3

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    const/4 v15, 0x0

    .line 170
    :goto_2
    if-eqz v12, :cond_4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "Backoff: "

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    if-eqz v15, :cond_5

    .line 197
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 199
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 201
    invoke-static {v0, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 204
    :cond_5
    if-eqz v1, :cond_14

    .line 206
    iget-boolean v0, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 208
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 210
    const-wide/16 v3, 0x0

    .line 212
    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 221
    goto/16 :goto_4

    .line 223
    :cond_6
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 226
    goto/16 :goto_4

    .line 228
    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 232
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 235
    goto/16 :goto_4

    .line 237
    :pswitch_5
    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_7

    .line 243
    const-string/jumbo v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    .line 246
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 253
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 256
    goto/16 :goto_4

    .line 258
    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 262
    if-eqz v12, :cond_8

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 271
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v2

    .line 280
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_8
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_9

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-virtual {v0, v2, v15}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;Z)V

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, ". cancelling."

    .line 311
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v2

    .line 318
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 323
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 325
    const-string/jumbo v3, "no network activity"

    .line 328
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 331
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 334
    goto/16 :goto_4

    .line 336
    :cond_9
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 338
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 341
    goto/16 :goto_4

    .line 343
    :cond_a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 350
    move-result-object v0

    .line 351
    if-eqz v12, :cond_b

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 355
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    const-string v3, " bundle: "

    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v2

    .line 373
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_b
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 379
    goto/16 :goto_4

    .line 381
    :cond_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    check-cast v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 385
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 387
    if-eqz v12, :cond_d

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v0

    .line 401
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_d
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 406
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 409
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-eqz v0, :cond_14

    .line 412
    :try_start_1
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 414
    if-eqz v0, :cond_e

    .line 416
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 418
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 420
    const-string v3, "Calling cancelSync for SERVICE_DISCONNECTED "

    .line 422
    const-string v4, " adapter="

    .line 424
    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/Object;

    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 431
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 433
    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 436
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 438
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 440
    const-string v2, "Canceled"

    .line 442
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    goto :goto_3

    .line 450
    :catch_0
    move-exception v0

    .line 451
    :try_start_2
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 453
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 455
    const-string v3, "RemoteException "

    .line 457
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 460
    move-result-object v0

    .line 461
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 468
    :cond_e
    :goto_3
    new-instance v0, Landroid/content/SyncResult;

    .line 470
    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 473
    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 475
    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 477
    const-wide/16 v5, 0x1

    .line 479
    add-long/2addr v3, v5

    .line 480
    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 482
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 484
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 486
    const-string/jumbo v3, "service disconnected"

    .line 489
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 492
    invoke-virtual {v8, v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 495
    goto :goto_4

    .line 496
    :cond_f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    check-cast v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 500
    if-eqz v12, :cond_10

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    .line 504
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object v1

    .line 516
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_10
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 521
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 523
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 526
    move-result v1

    .line 527
    if-eqz v1, :cond_14

    .line 529
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 531
    iget-object v0, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    .line 533
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    .line 536
    goto :goto_4

    .line 537
    :cond_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    check-cast v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 541
    iget-object v3, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 543
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 545
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 548
    move-result v3

    .line 549
    if-nez v3, :cond_12

    .line 551
    if-eqz v12, :cond_14

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    move-result-object v0

    .line 567
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    goto :goto_4

    .line 571
    :cond_12
    if-eqz v12, :cond_13

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 575
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 580
    iget-object v1, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 582
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object v1

    .line 589
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_13
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 594
    iget-object v1, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 596
    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 598
    const-string/jumbo v2, "sync finished"

    .line 601
    invoke-static {v1, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 604
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    .line 606
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 608
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    :cond_14
    :goto_4
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 613
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 616
    return-void

    .line 617
    :goto_5
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 619
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 622
    throw v0

    .line 623
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 13

    .line 1
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 15
    move-result-wide v3

    .line 16
    add-long/2addr v3, v1

    .line 17
    iget-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 19
    sub-long/2addr v3, v0

    .line 20
    const-string p0, "SyncManager"

    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const-wide/32 v0, 0x100000

    .line 32
    div-long v5, v3, v0

    .line 34
    rem-long v0, v3, v0

    .line 36
    const-wide/16 v7, 0x400

    .line 38
    div-long v9, v0, v7

    .line 40
    rem-long/2addr v0, v7

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    move-result-wide v7

    .line 45
    iget-wide v11, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 47
    sub-long/2addr v7, v11

    .line 48
    const-wide/16 v11, 0x3e8

    .line 50
    div-long/2addr v7, v11

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    move-result-object v5

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object v0

    .line 67
    filled-new-array {p1, v2, v5, v0}, [Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    const-string v0, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    .line 73
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const-wide/16 p0, 0xa

    .line 82
    cmp-long p0, v3, p0

    .line 84
    if-gtz p0, :cond_1

    .line 86
    const/4 p0, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 p0, 0x0

    .line 89
    :goto_0
    return p0
.end method

.method public final removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 30
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 32
    if-eqz v2, :cond_0

    .line 34
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 36
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 53
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v3

    .line 63
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 75
    iget v5, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 77
    iget v6, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 79
    if-eq v5, v6, :cond_2

    .line 81
    iget v5, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 83
    if-ne v5, v6, :cond_1

    .line 85
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_3

    .line 91
    iget v6, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 93
    const-string/jumbo v7, "removePeriodicSyncInternalH"

    .line 96
    invoke-static {v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0, v6, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 103
    :cond_3
    iget-object v5, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 105
    const-string/jumbo v6, "removePeriodicSyncInternalH-canceling: "

    .line 108
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v2, v4, p3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    return-void
.end method

.method public final runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v2, "SyncManager"

    .line 5
    move-object/from16 v3, p0

    .line 7
    iget-object v4, v3, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 9
    const-string v0, "Sync start: account="

    .line 11
    iget-object v5, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    :try_start_0
    iput-boolean v7, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object/from16 v9, p2

    .line 20
    invoke-interface {v9, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 23
    iget-object v8, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v8, v8, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 30
    if-eqz v8, :cond_0

    .line 32
    iget-object v8, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 34
    new-instance v10, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 41
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 43
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v11

    .line 50
    const-string v12, " authority="

    .line 52
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 54
    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 56
    const-string v14, " reason="

    .line 58
    iget v0, v5, Lcom/android/server/content/SyncOperation;->reason:I

    .line 60
    invoke-static {v6, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 63
    move-result-object v15

    .line 64
    const-string v16, " extras="

    .line 66
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-static {v0, v10}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v17

    .line 80
    const-string v18, " adapter="

    .line 82
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 84
    move-object/from16 v19, v0

    .line 86
    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    .line 101
    move-result-object v0

    .line 102
    iput-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 104
    iget-object v8, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 106
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 108
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 110
    new-instance v10, Landroid/os/Bundle;

    .line 112
    iget-object v11, v5, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 114
    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 117
    invoke-interface {v0, v1, v9, v8, v10}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 120
    iget-object v0, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 122
    const-string v8, "Sync is running now..."

    .line 124
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v0, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_4

    .line 132
    :goto_1
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 134
    const-string v8, "Sync failed with RuntimeException: "

    .line 136
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v4, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 147
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "Caught RuntimeException while starting the sync "

    .line 154
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    if-nez v5, :cond_1

    .line 159
    const-string v3, "[null]"

    .line 161
    goto :goto_2

    .line 162
    :cond_1
    invoke-virtual {v5, v6, v7, v6, v7}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 165
    move-result-object v3

    .line 166
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    goto :goto_4

    .line 177
    :goto_3
    iget-object v6, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 179
    const-string v7, "Sync failed with RemoteException: "

    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 184
    move-result-object v8

    .line 185
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 192
    const-string/jumbo v6, "maybeStartNextSync: caught a RemoteException, rescheduling"

    .line 195
    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 201
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 203
    invoke-static {v4, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 206
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 209
    :goto_4
    return-void
.end method

.method public final runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string v0, "SyncManager"

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    move-result v5

    .line 14
    iget-object v6, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 16
    iget-object v7, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 18
    iget-boolean v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 25
    invoke-interface {v0}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, v3, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    iput-boolean v8, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v9, "SyncManager"

    .line 38
    const-string v10, "Failed to unlink active sync adapter to death"

    .line 40
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v9

    .line 47
    iget-wide v11, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 49
    sub-long/2addr v9, v11

    .line 50
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 52
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 54
    const-string/jumbo v11, "runSyncFinishedOrCanceledH() op="

    .line 57
    const-string v12, " result="

    .line 59
    filled-new-array {v11, v6, v12, v2}, [Ljava/lang/Object;

    .line 62
    move-result-object v11

    .line 63
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 66
    const/4 v11, 0x1

    .line 67
    if-eqz v2, :cond_26

    .line 69
    if-eqz v5, :cond_1

    .line 71
    const-string v0, "SyncManager"

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v12, "runSyncFinishedOrCanceled [finished]: "

    .line 78
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v12, ", result "

    .line 86
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 102
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 104
    if-nez v0, :cond_2

    .line 106
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 108
    const-string/jumbo v5, "runSyncFinishedOrCanceledH()-finished"

    .line 111
    invoke-virtual {v0, v6, v5}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    .line 117
    move-result v0

    .line 118
    const/4 v5, -0x1

    .line 119
    if-nez v0, :cond_8

    .line 121
    const-string/jumbo v0, "success"

    .line 124
    iget-object v12, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 126
    iget-object v13, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 128
    const-string/jumbo v15, "sync success"

    .line 131
    iget-object v8, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 133
    invoke-virtual {v8, v13}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_3

    .line 139
    iget-object v14, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    check-cast v14, Ljava/lang/Long;

    .line 143
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 146
    move-result-wide v19

    .line 147
    const-wide/16 v21, -0x1

    .line 149
    cmp-long v14, v19, v21

    .line 151
    if-nez v14, :cond_3

    .line 153
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    check-cast v8, Ljava/lang/Long;

    .line 157
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 160
    move-result-wide v19

    .line 161
    cmp-long v8, v19, v21

    .line 163
    if-nez v8, :cond_3

    .line 165
    goto :goto_1

    .line 166
    :cond_3
    const-string v8, "SyncManager"

    .line 168
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 171
    move-result v14

    .line 172
    if-eqz v14, :cond_4

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    .line 176
    const-string v4, "Clearing backoffs for "

    .line 178
    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-object v4, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 193
    const-wide/16 v21, -0x1

    .line 195
    const-wide/16 v23, -0x1

    .line 197
    move-object/from16 v19, v4

    .line 199
    move-object/from16 v20, v13

    .line 201
    invoke-virtual/range {v19 .. v24}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 204
    invoke-virtual {v12, v13, v15}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 207
    :goto_1
    iget v4, v6, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 209
    if-eq v4, v5, :cond_20

    .line 211
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 213
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object v4

    .line 223
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_6

    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 235
    iget-boolean v12, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 237
    if-eqz v12, :cond_5

    .line 239
    iget-object v12, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 241
    iget-object v13, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 243
    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 246
    move-result v12

    .line 247
    if-eqz v12, :cond_5

    .line 249
    iget-object v12, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 251
    iget-object v13, v8, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 253
    invoke-static {v12, v13, v11}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_5

    .line 259
    iget-wide v12, v6, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 261
    iget-wide v14, v8, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 263
    cmp-long v12, v12, v14

    .line 265
    if-nez v12, :cond_5

    .line 267
    iget-wide v12, v6, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 269
    iget-wide v14, v8, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 271
    cmp-long v12, v12, v14

    .line 273
    if-nez v12, :cond_5

    .line 275
    goto :goto_2

    .line 276
    :cond_6
    const/4 v8, 0x0

    .line 277
    :goto_2
    if-nez v8, :cond_7

    .line 279
    goto/16 :goto_8

    .line 281
    :cond_7
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 283
    invoke-virtual {v4, v8}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 286
    goto/16 :goto_8

    .line 288
    :cond_8
    const-string v0, "SyncManager"

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v8, "failed sync operation "

    .line 295
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    const/4 v8, 0x0

    .line 299
    invoke-virtual {v6, v8, v11, v8, v11}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 302
    move-result-object v12

    .line 303
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v8, ", "

    .line 308
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v4

    .line 318
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v0, v6, Lcom/android/server/content/SyncOperation;->retries:I

    .line 323
    add-int/2addr v0, v11

    .line 324
    iput v0, v6, Lcom/android/server/content/SyncOperation;->retries:I

    .line 326
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 328
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 330
    iget-object v8, v4, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 332
    monitor-enter v8

    .line 333
    :try_start_1
    iget v4, v4, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 335
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    if-le v0, v4, :cond_9

    .line 338
    const/4 v4, 0x0

    .line 339
    iput v4, v6, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 341
    :cond_9
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 343
    iget-object v4, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 345
    invoke-static {v0, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 348
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 350
    if-nez v0, :cond_18

    .line 352
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    const-string v4, "SyncManager"

    .line 359
    const/4 v8, 0x3

    .line 360
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 363
    move-result v12

    .line 364
    if-eqz v12, :cond_a

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v13, "encountered error(s) during the sync: "

    .line 371
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    const-string v13, ", "

    .line 379
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v8

    .line 389
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_a
    const-string/jumbo v8, "ignore_backoff"

    .line 395
    iget-object v13, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 397
    invoke-virtual {v13, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 400
    move-result v14

    .line 401
    if-nez v14, :cond_b

    .line 403
    goto :goto_3

    .line 404
    :cond_b
    new-instance v14, Landroid/os/Bundle;

    .line 406
    invoke-direct {v14, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {v14, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 412
    iput-object v14, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 414
    :goto_3
    iput-boolean v11, v6, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 416
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 418
    const-string/jumbo v13, "do_not_retry"

    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_c

    .line 428
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 430
    if-nez v8, :cond_c

    .line 432
    if-eqz v12, :cond_17

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v8, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    .line 439
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v0

    .line 449
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    goto/16 :goto_5

    .line 454
    :cond_c
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 456
    const-string/jumbo v13, "upload"

    .line 459
    const/4 v14, 0x0

    .line 460
    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 463
    move-result v8

    .line 464
    if-eqz v8, :cond_f

    .line 466
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 468
    if-nez v8, :cond_f

    .line 470
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 472
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 475
    move-result v14

    .line 476
    if-nez v14, :cond_d

    .line 478
    goto :goto_4

    .line 479
    :cond_d
    new-instance v14, Landroid/os/Bundle;

    .line 481
    invoke-direct {v14, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 484
    invoke-virtual {v14, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 487
    iput-object v14, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 489
    :goto_4
    if-eqz v12, :cond_e

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v12, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    .line 496
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v8

    .line 506
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 512
    goto/16 :goto_5

    .line 514
    :cond_f
    iget-boolean v8, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 516
    if-eqz v8, :cond_10

    .line 518
    if-eqz v12, :cond_17

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v8, "not retrying sync operation because it retried too many times: "

    .line 525
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    move-result-object v0

    .line 535
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto :goto_5

    .line 539
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    .line 542
    move-result v8

    .line 543
    if-eqz v8, :cond_12

    .line 545
    if-eqz v12, :cond_11

    .line 547
    const-string/jumbo v8, "retrying sync operation because even though it had an error it achieved some success"

    .line 550
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_11
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 556
    goto :goto_5

    .line 557
    :cond_12
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 559
    if-eqz v8, :cond_14

    .line 561
    if-eqz v12, :cond_13

    .line 563
    new-instance v8, Ljava/lang/StringBuilder;

    .line 565
    const-string/jumbo v12, "retrying sync operation that failed because there was already a sync in progress: "

    .line 568
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    move-result-object v8

    .line 578
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_13
    const-wide/16 v12, 0x2710

    .line 583
    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 586
    goto :goto_5

    .line 587
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    .line 590
    move-result v8

    .line 591
    if-eqz v8, :cond_16

    .line 593
    if-eqz v12, :cond_15

    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo v12, "retrying sync operation because it encountered a soft error: "

    .line 600
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    move-result-object v8

    .line 610
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_15
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 616
    goto :goto_5

    .line 617
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v8, "not retrying sync operation because the error is a hard error: "

    .line 622
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    const/4 v8, 0x0

    .line 626
    invoke-virtual {v6, v8, v11, v8, v11}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 629
    move-result-object v12

    .line 630
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    move-result-object v0

    .line 637
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_17
    :goto_5
    const-wide/16 v12, 0x0

    .line 642
    goto :goto_6

    .line 643
    :cond_18
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 645
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 648
    move-result-object v4

    .line 649
    const-wide/16 v12, 0x0

    .line 651
    invoke-virtual {v0, v4, v12, v13}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 654
    :goto_6
    iget-boolean v0, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 656
    if-eqz v0, :cond_19

    .line 658
    move v0, v11

    .line 659
    goto :goto_7

    .line 660
    :cond_19
    iget-object v0, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 662
    iget-wide v14, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 664
    cmp-long v4, v14, v12

    .line 666
    if-lez v4, :cond_1a

    .line 668
    const/4 v0, 0x2

    .line 669
    goto :goto_7

    .line 670
    :cond_1a
    iget-wide v14, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 672
    cmp-long v4, v14, v12

    .line 674
    if-lez v4, :cond_1b

    .line 676
    const/4 v0, 0x3

    .line 677
    goto :goto_7

    .line 678
    :cond_1b
    iget-wide v14, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 680
    cmp-long v4, v14, v12

    .line 682
    if-lez v4, :cond_1c

    .line 684
    const/4 v0, 0x4

    .line 685
    goto :goto_7

    .line 686
    :cond_1c
    iget-wide v14, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 688
    cmp-long v0, v14, v12

    .line 690
    if-lez v0, :cond_1d

    .line 692
    const/4 v0, 0x5

    .line 693
    goto :goto_7

    .line 694
    :cond_1d
    iget-boolean v0, v2, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 696
    if-eqz v0, :cond_1e

    .line 698
    const/4 v0, 0x6

    .line 699
    goto :goto_7

    .line 700
    :cond_1e
    iget-boolean v0, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 702
    if-eqz v0, :cond_1f

    .line 704
    const/4 v0, 0x7

    .line 705
    goto :goto_7

    .line 706
    :cond_1f
    iget-boolean v0, v2, Landroid/content/SyncResult;->databaseError:Z

    .line 708
    if-eqz v0, :cond_25

    .line 710
    const/16 v0, 0x8

    .line 712
    :goto_7
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 716
    :cond_20
    :goto_8
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 718
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 720
    iget-wide v12, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 722
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    const-wide/16 v14, 0x3e8

    .line 727
    mul-long/2addr v12, v14

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 731
    move-result-wide v14

    .line 732
    cmp-long v19, v12, v14

    .line 734
    if-lez v19, :cond_21

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 739
    move-result-wide v19

    .line 740
    sub-long/2addr v12, v14

    .line 741
    add-long v12, v12, v19

    .line 743
    goto :goto_9

    .line 744
    :cond_21
    const-wide/16 v12, 0x0

    .line 746
    :goto_9
    iget-object v14, v4, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 748
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    const-string v15, "SyncManager"

    .line 753
    const/4 v5, 0x2

    .line 754
    invoke-static {v15, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 757
    move-result v15

    .line 758
    if-eqz v15, :cond_22

    .line 760
    const-string v5, "SyncManager"

    .line 762
    new-instance v15, Ljava/lang/StringBuilder;

    .line 764
    const-string/jumbo v11, "setDelayUntil: "

    .line 767
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    const-string v11, " -> delayUntil "

    .line 775
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    move-result-object v11

    .line 785
    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_22
    iget-object v5, v14, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 790
    monitor-enter v5

    .line 791
    const/4 v11, 0x1

    .line 792
    const/4 v15, -0x1

    .line 793
    :try_start_2
    invoke-virtual {v14, v8, v15, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 796
    move-result-object v15

    .line 797
    move-wide/from16 v21, v9

    .line 799
    iget-wide v9, v15, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 801
    cmp-long v9, v9, v12

    .line 803
    if-nez v9, :cond_23

    .line 805
    monitor-exit v5

    .line 806
    goto :goto_a

    .line 807
    :catchall_0
    move-exception v0

    .line 808
    goto :goto_b

    .line 809
    :cond_23
    iput-wide v12, v15, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 811
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    const/4 v5, 0x1

    .line 813
    invoke-virtual {v14, v5, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 816
    :goto_a
    const-string v5, "SyncManager"

    .line 818
    const/4 v9, 0x2

    .line 819
    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 822
    move-result v5

    .line 823
    if-eqz v5, :cond_24

    .line 825
    const-string v5, "SyncManager"

    .line 827
    new-instance v9, Ljava/lang/StringBuilder;

    .line 829
    const-string v10, "Delay Until time set to "

    .line 831
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    const-string v10, " for "

    .line 839
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    move-result-object v9

    .line 849
    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 854
    const-string/jumbo v9, "delayUntil newDelayUntilTime: "

    .line 857
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    move-result-object v5

    .line 867
    invoke-virtual {v4, v8, v5}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 870
    goto/16 :goto_d

    .line 872
    :goto_b
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 873
    throw v0

    .line 874
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    .line 878
    const-string/jumbo v3, "we are not in an error state, "

    .line 881
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    move-result-object v1

    .line 891
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 894
    throw v0

    .line 895
    :catchall_1
    move-exception v0

    .line 896
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 897
    throw v0

    .line 898
    :cond_26
    move-wide/from16 v21, v9

    .line 900
    if-eqz v5, :cond_27

    .line 902
    const-string v0, "SyncManager"

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    .line 906
    const-string/jumbo v5, "runSyncFinishedOrCanceled [canceled]: "

    .line 909
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    move-result-object v4

    .line 919
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_27
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 924
    if-nez v0, :cond_28

    .line 926
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 928
    const-string/jumbo v4, "runSyncFinishedOrCanceledH()-canceled"

    .line 931
    invoke-virtual {v0, v6, v4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 934
    :cond_28
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 936
    if-eqz v0, :cond_29

    .line 938
    :try_start_5
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 940
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 942
    const-string v5, "Calling cancelSync for runSyncFinishedOrCanceled "

    .line 944
    const-string v8, "  adapter="

    .line 946
    filled-new-array {v5, v3, v8, v0}, [Ljava/lang/Object;

    .line 949
    move-result-object v0

    .line 950
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 953
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 955
    invoke-interface {v0, v3}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 958
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 960
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 962
    const-string v4, "Canceled"

    .line 964
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 967
    move-result-object v4

    .line 968
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 971
    goto :goto_c

    .line 972
    :catch_1
    move-exception v0

    .line 973
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 975
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 977
    const-string v5, "RemoteException "

    .line 979
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 982
    move-result-object v0

    .line 983
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 986
    move-result-object v0

    .line 987
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 990
    :cond_29
    :goto_c
    const-string/jumbo v0, "canceled"

    .line 993
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 996
    :goto_d
    iget-wide v3, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 998
    const/4 v5, 0x1

    .line 999
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1002
    move-result-object v8

    .line 1003
    iget v5, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1005
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1008
    move-result-object v5

    .line 1009
    iget-object v9, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1011
    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1013
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1015
    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1017
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 1020
    move-result v9

    .line 1021
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1024
    move-result-object v9

    .line 1025
    filled-new-array {v10, v8, v5, v9}, [Ljava/lang/Object;

    .line 1028
    move-result-object v5

    .line 1029
    const/16 v8, 0xaa0

    .line 1031
    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1034
    iget-object v5, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1036
    iget-object v5, v5, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1038
    const/4 v8, 0x0

    .line 1039
    int-to-long v9, v8

    .line 1040
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 1042
    iget-object v11, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1044
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1046
    const-string/jumbo v12, "stopSyncEvent: historyId="

    .line 1049
    iget-object v13, v5, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 1051
    monitor-enter v13

    .line 1052
    :try_start_6
    const-string v14, "SyncManager"

    .line 1054
    const/4 v15, 0x2

    .line 1055
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1058
    move-result v14

    .line 1059
    if-eqz v14, :cond_2a

    .line 1061
    const-string v14, "SyncManager"

    .line 1063
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1065
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    move-result-object v12

    .line 1075
    invoke-static {v14, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    goto :goto_e

    .line 1079
    :catchall_2
    move-exception v0

    .line 1080
    goto/16 :goto_1e

    .line 1082
    :cond_2a
    :goto_e
    iget-object v12, v5, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 1084
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1087
    move-result v12

    .line 1088
    :cond_2b
    if-lez v12, :cond_2c

    .line 1090
    add-int/lit8 v12, v12, -0x1

    .line 1092
    iget-object v14, v5, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 1094
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1097
    move-result-object v14

    .line 1098
    check-cast v14, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1100
    iget v15, v14, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1102
    move-object/from16 p2, v14

    .line 1104
    int-to-long v14, v15

    .line 1105
    cmp-long v14, v14, v3

    .line 1107
    if-nez v14, :cond_2b

    .line 1109
    move-object/from16 v12, p2

    .line 1111
    goto :goto_f

    .line 1112
    :cond_2c
    const/4 v12, 0x0

    .line 1113
    :goto_f
    if-nez v12, :cond_2d

    .line 1115
    const-string v0, "SyncManager"

    .line 1117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    const-string/jumbo v8, "stopSyncEvent: no history for id "

    .line 1125
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1134
    move-result-object v3

    .line 1135
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    monitor-exit v13

    .line 1139
    move-object/from16 v19, v6

    .line 1141
    move-object/from16 p2, v7

    .line 1143
    goto/16 :goto_1a

    .line 1145
    :cond_2d
    move-wide/from16 v3, v21

    .line 1147
    iput-wide v3, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1149
    const/4 v14, 0x1

    .line 1150
    iput v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1152
    iput-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1154
    iput-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1156
    iput-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1158
    iget v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1160
    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    .line 1163
    move-result-object v9

    .line 1164
    iget-boolean v10, v5, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 1166
    const/4 v14, 0x0

    .line 1167
    invoke-virtual {v9, v10, v14}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1170
    iget-object v10, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1172
    iget v14, v10, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1174
    const/4 v15, 0x1

    .line 1175
    add-int/2addr v14, v15

    .line 1176
    iput v14, v10, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1178
    iget-object v14, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1180
    move-object/from16 v19, v6

    .line 1182
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1184
    add-int/2addr v6, v15

    .line 1185
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1187
    move-object v15, v7

    .line 1188
    iget-wide v6, v10, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1190
    add-long/2addr v6, v3

    .line 1191
    iput-wide v6, v10, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1193
    iget-wide v6, v14, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1195
    add-long/2addr v6, v3

    .line 1196
    iput-wide v6, v14, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1198
    iget v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1200
    if-eqz v6, :cond_33

    .line 1202
    const/4 v7, 0x1

    .line 1203
    if-eq v6, v7, :cond_32

    .line 1205
    const/4 v7, 0x2

    .line 1206
    if-eq v6, v7, :cond_31

    .line 1208
    const/4 v7, 0x3

    .line 1209
    if-eq v6, v7, :cond_30

    .line 1211
    const/4 v7, 0x4

    .line 1212
    if-eq v6, v7, :cond_2f

    .line 1214
    const/4 v7, 0x5

    .line 1215
    if-eq v6, v7, :cond_2e

    .line 1217
    goto :goto_10

    .line 1218
    :cond_2e
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1220
    const/4 v7, 0x1

    .line 1221
    add-int/2addr v6, v7

    .line 1222
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1224
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1226
    add-int/2addr v6, v7

    .line 1227
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1229
    goto :goto_10

    .line 1230
    :cond_2f
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1232
    const/4 v7, 0x1

    .line 1233
    add-int/2addr v6, v7

    .line 1234
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1236
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1238
    add-int/2addr v6, v7

    .line 1239
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1241
    goto :goto_10

    .line 1242
    :cond_30
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1244
    const/4 v7, 0x1

    .line 1245
    add-int/2addr v6, v7

    .line 1246
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1248
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1250
    add-int/2addr v6, v7

    .line 1251
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1253
    goto :goto_10

    .line 1254
    :cond_31
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1256
    const/4 v7, 0x1

    .line 1257
    add-int/2addr v6, v7

    .line 1258
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1260
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1262
    add-int/2addr v6, v7

    .line 1263
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1265
    goto :goto_10

    .line 1266
    :cond_32
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1268
    const/4 v7, 0x1

    .line 1269
    add-int/2addr v6, v7

    .line 1270
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1272
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1274
    add-int/2addr v6, v7

    .line 1275
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1277
    goto :goto_10

    .line 1278
    :cond_33
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1280
    const/4 v7, 0x1

    .line 1281
    add-int/2addr v6, v7

    .line 1282
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1284
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1286
    add-int/2addr v6, v7

    .line 1287
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1289
    :goto_10
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    .line 1292
    move-result v6

    .line 1293
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1295
    const/4 v10, 0x0

    .line 1296
    aget-object v14, v7, v10

    .line 1298
    if-nez v14, :cond_35

    .line 1300
    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1302
    invoke-direct {v14, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1305
    aput-object v14, v7, v10

    .line 1307
    :cond_34
    move-object/from16 p2, v15

    .line 1309
    goto :goto_11

    .line 1310
    :cond_35
    iget v10, v14, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1312
    if-eq v6, v10, :cond_34

    .line 1314
    array-length v10, v7

    .line 1315
    const/4 v14, 0x1

    .line 1316
    sub-int/2addr v10, v14

    .line 1317
    move-object/from16 p2, v15

    .line 1319
    const/4 v15, 0x0

    .line 1320
    invoke-static {v7, v15, v7, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1325
    new-instance v10, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1327
    invoke-direct {v10, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1330
    aput-object v10, v7, v15

    .line 1332
    const/4 v6, 0x1

    .line 1333
    goto :goto_12

    .line 1334
    :goto_11
    const/4 v6, 0x0

    .line 1335
    :goto_12
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1337
    const/4 v10, 0x0

    .line 1338
    aget-object v7, v7, v10

    .line 1340
    iget-wide v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1342
    add-long/2addr v14, v3

    .line 1343
    const-string/jumbo v10, "success"

    .line 1346
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1349
    move-result v10

    .line 1350
    if-eqz v10, :cond_38

    .line 1352
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1354
    const-wide/16 v17, 0x0

    .line 1356
    cmp-long v1, v1, v17

    .line 1358
    if-eqz v1, :cond_37

    .line 1360
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1362
    cmp-long v1, v1, v17

    .line 1364
    if-eqz v1, :cond_36

    .line 1366
    goto :goto_13

    .line 1367
    :cond_36
    const/4 v1, 0x0

    .line 1368
    goto :goto_14

    .line 1369
    :cond_37
    :goto_13
    const/4 v1, 0x1

    .line 1370
    :goto_14
    iget v2, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1372
    invoke-virtual {v9, v2, v14, v15}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1375
    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1377
    const/4 v10, 0x1

    .line 1378
    add-int/2addr v2, v10

    .line 1379
    iput v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1381
    iget-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1383
    add-long/2addr v14, v3

    .line 1384
    iput-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1386
    goto :goto_16

    .line 1387
    :cond_38
    const-string/jumbo v1, "canceled"

    .line 1390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1393
    move-result v1

    .line 1394
    if-nez v1, :cond_3a

    .line 1396
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1398
    const-wide/16 v17, 0x0

    .line 1400
    cmp-long v1, v1, v17

    .line 1402
    if-nez v1, :cond_39

    .line 1404
    const/4 v1, 0x1

    .line 1405
    goto :goto_15

    .line 1406
    :cond_39
    const/4 v1, 0x0

    .line 1407
    :goto_15
    iget-object v2, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1409
    iget v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1411
    const/16 v17, 0x1

    .line 1413
    add-int/lit8 v10, v10, 0x1

    .line 1415
    iput v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1417
    iget-object v2, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1419
    iget v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1421
    add-int/lit8 v10, v10, 0x1

    .line 1423
    iput v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1425
    iget v2, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1427
    invoke-virtual {v9, v2, v14, v15, v0}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1430
    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1432
    add-int/lit8 v2, v2, 0x1

    .line 1434
    iput v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1436
    iget-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1438
    add-long/2addr v14, v3

    .line 1439
    iput-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1441
    goto :goto_16

    .line 1442
    :cond_3a
    iget-object v1, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1444
    iget v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1446
    const/4 v7, 0x1

    .line 1447
    add-int/2addr v2, v7

    .line 1448
    iput v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1450
    iget-object v1, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1452
    iget v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1454
    add-int/2addr v2, v7

    .line 1455
    iput v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1457
    const/4 v1, 0x1

    .line 1458
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1460
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1465
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    const-string v10, ""

    .line 1470
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v0, " Source="

    .line 1478
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1483
    iget v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1485
    aget-object v0, v0, v10

    .line 1487
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    const-string v0, " Elapsed="

    .line 1492
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1498
    move-result-object v0

    .line 1499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-static {v2, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 1505
    const-string v0, " Reason="

    .line 1507
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1512
    const/4 v3, 0x0

    .line 1513
    invoke-static {v3, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 1516
    move-result-object v0

    .line 1517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1522
    if-eqz v0, :cond_3d

    .line 1524
    const-string v0, " Exemption="

    .line 1526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1531
    const/4 v3, 0x1

    .line 1532
    if-eq v0, v3, :cond_3c

    .line 1534
    const/4 v3, 0x2

    .line 1535
    if-eq v0, v3, :cond_3b

    .line 1537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1540
    goto :goto_17

    .line 1541
    :cond_3b
    const-string/jumbo v0, "top"

    .line 1544
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    goto :goto_17

    .line 1548
    :cond_3c
    const-string/jumbo v0, "fg"

    .line 1551
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_3d
    :goto_17
    const-string v0, " Extras="

    .line 1556
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1561
    invoke-static {v0, v2}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1567
    move-result-object v0

    .line 1568
    invoke-virtual {v9, v0}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1571
    if-eqz v1, :cond_3e

    .line 1573
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1576
    goto :goto_18

    .line 1577
    :cond_3e
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1579
    const/4 v1, 0x1

    .line 1580
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1583
    move-result v0

    .line 1584
    if-nez v0, :cond_3f

    .line 1586
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1588
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1591
    move-result-object v2

    .line 1592
    const-wide/32 v3, 0x927c0

    .line 1595
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1598
    :cond_3f
    :goto_18
    if-eqz v6, :cond_40

    .line 1600
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1603
    goto :goto_19

    .line 1604
    :cond_40
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1606
    const/4 v1, 0x2

    .line 1607
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1610
    move-result v0

    .line 1611
    if-nez v0, :cond_41

    .line 1613
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1615
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1618
    move-result-object v2

    .line 1619
    const-wide/32 v3, 0x1b7740

    .line 1622
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1625
    :cond_41
    :goto_19
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1626
    const/16 v1, 0x8

    .line 1628
    invoke-virtual {v5, v1, v11, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 1631
    :goto_1a
    const/16 v0, 0x12

    .line 1633
    move-object/from16 v1, p1

    .line 1635
    if-eqz v1, :cond_46

    .line 1637
    iget-boolean v2, v1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 1639
    if-eqz v2, :cond_46

    .line 1641
    move-object/from16 v2, p2

    .line 1643
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1645
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1647
    iget-object v5, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1649
    iget-wide v5, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 1651
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1653
    move-object/from16 v8, p0

    .line 1655
    iget-object v9, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1657
    iget-object v10, v9, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1659
    if-nez v10, :cond_42

    .line 1661
    goto/16 :goto_1d

    .line 1663
    :cond_42
    iget-object v10, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1665
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1668
    move-result-object v10

    .line 1669
    const/4 v11, 0x0

    .line 1670
    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 1673
    move-result-object v10

    .line 1674
    if-nez v10, :cond_43

    .line 1676
    goto/16 :goto_1d

    .line 1678
    :cond_43
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1680
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1683
    move-result-object v11

    .line 1684
    invoke-virtual {v10, v11}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1687
    move-result-object v10

    .line 1688
    new-instance v13, Landroid/content/Intent;

    .line 1690
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1692
    const-class v12, Landroid/content/SyncActivityTooManyDeletes;

    .line 1694
    invoke-direct {v13, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1697
    const-string v11, "account"

    .line 1699
    invoke-virtual {v13, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1702
    const-string v11, "authority"

    .line 1704
    invoke-virtual {v13, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1710
    move-result-object v11

    .line 1711
    const-string/jumbo v12, "provider"

    .line 1714
    invoke-virtual {v13, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1717
    const-string/jumbo v11, "numDeletes"

    .line 1720
    invoke-virtual {v13, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1723
    iget-object v5, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1725
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1728
    move-result-object v5

    .line 1729
    const/4 v6, 0x0

    .line 1730
    invoke-virtual {v5, v13, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 1733
    move-result-object v5

    .line 1734
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1737
    move-result v6

    .line 1738
    const/4 v11, 0x0

    .line 1739
    :goto_1b
    if-ge v11, v6, :cond_45

    .line 1741
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1744
    move-result-object v12

    .line 1745
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1747
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1749
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1751
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1753
    const/4 v14, 0x1

    .line 1754
    and-int/2addr v12, v14

    .line 1755
    if-eqz v12, :cond_44

    .line 1757
    new-instance v5, Landroid/os/UserHandle;

    .line 1759
    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1762
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1764
    const/4 v12, 0x0

    .line 1765
    const/high16 v14, 0x14000000

    .line 1767
    const/4 v15, 0x0

    .line 1768
    move-object/from16 v16, v5

    .line 1770
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1773
    move-result-object v6

    .line 1774
    iget-object v7, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1776
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1779
    move-result-object v7

    .line 1780
    const v11, 0x10403f2

    .line 1783
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1786
    move-result-object v7

    .line 1787
    :try_start_7
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1789
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1792
    move-result-object v12

    .line 1793
    const/4 v15, 0x0

    .line 1794
    invoke-virtual {v11, v12, v15, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 1797
    move-result-object v11
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1798
    goto :goto_1c

    .line 1799
    :catch_2
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1801
    :goto_1c
    new-instance v12, Landroid/app/Notification$Builder;

    .line 1803
    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 1805
    invoke-direct {v12, v11, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1808
    const v13, 0x1080b7b

    .line 1811
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1814
    move-result-object v12

    .line 1815
    iget-object v13, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1817
    const v14, 0x10403f0

    .line 1820
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1823
    move-result-object v13

    .line 1824
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1827
    move-result-object v12

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1831
    move-result-wide v13

    .line 1832
    invoke-virtual {v12, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1835
    move-result-object v12

    .line 1836
    const v13, 0x106001c

    .line 1839
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    .line 1842
    move-result v13

    .line 1843
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1846
    move-result-object v12

    .line 1847
    const v13, 0x10403f1

    .line 1850
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1853
    move-result-object v11

    .line 1854
    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1857
    move-result-object v11

    .line 1858
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1861
    move-result-object v7

    .line 1862
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1865
    move-result-object v10

    .line 1866
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1869
    move-result-object v7

    .line 1870
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1873
    move-result-object v7

    .line 1874
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1877
    move-result-object v6

    .line 1878
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1881
    move-result-object v6

    .line 1882
    iget v7, v6, Landroid/app/Notification;->flags:I

    .line 1884
    const/4 v12, 0x2

    .line 1885
    or-int/2addr v7, v12

    .line 1886
    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1888
    iget-object v7, v9, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1890
    invoke-virtual {v3}, Landroid/accounts/Account;->hashCode()I

    .line 1893
    move-result v3

    .line 1894
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 1897
    move-result v4

    .line 1898
    xor-int/2addr v3, v4

    .line 1899
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1902
    move-result-object v3

    .line 1903
    invoke-virtual {v7, v3, v0, v6, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1906
    goto :goto_1d

    .line 1907
    :cond_44
    const/4 v12, 0x2

    .line 1908
    const/4 v15, 0x0

    .line 1909
    add-int/lit8 v11, v11, 0x1

    .line 1911
    goto/16 :goto_1b

    .line 1913
    :cond_45
    const-string v0, "SyncManager"

    .line 1915
    const-string v3, "No activity found to handle too many deletes."

    .line 1917
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    goto :goto_1d

    .line 1921
    :cond_46
    move-object/from16 v8, p0

    .line 1923
    move-object/from16 v2, p2

    .line 1925
    iget-object v3, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1927
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1929
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1931
    invoke-virtual {v4}, Landroid/accounts/Account;->hashCode()I

    .line 1934
    move-result v4

    .line 1935
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1937
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1940
    move-result v5

    .line 1941
    xor-int/2addr v4, v5

    .line 1942
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1945
    move-result-object v4

    .line 1946
    new-instance v5, Landroid/os/UserHandle;

    .line 1948
    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1950
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1953
    invoke-virtual {v3, v4, v0, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1956
    :goto_1d
    if-eqz v1, :cond_47

    .line 1958
    iget-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 1960
    if-eqz v0, :cond_47

    .line 1962
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1964
    new-instance v1, Lcom/android/server/content/SyncOperation;

    .line 1966
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1968
    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1970
    move-object/from16 v3, v19

    .line 1972
    iget v6, v3, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1974
    iget-object v7, v3, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 1976
    iget v8, v3, Lcom/android/server/content/SyncOperation;->reason:I

    .line 1978
    iget v9, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1980
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1982
    new-instance v11, Landroid/os/Bundle;

    .line 1984
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1987
    iget-boolean v12, v3, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 1989
    iget v13, v3, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1991
    move-object v3, v1

    .line 1992
    invoke-direct/range {v3 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 1995
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 1998
    :cond_47
    return-void

    .line 1999
    :goto_1e
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2000
    throw v0
.end method

.method public final startSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    const-string v1, "SyncManager"

    .line 7
    const/4 v8, 0x2

    .line 8
    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const-string v2, "SyncManager"

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 25
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 27
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 29
    const/4 v9, 0x1

    .line 30
    if-nez v3, :cond_1

    .line 32
    iput-boolean v9, v2, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 34
    const-string v2, "SyncManager"

    .line 36
    const-string v3, "Clock is valid now."

    .line 38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    iget v2, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 43
    sget-object v3, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 45
    monitor-enter v3

    .line 46
    :try_start_0
    sget-object v4, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 48
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 51
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 52
    iget-boolean v2, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 54
    const-wide/16 v3, -0x1

    .line 56
    if-eqz v2, :cond_7

    .line 58
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 60
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v2

    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 82
    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 84
    iget v6, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 86
    if-ne v5, v6, :cond_2

    .line 88
    const-string/jumbo v0, "periodic sync, pending"

    .line 91
    invoke-static {v6, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 94
    return-void

    .line 95
    :cond_3
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 97
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v2

    .line 103
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 115
    iget-object v5, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 117
    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 119
    iget v6, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 121
    if-ne v5, v6, :cond_4

    .line 123
    const-string/jumbo v0, "periodic sync, already running"

    .line 126
    invoke-static {v6, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 129
    return-void

    .line 130
    :cond_5
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 132
    iget-object v5, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    move-result-wide v10

    .line 141
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 143
    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    .line 146
    move-result-object v6

    .line 147
    if-eqz v6, :cond_6

    .line 149
    iget-object v12, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 151
    check-cast v12, Ljava/lang/Long;

    .line 153
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 156
    move-result-wide v12

    .line 157
    cmp-long v12, v12, v3

    .line 159
    if-eqz v12, :cond_6

    .line 161
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 163
    check-cast v6, Ljava/lang/Long;

    .line 165
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 168
    move-result-wide v12

    .line 169
    cmp-long v6, v12, v10

    .line 171
    if-lez v6, :cond_6

    .line 173
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 177
    move-result-wide v5

    .line 178
    cmp-long v2, v5, v10

    .line 180
    if-lez v2, :cond_7

    .line 182
    :goto_0
    const-wide/16 v1, 0x0

    .line 184
    const-string v3, "backing off"

    .line 186
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 189
    return-void

    .line 190
    :cond_7
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 192
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    move-result-object v2

    .line 198
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_d

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 210
    iget-object v6, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 212
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iget-object v10, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 217
    iget-object v11, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 219
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 221
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 223
    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 225
    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 227
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v12

    .line 231
    if-eqz v12, :cond_8

    .line 233
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 235
    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 237
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v12

    .line 241
    if-eqz v12, :cond_8

    .line 243
    iget v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 245
    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 247
    if-ne v12, v13, :cond_8

    .line 249
    iget-boolean v6, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 251
    if-eqz v6, :cond_9

    .line 253
    iget-object v6, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 255
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 257
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 259
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 261
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_8

    .line 267
    :cond_9
    iget-object v2, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 269
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    .line 272
    move-result v2

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    .line 276
    move-result v6

    .line 277
    const-wide/16 v10, 0x2710

    .line 279
    if-lt v2, v6, :cond_b

    .line 281
    if-eqz v1, :cond_a

    .line 283
    const-string v1, "SyncManager"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    const-string v3, "Rescheduling sync due to conflict "

    .line 289
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_a
    const-string/jumbo v1, "delay on conflict"

    .line 309
    invoke-virtual {v0, v7, v10, v11, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 312
    return-void

    .line 313
    :cond_b
    if-eqz v1, :cond_c

    .line 315
    const-string v1, "SyncManager"

    .line 317
    const-string v2, "Pushing back running sync due to a higher priority sync"

    .line 319
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_c
    const-string/jumbo v1, "preempted"

    .line 325
    iget-object v2, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 327
    const/4 v6, 0x0

    .line 328
    invoke-virtual {v0, v6, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 331
    invoke-virtual {v0, v2, v10, v11, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 334
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_e

    .line 340
    iget v0, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v3, "invalid op state: "

    .line 347
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v1

    .line 357
    invoke-static {v0, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 360
    return-void

    .line 361
    :cond_e
    const-string v1, "SyncManager"

    .line 363
    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_f

    .line 369
    const-string v1, "SyncManager"

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 373
    const-string/jumbo v5, "dispatchSyncOperation: we are going to sync "

    .line 376
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v1, "SyncManager"

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v5, "num active syncs: "

    .line 396
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 401
    iget-object v5, v5, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 406
    move-result v5

    .line 407
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v2

    .line 414
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 419
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 421
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 424
    move-result-object v1

    .line 425
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_f

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    move-result-object v2

    .line 435
    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 437
    const-string v5, "SyncManager"

    .line 439
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    .line 442
    move-result-object v2

    .line 443
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    goto :goto_1

    .line 447
    :cond_f
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 449
    if-eqz v1, :cond_10

    .line 451
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 453
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 459
    if-eqz v1, :cond_10

    .line 461
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 463
    iget v5, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 465
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 468
    move-result v5

    .line 469
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 471
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 473
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 475
    invoke-interface {v1, v2, v5}, Lcom/android/server/usage/AppStandbyInternal;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    .line 478
    :cond_10
    iget-object v10, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 480
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 482
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 484
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 486
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 489
    move-result-object v1

    .line 490
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 492
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 494
    iget v5, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 496
    invoke-virtual {v2, v1, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 499
    move-result-object v2

    .line 500
    if-nez v2, :cond_11

    .line 502
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 504
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 506
    const-string/jumbo v3, "dispatchSyncOperation() failed: no sync adapter info for "

    .line 509
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 516
    const-string v2, "SyncManager"

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v4, "can\'t find a sync adapter for "

    .line 523
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, ", removing settings for it"

    .line 531
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    move-result-object v1

    .line 538
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 543
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 545
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 547
    monitor-enter v5

    .line 548
    :try_start_1
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 550
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 552
    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 554
    invoke-virtual {v1, v2, v4, v3, v9}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 557
    monitor-exit v5

    .line 558
    goto/16 :goto_7

    .line 560
    :catchall_0
    move-exception v0

    .line 561
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    throw v0

    .line 563
    :cond_11
    iget v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 565
    iget-object v11, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 567
    new-instance v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 569
    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 574
    move-result-wide v1

    .line 575
    const/4 v14, 0x0

    .line 576
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    move-result-object v5

    .line 580
    iget v15, v7, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 582
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    move-result-object v15

    .line 586
    iget-object v3, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 588
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 590
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 592
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 594
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 597
    move-result v3

    .line 598
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    move-result-object v3

    .line 602
    filled-new-array {v4, v5, v15, v3}, [Ljava/lang/Object;

    .line 605
    move-result-object v3

    .line 606
    const/16 v4, 0xaa0

    .line 608
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 611
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 613
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 615
    const-string/jumbo v4, "insertStartSyncEvent: "

    .line 618
    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 620
    monitor-enter v5

    .line 621
    :try_start_2
    const-string v15, "SyncManager"

    .line 623
    invoke-static {v15, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 626
    move-result v15

    .line 627
    if-eqz v15, :cond_12

    .line 629
    const-string v15, "SyncManager"

    .line 631
    new-instance v8, Ljava/lang/StringBuilder;

    .line 633
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    move-result-object v4

    .line 643
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    goto :goto_2

    .line 647
    :catchall_1
    move-exception v0

    .line 648
    goto/16 :goto_9

    .line 650
    :cond_12
    :goto_2
    iget-object v4, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 652
    const-string/jumbo v8, "insertStartSyncEvent"

    .line 655
    invoke-virtual {v3, v4, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 658
    move-result-object v4

    .line 659
    if-nez v4, :cond_13

    .line 661
    monitor-exit v5

    .line 662
    const-wide/16 v4, -0x1

    .line 664
    goto/16 :goto_4

    .line 666
    :cond_13
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 668
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 671
    iget-object v15, v7, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 673
    const-string/jumbo v9, "initialize"

    .line 676
    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 679
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 681
    iput v4, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 683
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 685
    add-int/lit8 v9, v4, 0x1

    .line 687
    iput v9, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 689
    iput v4, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 691
    if-gez v9, :cond_14

    .line 693
    iput v14, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 695
    :cond_14
    iput-wide v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 697
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 699
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 701
    iget v1, v7, Lcom/android/server/content/SyncOperation;->reason:I

    .line 703
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 705
    new-instance v1, Landroid/os/Bundle;

    .line 707
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 709
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 712
    iput-object v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 714
    iput v14, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 716
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 718
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 720
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 722
    invoke-virtual {v1, v14, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 725
    :goto_3
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 727
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 730
    move-result v1

    .line 731
    const/16 v2, 0x64

    .line 733
    if-le v1, v2, :cond_15

    .line 735
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 737
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 740
    move-result v2

    .line 741
    const/4 v4, 0x1

    .line 742
    sub-int/2addr v2, v4

    .line 743
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 746
    goto :goto_3

    .line 747
    :cond_15
    iget v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 749
    int-to-long v1, v1

    .line 750
    const-string v4, "SyncManager"

    .line 752
    const/4 v8, 0x2

    .line 753
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 756
    move-result v4

    .line 757
    if-eqz v4, :cond_16

    .line 759
    const-string v4, "SyncManager"

    .line 761
    new-instance v8, Ljava/lang/StringBuilder;

    .line 763
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    const-string/jumbo v9, "returning historyId "

    .line 769
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    move-result-object v8

    .line 779
    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_16
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 783
    iget-object v4, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 785
    iget-object v5, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 787
    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 789
    const/16 v8, 0x8

    .line 791
    invoke-virtual {v3, v8, v5, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 794
    move-wide v4, v1

    .line 795
    :goto_4
    move-object v1, v12

    .line 796
    move-object v2, v13

    .line 797
    move-object/from16 v3, p1

    .line 799
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 802
    const-string v1, "SyncManager"

    .line 804
    const/4 v2, 0x2

    .line 805
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 808
    move-result v1

    .line 809
    if-eqz v1, :cond_17

    .line 811
    const-string v1, "SyncManager"

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    .line 815
    const-string/jumbo v3, "dispatchSyncOperation: starting "

    .line 818
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    move-result-object v2

    .line 828
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_17
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 833
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 835
    const-string/jumbo v2, "setActiveSync: account= auth="

    .line 838
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 840
    monitor-enter v3

    .line 841
    :try_start_3
    const-string v4, "SyncManager"

    .line 843
    const/4 v5, 0x2

    .line 844
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 847
    move-result v4

    .line 848
    if-eqz v4, :cond_18

    .line 850
    const-string v4, "SyncManager"

    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    .line 854
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 859
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 861
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    const-string v2, " src="

    .line 866
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 871
    iget v2, v2, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 873
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    const-string v2, " extras="

    .line 878
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 883
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    .line 887
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    invoke-static {v2, v6}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 893
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    move-result-object v2

    .line 904
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    goto :goto_5

    .line 908
    :catchall_2
    move-exception v0

    .line 909
    goto/16 :goto_8

    .line 911
    :cond_18
    :goto_5
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 913
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 915
    const/4 v4, -0x1

    .line 916
    const/4 v5, 0x1

    .line 917
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 920
    move-result-object v2

    .line 921
    new-instance v4, Landroid/content/SyncInfo;

    .line 923
    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 925
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 927
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 929
    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 931
    iget-wide v14, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 933
    move-object/from16 v16, v4

    .line 935
    move/from16 v17, v5

    .line 937
    move-object/from16 v18, v8

    .line 939
    move-object/from16 v19, v6

    .line 941
    move-wide/from16 v20, v14

    .line 943
    invoke-direct/range {v16 .. v21}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 946
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 948
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 950
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 952
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 953
    :try_start_4
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 955
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 958
    move-result-object v6

    .line 959
    check-cast v6, Ljava/util/ArrayList;

    .line 961
    if-nez v6, :cond_19

    .line 963
    new-instance v6, Ljava/util/ArrayList;

    .line 965
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 968
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 970
    invoke-virtual {v8, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 973
    :cond_19
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 974
    :try_start_5
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 978
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 980
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 982
    const/4 v3, 0x4

    .line 983
    invoke-virtual {v1, v3, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 986
    iput-object v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 988
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 990
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 992
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 997
    invoke-static {v1, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 1000
    iget v1, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1002
    const-string v2, "SyncManager"

    .line 1004
    const/4 v3, 0x2

    .line 1005
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1008
    move-result v3

    .line 1009
    if-eqz v3, :cond_1a

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1013
    const-string v4, "bindToSyncAdapter: "

    .line 1015
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v4, ", connection "

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1032
    move-result-object v3

    .line 1033
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_1a
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1038
    invoke-static {v2, v11, v1}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    .line 1041
    move-result-object v1

    .line 1042
    const/4 v2, 0x1

    .line 1043
    iput-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1045
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1047
    sget-object v3, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    .line 1049
    new-instance v4, Landroid/os/UserHandle;

    .line 1051
    iget-object v5, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1053
    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1055
    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1057
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1060
    invoke-virtual {v2, v1, v12, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    .line 1063
    move-result v1

    .line 1064
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1066
    iget-boolean v3, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1068
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1071
    move-result-object v3

    .line 1072
    const-string v4, " for "

    .line 1074
    const-string v5, "bindService() returned="

    .line 1076
    filled-new-array {v5, v3, v4, v12}, [Ljava/lang/Object;

    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1083
    if-nez v1, :cond_1b

    .line 1085
    const/4 v2, 0x0

    .line 1086
    iput-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1088
    goto :goto_6

    .line 1089
    :cond_1b
    :try_start_6
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1091
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    .line 1094
    move-result-object v2

    .line 1095
    iput-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 1097
    iget-object v3, v13, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1099
    iget v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1101
    invoke-interface {v3, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteSyncStart(Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1104
    :catch_0
    :goto_6
    if-nez v1, :cond_1c

    .line 1106
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1108
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1110
    const-string/jumbo v2, "dispatchSyncOperation() failed: bind failed. target: "

    .line 1113
    filled-new-array {v2, v11}, [Ljava/lang/Object;

    .line 1116
    move-result-object v2

    .line 1117
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1120
    const-string v1, "SyncManager"

    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1124
    const-string v3, "Bind attempt failed - target: "

    .line 1126
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    move-result-object v2

    .line 1136
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v0, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 1142
    :goto_7
    iget v1, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1144
    const-string/jumbo v2, "dispatchSyncOperation() failed"

    .line 1147
    invoke-static {v1, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 1150
    :cond_1c
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1152
    iget-object v1, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1154
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1157
    return-void

    .line 1158
    :catchall_3
    move-exception v0

    .line 1159
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1160
    :try_start_8
    throw v0

    .line 1161
    :goto_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1162
    throw v0

    .line 1163
    :goto_9
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1164
    throw v0

    .line 1165
    :catchall_4
    move-exception v0

    .line 1166
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1167
    throw v0
.end method

.method public final updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-wide/from16 v14, p2

    .line 7
    move-wide/from16 v12, p4

    .line 9
    const-string v2, "SyncManager"

    .line 11
    const/4 v11, 0x2

    .line 12
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    move-result v3

    .line 16
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 18
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 21
    const-wide/16 v4, 0x3e8

    .line 23
    mul-long v9, v14, v4

    .line 25
    mul-long v7, v12, v4

    .line 27
    const-string v4, " extras: "

    .line 29
    const-string v5, " flexMillis: "

    .line 31
    const-string v6, " period: "

    .line 33
    if-eqz v3, :cond_0

    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    .line 37
    move/from16 v17, v3

    .line 39
    const-string v3, "Addition to periodic syncs requested: "

    .line 41
    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v11, v5, v12, v13, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move/from16 v17, v3

    .line 73
    :goto_0
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 75
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v3

    .line 85
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v11

    .line 89
    move-object/from16 v18, v4

    .line 91
    if-eqz v11, :cond_7

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Lcom/android/server/content/SyncOperation;

    .line 99
    iget-boolean v4, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 101
    if-eqz v4, :cond_6

    .line 103
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 105
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 111
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 113
    move-object/from16 v20, v3

    .line 115
    move-object/from16 v19, v5

    .line 117
    const/4 v5, 0x1

    .line 118
    move-object/from16 v3, p6

    .line 120
    invoke-static {v4, v3, v5}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_5

    .line 126
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 128
    iget-object v5, v11, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 130
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 132
    invoke-virtual {v4, v3, v5}, Lcom/android/server/content/SyncManager;->isPackageStopped(ILjava/lang/String;)Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_1

    .line 138
    :goto_2
    move-object/from16 v4, v18

    .line 140
    move-object/from16 v5, v19

    .line 142
    move-object/from16 v3, v20

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    iget-wide v3, v11, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 147
    cmp-long v0, v9, v3

    .line 149
    if-nez v0, :cond_2

    .line 151
    iget-wide v3, v11, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 153
    cmp-long v0, v7, v3

    .line 155
    if-eqz v0, :cond_4

    .line 157
    :cond_2
    const/4 v4, 0x2

    .line 158
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v3, "updating period "

    .line 169
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    const-string v3, " to "

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, " and flex to "

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    new-instance v0, Lcom/android/server/content/SyncOperation;

    .line 200
    iget-object v13, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 202
    iget v14, v11, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 204
    iget-object v15, v11, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 206
    iget v2, v11, Lcom/android/server/content/SyncOperation;->reason:I

    .line 208
    iget v3, v11, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 210
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 212
    iget-boolean v5, v11, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 214
    iget-boolean v6, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 216
    iget v12, v11, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 218
    const/16 v26, 0x0

    .line 220
    move/from16 v21, v12

    .line 222
    move-object v12, v0

    .line 223
    move/from16 v16, v2

    .line 225
    move/from16 v17, v3

    .line 227
    move-object/from16 v18, v4

    .line 229
    move/from16 v19, v5

    .line 231
    move/from16 v20, v6

    .line 233
    move-wide/from16 v22, v9

    .line 235
    move-wide/from16 v24, v7

    .line 237
    invoke-direct/range {v12 .. v26}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 240
    iget v2, v11, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 242
    iput v2, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 244
    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 246
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 249
    :cond_4
    return-void

    .line 250
    :cond_5
    :goto_3
    const/4 v4, 0x2

    .line 251
    goto :goto_2

    .line 252
    :cond_6
    move-object/from16 v20, v3

    .line 254
    move-object/from16 v19, v5

    .line 256
    goto :goto_3

    .line 257
    :cond_7
    move-object/from16 v19, v5

    .line 259
    const/4 v4, 0x2

    .line 260
    const/4 v5, 0x1

    .line 261
    if-eqz v17, :cond_8

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    const-string v11, "Adding new periodic sync: "

    .line 267
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    move-object/from16 v6, v18

    .line 281
    move-object/from16 v11, v19

    .line 283
    invoke-static {v3, v11, v12, v13, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 286
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v3

    .line 297
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_8
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 302
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 304
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 306
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 308
    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 310
    invoke-static {v3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 313
    move-result-object v3

    .line 314
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 316
    invoke-virtual {v2, v3, v6}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 319
    move-result-object v2

    .line 320
    if-nez v2, :cond_9

    .line 322
    return-void

    .line 323
    :cond_9
    new-instance v11, Lcom/android/server/content/SyncOperation;

    .line 325
    iget v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 327
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 329
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 332
    move-result-object v3

    .line 333
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 335
    check-cast v2, Landroid/content/SyncAdapterType;

    .line 337
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    .line 340
    move-result v16

    .line 341
    const/16 v17, 0x4

    .line 343
    const/16 v18, 0x1

    .line 345
    const/16 v19, -0x4

    .line 347
    const/16 v20, -0x1

    .line 349
    const/16 v21, 0x0

    .line 351
    move-object v2, v11

    .line 352
    move-object/from16 v22, v3

    .line 354
    move-object/from16 v3, p1

    .line 356
    move/from16 v23, v4

    .line 358
    move v4, v6

    .line 359
    move-object/from16 v5, v22

    .line 361
    move/from16 v24, v6

    .line 363
    move/from16 v6, v19

    .line 365
    move-wide/from16 v25, v7

    .line 367
    move/from16 v7, v17

    .line 369
    move-object/from16 v8, p6

    .line 371
    move-wide/from16 v27, v9

    .line 373
    move/from16 v9, v16

    .line 375
    move/from16 v10, v18

    .line 377
    move-object/from16 v29, v11

    .line 379
    move/from16 v11, v20

    .line 381
    move-wide/from16 v12, v27

    .line 383
    move-wide/from16 v14, v25

    .line 385
    move/from16 v16, v21

    .line 387
    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 390
    move-object/from16 v2, v29

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    .line 395
    move-result v3

    .line 396
    const/4 v4, 0x2

    .line 397
    if-ne v3, v4, :cond_b

    .line 399
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    .line 402
    move-result v8

    .line 403
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 405
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    :try_start_0
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    move-object/from16 v9, v22

    .line 412
    :try_start_1
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 415
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    goto :goto_4

    .line 417
    :catch_0
    move-object/from16 v9, v22

    .line 419
    :catch_1
    const/4 v2, 0x0

    .line 420
    :goto_4
    if-nez v2, :cond_a

    .line 422
    return-void

    .line 423
    :cond_a
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 425
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 427
    const-string/jumbo v3, "requestAccountAccess for SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    .line 430
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 437
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 439
    iget-object v10, v2, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 441
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 443
    new-instance v12, Landroid/os/RemoteCallback;

    .line 445
    new-instance v13, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;

    .line 447
    move-object v4, v0

    .line 448
    move-object v0, v13

    .line 449
    move-object/from16 v1, p0

    .line 451
    move-object/from16 v2, p1

    .line 453
    move-wide/from16 v3, p2

    .line 455
    move-wide/from16 v5, p4

    .line 457
    move-object/from16 v7, p6

    .line 459
    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 462
    invoke-direct {v12, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 465
    invoke-virtual {v10, v11, v9, v8, v12}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 468
    return-void

    .line 469
    :cond_b
    move-object v4, v0

    .line 470
    move-object/from16 v9, v22

    .line 472
    if-eqz v3, :cond_c

    .line 474
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 476
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    move-result-object v1

    .line 482
    const-string/jumbo v2, "syncOpState="

    .line 485
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 492
    return-void

    .line 493
    :cond_c
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 495
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 498
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 500
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 502
    iget v1, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 504
    const/4 v2, 0x1

    .line 505
    invoke-virtual {v0, v2, v1, v9}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 508
    return-void
.end method

.method public final updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 7
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 12
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 14
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 16
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 30
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {v5, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 37
    const-string v4, "SyncManager"

    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_0

    .line 47
    const-string v4, "SyncManager"

    .line 49
    const-string v6, "Accounts list: "

    .line 51
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 56
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 58
    array-length v6, v4

    .line 59
    move v7, v5

    .line 60
    :goto_0
    if-ge v7, v6, :cond_0

    .line 62
    aget-object v8, v4, v7

    .line 64
    const-string v9, "SyncManager"

    .line 66
    invoke-virtual {v8}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_5

    .line 79
    :cond_0
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 81
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    instance-of v4, v4, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 88
    if-eqz v4, :cond_1

    .line 90
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 92
    iget-object v6, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 94
    const-string/jumbo v7, "updateRunningAccountsH: "

    .line 97
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 99
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v6, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 110
    :cond_1
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 112
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V

    .line 115
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 117
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 119
    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 121
    iget-object v6, v6, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v6

    .line 127
    move v7, v5

    .line 128
    :goto_1
    if-ge v7, v6, :cond_3

    .line 130
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 132
    iget-object v8, v8, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 140
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 142
    iget-object v10, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 144
    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 146
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 148
    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 150
    invoke-static {v9, v4, v11, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_2

    .line 156
    const-string v9, "SyncManager"

    .line 158
    const-string/jumbo v10, "canceling sync since the account is no longer running"

    .line 161
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-static {v9, v8, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 170
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 172
    goto :goto_1

    .line 173
    :cond_3
    if-eqz v1, :cond_6

    .line 175
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 177
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 179
    array-length v4, v4

    .line 180
    move v6, v5

    .line 181
    :goto_2
    if-ge v6, v4, :cond_6

    .line 183
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 185
    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 187
    aget-object v7, v7, v6

    .line 189
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 191
    iget-object v9, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 193
    iget v10, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 195
    invoke-static {v8, v3, v9, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_5

    .line 201
    const-string v3, "SyncManager"

    .line 203
    const/4 v4, 0x3

    .line 204
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_4

    .line 210
    const-string v3, "SyncManager"

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v6, "Account "

    .line 219
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v6, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 224
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const-string v6, " added, checking sync restore data"

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v4

    .line 236
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 241
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 243
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 245
    invoke-static {v3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;I)V

    .line 248
    goto :goto_3

    .line 249
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 251
    goto :goto_2

    .line 252
    :cond_6
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    .line 260
    move-result-object v2

    .line 261
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 263
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 272
    move-result v4

    .line 273
    :goto_4
    if-ge v5, v4, :cond_8

    .line 275
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    move-result-object v6

    .line 279
    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 281
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 283
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 285
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 287
    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 289
    invoke-static {v7, v2, v9, v8}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 292
    move-result v7

    .line 293
    if-nez v7, :cond_7

    .line 295
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 297
    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 299
    const-string/jumbo v8, "canceling: "

    .line 302
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 309
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 311
    const-string/jumbo v8, "updateRunningAccountsH()"

    .line 314
    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 317
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 319
    goto :goto_4

    .line 320
    :cond_8
    if-eqz v1, :cond_9

    .line 322
    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 324
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 326
    iget v8, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 328
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 330
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 333
    move-result v14

    .line 334
    const/4 v15, -0x4

    .line 335
    const/16 v16, 0x0

    .line 337
    const/4 v9, -0x2

    .line 338
    const/4 v11, 0x0

    .line 339
    const/4 v12, -0x1

    .line 340
    const/4 v13, 0x0

    .line 341
    invoke-virtual/range {v6 .. v16}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 344
    :cond_9
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 348
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 351
    throw v1

    .line 352
    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    throw v0
.end method
