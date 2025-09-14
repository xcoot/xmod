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

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 54
    .line 55
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 56
    .line 57
    const-string v3, "MESSAGE_CANCEL"

    .line 58
    .line 59
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 64
    .line 65
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

    .line 2
    .line 3
    .line 4
    const-string v0, "SyncManager"

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "unBindFromSyncAdapter: connection "

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 41
    .line 42
    const-string/jumbo v2, "unbindService for "

    .line 43
    .line 44
    .line 45
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 64
    .line 65
    iget v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 66
    .line 67
    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteSyncFinish(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_1
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 93
    .line 94
    iget-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 97
    .line 98
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 99
    .line 100
    const-string/jumbo v5, "removeActiveSync: account="

    .line 101
    .line 102
    .line 103
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 104
    .line 105
    monitor-enter v6

    .line 106
    :try_start_1
    const-string v7, "SyncManager"

    .line 107
    .line 108
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_2

    .line 113
    .line 114
    const-string v7, "SyncManager"

    .line 115
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v5, v3, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 122
    .line 123
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, " user="

    .line 127
    .line 128
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v5, " auth="

    .line 135
    .line 136
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v5, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
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

    .line 155
    .line 156
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Ljava/util/ArrayList;

    .line 164
    .line 165
    if-nez v7, :cond_3

    .line 166
    .line 167
    new-instance v7, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 173
    .line 174
    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :try_start_3
    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    iget-object v5, v3, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 183
    .line 184
    iget-object v3, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v5, :cond_5

    .line 187
    .line 188
    if-nez v3, :cond_4

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :cond_5
    :goto_1
    const/4 v3, 0x4

    .line 198
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "SyncManager"

    .line 202
    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    const-string v0, "SyncManager"

    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string/jumbo v2, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    .line 214
    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 236
    .line 237
    const/16 v1, 0x8

    .line 238
    .line 239
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 245
    .line 246
    const-string/jumbo v0, "closeActiveSyncContext: "

    .line 247
    .line 248
    .line 249
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 254
    .line 255
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

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 20
    .line 21
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 22
    .line 23
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 24
    .line 25
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x3

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string p0, "SyncManager"

    .line 35
    .line 36
    const-string p1, "    Dropping sync operation: account doesn\'t exist."

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    :goto_0
    const-string p0, "SYNC_OP_STATE_INVALID: account doesn\'t exist."

    .line 46
    .line 47
    const-string p1, "SyncManager"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
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

    .line 56
    .line 57
    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 58
    .line 59
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 60
    .line 61
    iget-object v9, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v10, 0x1

    .line 64
    const/4 v11, 0x1

    .line 65
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ne v3, v5, :cond_3

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const-string p0, "SyncManager"

    .line 74
    .line 75
    const-string p1, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    const-string p0, "SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    .line 81
    .line 82
    const-string p1, "SyncManager"

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_3
    if-nez v3, :cond_5

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string p0, "SyncManager"

    .line 93
    .line 94
    const-string p1, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_4
    const-string p0, "SYNC_OP_STATE_INVALID: NOT_SYNCABLE"

    .line 100
    .line 101
    const-string p1, "SyncManager"

    .line 102
    .line 103
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x4

    .line 107
    return p0

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 111
    .line 112
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v4, 0x1

    .line 119
    const/4 v5, 0x0

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 125
    .line 126
    iget-object v1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 127
    .line 128
    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 129
    .line 130
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, v1, v2, v6}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_6

    .line 137
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

    .line 142
    .line 143
    const-string/jumbo v1, "ignore_settings"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_8

    .line 151
    .line 152
    if-gez v3, :cond_7

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    move v4, v5

    .line 156
    :cond_8
    :goto_2
    if-nez p0, :cond_a

    .line 157
    .line 158
    if-nez v4, :cond_a

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    const-string p0, "SyncManager"

    .line 163
    .line 164
    const-string p1, "    Dropping sync operation: disallowed by settings/network."

    .line 165
    .line 166
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_9
    const-string p0, "SYNC_OP_STATE_INVALID: disallowed by settings/network"

    .line 170
    .line 171
    const-string p1, "SyncManager"

    .line 172
    .line 173
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
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

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 4
    .line 5
    iget-boolean v1, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "periodic "

    .line 10
    .line 11
    .line 12
    :goto_0
    move-object v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-string/jumbo v4, "sync.  op="

    .line 22
    .line 23
    .line 24
    const-string v6, " delay="

    .line 25
    .line 26
    const-string/jumbo v2, "deferSyncH() "

    .line 27
    .line 28
    .line 29
    const-string v8, " why="

    .line 30
    .line 31
    move-object v5, p1

    .line 32
    move-object v9, p4

    .line 33
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 41
    .line 42
    invoke-static {v0, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p4, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 46
    .line 47
    if-eqz p4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string/jumbo p4, "deferSyncH()"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public final findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
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

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final handleSyncMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string/jumbo v1, "syncFinished"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v5, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    .line 18
    .line 19
    .line 20
    const-string v6, "Detected sync making no progress for "

    .line 21
    .line 22
    const-string/jumbo v7, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    .line 23
    .line 24
    .line 25
    const-string v9, "Stopping sync. Reschedule: "

    .line 26
    .line 27
    const-string v10, "SyncManager"

    .line 28
    .line 29
    const/4 v11, 0x2

    .line 30
    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    :try_start_0
    iget-object v13, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 35
    .line 36
    invoke-virtual {v13}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    const/4 v15, 0x1

    .line 45
    if-eqz v14, :cond_0

    .line 46
    .line 47
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    if-eqz v14, :cond_0

    .line 52
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

    .line 57
    .line 58
    iget v13, v0, Landroid/os/Message;->what:I

    .line 59
    .line 60
    if-eq v13, v15, :cond_11

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    if-eq v13, v1, :cond_f

    .line 64
    .line 65
    const/4 v1, 0x5

    .line 66
    if-eq v13, v1, :cond_c

    .line 67
    .line 68
    const/4 v1, 0x6

    .line 69
    if-eq v13, v1, :cond_a

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    packed-switch v13, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :pswitch_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Landroid/util/Pair;

    .line 80
    .line 81
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v8, v2, v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 106
    .line 107
    iget-wide v3, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    .line 108
    .line 109
    iget-wide v5, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    .line 110
    .line 111
    iget-object v7, v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    .line 112
    .line 113
    move-object/from16 v1, p0

    .line 114
    .line 115
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 125
    .line 126
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 127
    .line 128
    iget-wide v3, v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    .line 129
    .line 130
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :pswitch_3
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 138
    .line 139
    if-eqz v12, :cond_1

    .line 140
    .line 141
    const-string v3, "Stop sync received."

    .line 142
    .line 143
    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_1
    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 147
    .line 148
    invoke-virtual {v8, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_14

    .line 153
    .line 154
    invoke-virtual {v8, v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 155
    .line 156
    .line 157
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 158
    .line 159
    if-eqz v1, :cond_2

    .line 160
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

    .line 165
    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    const/4 v15, 0x0

    .line 170
    :goto_2
    if-eqz v12, :cond_4

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, "Backoff: "

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :cond_4
    if-eqz v15, :cond_5

    .line 196
    .line 197
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 198
    .line 199
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 200
    .line 201
    invoke-static {v0, v3}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    if-eqz v1, :cond_14

    .line 205
    .line 206
    iget-boolean v0, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 207
    .line 208
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 209
    .line 210
    const-wide/16 v3, 0x0

    .line 211
    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_4

    .line 222
    .line 223
    :cond_6
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 231
    .line 232
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :pswitch_5
    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    const-string/jumbo v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    .line 244
    .line 245
    .line 246
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :cond_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 252
    .line 253
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_4

    .line 257
    .line 258
    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 261
    .line 262
    if-eqz v12, :cond_8

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 270
    .line 271
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :cond_8
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_9

    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v2, v15}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;Z)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, ". cancelling."

    .line 310
    .line 311
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 322
    .line 323
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 324
    .line 325
    const-string/jumbo v3, "no network activity"

    .line 326
    .line 327
    .line 328
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_9
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 337
    .line 338
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_4

    .line 342
    .line 343
    :cond_a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eqz v12, :cond_b

    .line 352
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v3, " bundle: "

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :cond_b
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_4

    .line 380
    .line 381
    :cond_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 384
    .line 385
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 386
    .line 387
    if-eqz v12, :cond_d

    .line 388
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :cond_d
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 405
    .line 406
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 407
    .line 408
    .line 409
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-eqz v0, :cond_14

    .line 411
    .line 412
    :try_start_1
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 413
    .line 414
    if-eqz v0, :cond_e

    .line 415
    .line 416
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 417
    .line 418
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 419
    .line 420
    const-string v3, "Calling cancelSync for SERVICE_DISCONNECTED "

    .line 421
    .line 422
    const-string v4, " adapter="

    .line 423
    .line 424
    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 432
    .line 433
    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 437
    .line 438
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 439
    .line 440
    const-string v2, "Canceled"

    .line 441
    .line 442
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .line 448
    .line 449
    goto :goto_3

    .line 450
    :catch_0
    move-exception v0

    .line 451
    :try_start_2
    iget-object v2, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 452
    .line 453
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 454
    .line 455
    const-string v3, "RemoteException "

    .line 456
    .line 457
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_e
    :goto_3
    new-instance v0, Landroid/content/SyncResult;

    .line 469
    .line 470
    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 471
    .line 472
    .line 473
    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 474
    .line 475
    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 476
    .line 477
    const-wide/16 v5, 0x1

    .line 478
    .line 479
    add-long/2addr v3, v5

    .line 480
    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 481
    .line 482
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 483
    .line 484
    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 485
    .line 486
    const-string/jumbo v3, "service disconnected"

    .line 487
    .line 488
    .line 489
    invoke-static {v2, v3}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8, v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 493
    .line 494
    .line 495
    goto :goto_4

    .line 496
    :cond_f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 499
    .line 500
    if-eqz v12, :cond_10

    .line 501
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    :cond_10
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 520
    .line 521
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 522
    .line 523
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-eqz v1, :cond_14

    .line 528
    .line 529
    iget-object v1, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 530
    .line 531
    iget-object v0, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    .line 532
    .line 533
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    .line 534
    .line 535
    .line 536
    goto :goto_4

    .line 537
    :cond_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 540
    .line 541
    iget-object v3, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 542
    .line 543
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 544
    .line 545
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-nez v3, :cond_12

    .line 550
    .line 551
    if-eqz v12, :cond_14

    .line 552
    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 559
    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    goto :goto_4

    .line 571
    :cond_12
    if-eqz v12, :cond_13

    .line 572
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 579
    .line 580
    iget-object v1, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 581
    .line 582
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    :cond_13
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 593
    .line 594
    iget-object v1, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 595
    .line 596
    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 597
    .line 598
    const-string/jumbo v2, "sync finished"

    .line 599
    .line 600
    .line 601
    invoke-static {v1, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    .line 605
    .line 606
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 607
    .line 608
    invoke-virtual {v8, v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    .line 610
    .line 611
    :cond_14
    :goto_4
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :goto_5
    iget-object v1, v8, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 618
    .line 619
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 620
    .line 621
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

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    add-long/2addr v3, v1

    .line 17
    iget-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 18
    .line 19
    sub-long/2addr v3, v0

    .line 20
    const-string p0, "SyncManager"

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-wide/32 v0, 0x100000

    .line 30
    .line 31
    .line 32
    div-long v5, v3, v0

    .line 33
    .line 34
    rem-long v0, v3, v0

    .line 35
    .line 36
    const-wide/16 v7, 0x400

    .line 37
    .line 38
    div-long v9, v0, v7

    .line 39
    .line 40
    rem-long/2addr v0, v7

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    iget-wide v11, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 46
    .line 47
    sub-long/2addr v7, v11

    .line 48
    const-wide/16 v11, 0x3e8

    .line 49
    .line 50
    div-long/2addr v7, v11

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    filled-new-array {p1, v2, v5, v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    .line 72
    .line 73
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    const-wide/16 p0, 0xa

    .line 81
    .line 82
    cmp-long p0, v3, p0

    .line 83
    .line 84
    if-gtz p0, :cond_1

    .line 85
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 29
    .line 30
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 74
    .line 75
    iget v5, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 76
    .line 77
    iget v6, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 78
    .line 79
    if-eq v5, v6, :cond_2

    .line 80
    .line 81
    iget v5, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 82
    .line 83
    if-ne v5, v6, :cond_1

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    iget v6, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 92
    .line 93
    const-string/jumbo v7, "removePeriodicSyncInternalH"

    .line 94
    .line 95
    .line 96
    invoke-static {v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0, v6, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v5, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 104
    .line 105
    const-string/jumbo v6, "removePeriodicSyncInternalH-canceling: "

    .line 106
    .line 107
    .line 108
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v4, p3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 116
    .line 117
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

    .line 2
    .line 3
    const-string v2, "SyncManager"

    .line 4
    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    iget-object v4, v3, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 8
    .line 9
    const-string v0, "Sync start: account="

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    :try_start_0
    iput-boolean v7, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    move-object/from16 v9, p2

    .line 19
    .line 20
    invoke-interface {v9, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 21
    .line 22
    .line 23
    iget-object v8, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    instance-of v8, v8, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    iget-object v8, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 33
    .line 34
    new-instance v10, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 42
    .line 43
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    const-string v12, " authority="

    .line 51
    .line 52
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 53
    .line 54
    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 55
    .line 56
    const-string v14, " reason="

    .line 57
    .line 58
    iget v0, v5, Lcom/android/server/content/SyncOperation;->reason:I

    .line 59
    .line 60
    invoke-static {v6, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    const-string v16, " extras="

    .line 65
    .line 66
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 67
    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v10}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v17

    .line 80
    const-string v18, " adapter="

    .line 81
    .line 82
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 83
    .line 84
    move-object/from16 v19, v0

    .line 85
    .line 86
    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v8, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 91
    .line 92
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

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 103
    .line 104
    iget-object v8, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 105
    .line 106
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 109
    .line 110
    new-instance v10, Landroid/os/Bundle;

    .line 111
    .line 112
    iget-object v11, v5, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 113
    .line 114
    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v1, v9, v8, v10}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 121
    .line 122
    const-string v8, "Sync is running now..."

    .line 123
    .line 124
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v0, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :goto_1
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 133
    .line 134
    const-string v8, "Sync failed with RuntimeException: "

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v4, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v3, "Caught RuntimeException while starting the sync "

    .line 153
    .line 154
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    if-nez v5, :cond_1

    .line 158
    .line 159
    const-string v3, "[null]"

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_1
    invoke-virtual {v5, v6, v7, v6, v7}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :goto_3
    iget-object v6, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 178
    .line 179
    const-string v7, "Sync failed with RemoteException: "

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v6, "maybeStartNextSync: caught a RemoteException, rescheduling"

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 202
    .line 203
    invoke-static {v4, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 207
    .line 208
    .line 209
    :goto_4
    return-void
.end method

.method public final runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "SyncManager"

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    iget-object v6, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 15
    .line 16
    iget-object v7, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 17
    .line 18
    iget-boolean v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, v3, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    .line 31
    .line 32
    iput-boolean v8, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v9, "SyncManager"

    .line 37
    .line 38
    const-string v10, "Failed to unlink active sync adapter to death"

    .line 39
    .line 40
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    iget-wide v11, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 48
    .line 49
    sub-long/2addr v9, v11

    .line 50
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 53
    .line 54
    const-string/jumbo v11, "runSyncFinishedOrCanceledH() op="

    .line 55
    .line 56
    .line 57
    const-string v12, " result="

    .line 58
    .line 59
    filled-new-array {v11, v6, v12, v2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    if-eqz v2, :cond_26

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    const-string v0, "SyncManager"

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v12, "runSyncFinishedOrCanceled [finished]: "

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v12, ", result "

    .line 85
    .line 86
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 100
    .line 101
    .line 102
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 107
    .line 108
    const-string/jumbo v5, "runSyncFinishedOrCanceledH()-finished"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v6, v5}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v5, -0x1

    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    const-string/jumbo v0, "success"

    .line 122
    .line 123
    .line 124
    iget-object v12, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 125
    .line 126
    iget-object v13, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 127
    .line 128
    const-string/jumbo v15, "sync success"

    .line 129
    .line 130
    .line 131
    iget-object v8, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 132
    .line 133
    invoke-virtual {v8, v13}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_3

    .line 138
    .line 139
    iget-object v14, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v14, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v19

    .line 147
    const-wide/16 v21, -0x1

    .line 148
    .line 149
    cmp-long v14, v19, v21

    .line 150
    .line 151
    if-nez v14, :cond_3

    .line 152
    .line 153
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v8, Ljava/lang/Long;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 158
    .line 159
    .line 160
    move-result-wide v19

    .line 161
    cmp-long v8, v19, v21

    .line 162
    .line 163
    if-nez v8, :cond_3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    const-string v8, "SyncManager"

    .line 167
    .line 168
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    if-eqz v14, :cond_4

    .line 173
    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v4, "Clearing backoffs for "

    .line 177
    .line 178
    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object v4, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 192
    .line 193
    const-wide/16 v21, -0x1

    .line 194
    .line 195
    const-wide/16 v23, -0x1

    .line 196
    .line 197
    move-object/from16 v19, v4

    .line 198
    .line 199
    move-object/from16 v20, v13

    .line 200
    .line 201
    invoke-virtual/range {v19 .. v24}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12, v13, v15}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :goto_1
    iget v4, v6, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 208
    .line 209
    if-eq v4, v5, :cond_20

    .line 210
    .line 211
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_6

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 234
    .line 235
    iget-boolean v12, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 236
    .line 237
    if-eqz v12, :cond_5

    .line 238
    .line 239
    iget-object v12, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 240
    .line 241
    iget-object v13, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 242
    .line 243
    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-eqz v12, :cond_5

    .line 248
    .line 249
    iget-object v12, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 250
    .line 251
    iget-object v13, v8, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 252
    .line 253
    invoke-static {v12, v13, v11}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_5

    .line 258
    .line 259
    iget-wide v12, v6, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 260
    .line 261
    iget-wide v14, v8, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 262
    .line 263
    cmp-long v12, v12, v14

    .line 264
    .line 265
    if-nez v12, :cond_5

    .line 266
    .line 267
    iget-wide v12, v6, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 268
    .line 269
    iget-wide v14, v8, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 270
    .line 271
    cmp-long v12, v12, v14

    .line 272
    .line 273
    if-nez v12, :cond_5

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_6
    const/4 v8, 0x0

    .line 277
    :goto_2
    if-nez v8, :cond_7

    .line 278
    .line 279
    goto/16 :goto_8

    .line 280
    .line 281
    :cond_7
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 282
    .line 283
    invoke-virtual {v4, v8}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :cond_8
    const-string v0, "SyncManager"

    .line 289
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string/jumbo v8, "failed sync operation "

    .line 293
    .line 294
    .line 295
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const/4 v8, 0x0

    .line 299
    invoke-virtual {v6, v8, v11, v8, v11}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v8, ", "

    .line 307
    .line 308
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    iget v0, v6, Lcom/android/server/content/SyncOperation;->retries:I

    .line 322
    .line 323
    add-int/2addr v0, v11

    .line 324
    iput v0, v6, Lcom/android/server/content/SyncOperation;->retries:I

    .line 325
    .line 326
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 327
    .line 328
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 329
    .line 330
    iget-object v8, v4, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 331
    .line 332
    monitor-enter v8

    .line 333
    :try_start_1
    iget v4, v4, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 334
    .line 335
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    if-le v0, v4, :cond_9

    .line 337
    .line 338
    const/4 v4, 0x0

    .line 339
    iput v4, v6, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 340
    .line 341
    :cond_9
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 342
    .line 343
    iget-object v4, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 344
    .line 345
    invoke-static {v0, v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 346
    .line 347
    .line 348
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 349
    .line 350
    if-nez v0, :cond_18

    .line 351
    .line 352
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    const-string v4, "SyncManager"

    .line 358
    .line 359
    const/4 v8, 0x3

    .line 360
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-eqz v12, :cond_a

    .line 365
    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string/jumbo v13, "encountered error(s) during the sync: "

    .line 369
    .line 370
    .line 371
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v13, ", "

    .line 378
    .line 379
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    :cond_a
    const-string/jumbo v8, "ignore_backoff"

    .line 393
    .line 394
    .line 395
    iget-object v13, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 396
    .line 397
    invoke-virtual {v13, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v14

    .line 401
    if-nez v14, :cond_b

    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_b
    new-instance v14, Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-direct {v14, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v14, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iput-object v14, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 413
    .line 414
    :goto_3
    iput-boolean v11, v6, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 415
    .line 416
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 417
    .line 418
    const-string/jumbo v13, "do_not_retry"

    .line 419
    .line 420
    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_c

    .line 427
    .line 428
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 429
    .line 430
    if-nez v8, :cond_c

    .line 431
    .line 432
    if-eqz v12, :cond_17

    .line 433
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string/jumbo v8, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    .line 437
    .line 438
    .line 439
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    goto/16 :goto_5

    .line 453
    .line 454
    :cond_c
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 455
    .line 456
    const-string/jumbo v13, "upload"

    .line 457
    .line 458
    .line 459
    const/4 v14, 0x0

    .line 460
    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    if-eqz v8, :cond_f

    .line 465
    .line 466
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 467
    .line 468
    if-nez v8, :cond_f

    .line 469
    .line 470
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 471
    .line 472
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v14

    .line 476
    if-nez v14, :cond_d

    .line 477
    .line 478
    goto :goto_4

    .line 479
    :cond_d
    new-instance v14, Landroid/os/Bundle;

    .line 480
    .line 481
    invoke-direct {v14, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v14, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iput-object v14, v6, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 488
    .line 489
    :goto_4
    if-eqz v12, :cond_e

    .line 490
    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string/jumbo v12, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    .line 494
    .line 495
    .line 496
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_5

    .line 513
    .line 514
    :cond_f
    iget-boolean v8, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 515
    .line 516
    if-eqz v8, :cond_10

    .line 517
    .line 518
    if-eqz v12, :cond_17

    .line 519
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string/jumbo v8, "not retrying sync operation because it retried too many times: "

    .line 523
    .line 524
    .line 525
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    goto :goto_5

    .line 539
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    if-eqz v8, :cond_12

    .line 544
    .line 545
    if-eqz v12, :cond_11

    .line 546
    .line 547
    const-string/jumbo v8, "retrying sync operation because even though it had an error it achieved some success"

    .line 548
    .line 549
    .line 550
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_11
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 554
    .line 555
    .line 556
    goto :goto_5

    .line 557
    :cond_12
    iget-boolean v8, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 558
    .line 559
    if-eqz v8, :cond_14

    .line 560
    .line 561
    if-eqz v12, :cond_13

    .line 562
    .line 563
    new-instance v8, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string/jumbo v12, "retrying sync operation that failed because there was already a sync in progress: "

    .line 566
    .line 567
    .line 568
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    :cond_13
    const-wide/16 v12, 0x2710

    .line 582
    .line 583
    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 584
    .line 585
    .line 586
    goto :goto_5

    .line 587
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    if-eqz v8, :cond_16

    .line 592
    .line 593
    if-eqz v12, :cond_15

    .line 594
    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string/jumbo v12, "retrying sync operation because it encountered a soft error: "

    .line 598
    .line 599
    .line 600
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v8

    .line 610
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    :cond_15
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 614
    .line 615
    .line 616
    goto :goto_5

    .line 617
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string/jumbo v8, "not retrying sync operation because the error is a hard error: "

    .line 620
    .line 621
    .line 622
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    const/4 v8, 0x0

    .line 626
    invoke-virtual {v6, v8, v11, v8, v11}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v12

    .line 630
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    :cond_17
    :goto_5
    const-wide/16 v12, 0x0

    .line 641
    .line 642
    goto :goto_6

    .line 643
    :cond_18
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 644
    .line 645
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    const-wide/16 v12, 0x0

    .line 650
    .line 651
    invoke-virtual {v0, v4, v12, v13}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 652
    .line 653
    .line 654
    :goto_6
    iget-boolean v0, v2, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 655
    .line 656
    if-eqz v0, :cond_19

    .line 657
    .line 658
    move v0, v11

    .line 659
    goto :goto_7

    .line 660
    :cond_19
    iget-object v0, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 661
    .line 662
    iget-wide v14, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 663
    .line 664
    cmp-long v4, v14, v12

    .line 665
    .line 666
    if-lez v4, :cond_1a

    .line 667
    .line 668
    const/4 v0, 0x2

    .line 669
    goto :goto_7

    .line 670
    :cond_1a
    iget-wide v14, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 671
    .line 672
    cmp-long v4, v14, v12

    .line 673
    .line 674
    if-lez v4, :cond_1b

    .line 675
    .line 676
    const/4 v0, 0x3

    .line 677
    goto :goto_7

    .line 678
    :cond_1b
    iget-wide v14, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 679
    .line 680
    cmp-long v4, v14, v12

    .line 681
    .line 682
    if-lez v4, :cond_1c

    .line 683
    .line 684
    const/4 v0, 0x4

    .line 685
    goto :goto_7

    .line 686
    :cond_1c
    iget-wide v14, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 687
    .line 688
    cmp-long v0, v14, v12

    .line 689
    .line 690
    if-lez v0, :cond_1d

    .line 691
    .line 692
    const/4 v0, 0x5

    .line 693
    goto :goto_7

    .line 694
    :cond_1d
    iget-boolean v0, v2, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 695
    .line 696
    if-eqz v0, :cond_1e

    .line 697
    .line 698
    const/4 v0, 0x6

    .line 699
    goto :goto_7

    .line 700
    :cond_1e
    iget-boolean v0, v2, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 701
    .line 702
    if-eqz v0, :cond_1f

    .line 703
    .line 704
    const/4 v0, 0x7

    .line 705
    goto :goto_7

    .line 706
    :cond_1f
    iget-boolean v0, v2, Landroid/content/SyncResult;->databaseError:Z

    .line 707
    .line 708
    if-eqz v0, :cond_25

    .line 709
    .line 710
    const/16 v0, 0x8

    .line 711
    .line 712
    :goto_7
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    :cond_20
    :goto_8
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 717
    .line 718
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 719
    .line 720
    iget-wide v12, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 721
    .line 722
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    const-wide/16 v14, 0x3e8

    .line 726
    .line 727
    mul-long/2addr v12, v14

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 729
    .line 730
    .line 731
    move-result-wide v14

    .line 732
    cmp-long v19, v12, v14

    .line 733
    .line 734
    if-lez v19, :cond_21

    .line 735
    .line 736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 737
    .line 738
    .line 739
    move-result-wide v19

    .line 740
    sub-long/2addr v12, v14

    .line 741
    add-long v12, v12, v19

    .line 742
    .line 743
    goto :goto_9

    .line 744
    :cond_21
    const-wide/16 v12, 0x0

    .line 745
    .line 746
    :goto_9
    iget-object v14, v4, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 747
    .line 748
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    const-string v15, "SyncManager"

    .line 752
    .line 753
    const/4 v5, 0x2

    .line 754
    invoke-static {v15, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 755
    .line 756
    .line 757
    move-result v15

    .line 758
    if-eqz v15, :cond_22

    .line 759
    .line 760
    const-string v5, "SyncManager"

    .line 761
    .line 762
    new-instance v15, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string/jumbo v11, "setDelayUntil: "

    .line 765
    .line 766
    .line 767
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v11, " -> delayUntil "

    .line 774
    .line 775
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v11

    .line 785
    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    :cond_22
    iget-object v5, v14, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 789
    .line 790
    monitor-enter v5

    .line 791
    const/4 v11, 0x1

    .line 792
    const/4 v15, -0x1

    .line 793
    :try_start_2
    invoke-virtual {v14, v8, v15, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 794
    .line 795
    .line 796
    move-result-object v15

    .line 797
    move-wide/from16 v21, v9

    .line 798
    .line 799
    iget-wide v9, v15, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 800
    .line 801
    cmp-long v9, v9, v12

    .line 802
    .line 803
    if-nez v9, :cond_23

    .line 804
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

    .line 810
    .line 811
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    const/4 v5, 0x1

    .line 813
    invoke-virtual {v14, v5, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 814
    .line 815
    .line 816
    :goto_a
    const-string v5, "SyncManager"

    .line 817
    .line 818
    const/4 v9, 0x2

    .line 819
    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    if-eqz v5, :cond_24

    .line 824
    .line 825
    const-string v5, "SyncManager"

    .line 826
    .line 827
    new-instance v9, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    const-string v10, "Delay Until time set to "

    .line 830
    .line 831
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    const-string v10, " for "

    .line 838
    .line 839
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v9

    .line 849
    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .line 851
    .line 852
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    const-string/jumbo v9, "delayUntil newDelayUntilTime: "

    .line 855
    .line 856
    .line 857
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    invoke-virtual {v4, v8, v5}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    goto/16 :goto_d

    .line 871
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

    .line 875
    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    const-string/jumbo v3, "we are not in an error state, "

    .line 879
    .line 880
    .line 881
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
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

    .line 899
    .line 900
    if-eqz v5, :cond_27

    .line 901
    .line 902
    const-string v0, "SyncManager"

    .line 903
    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    const-string/jumbo v5, "runSyncFinishedOrCanceled [canceled]: "

    .line 907
    .line 908
    .line 909
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .line 921
    .line 922
    :cond_27
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 923
    .line 924
    if-nez v0, :cond_28

    .line 925
    .line 926
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 927
    .line 928
    const-string/jumbo v4, "runSyncFinishedOrCanceledH()-canceled"

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v6, v4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    :cond_28
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 935
    .line 936
    if-eqz v0, :cond_29

    .line 937
    .line 938
    :try_start_5
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 939
    .line 940
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 941
    .line 942
    const-string v5, "Calling cancelSync for runSyncFinishedOrCanceled "

    .line 943
    .line 944
    const-string v8, "  adapter="

    .line 945
    .line 946
    filled-new-array {v5, v3, v8, v0}, [Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 951
    .line 952
    .line 953
    iget-object v0, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 954
    .line 955
    invoke-interface {v0, v3}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 956
    .line 957
    .line 958
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 959
    .line 960
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 961
    .line 962
    const-string v4, "Canceled"

    .line 963
    .line 964
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 969
    .line 970
    .line 971
    goto :goto_c

    .line 972
    :catch_1
    move-exception v0

    .line 973
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 974
    .line 975
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 976
    .line 977
    const-string v5, "RemoteException "

    .line 978
    .line 979
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    :cond_29
    :goto_c
    const-string/jumbo v0, "canceled"

    .line 991
    .line 992
    .line 993
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 994
    .line 995
    .line 996
    :goto_d
    iget-wide v3, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 997
    .line 998
    const/4 v5, 0x1

    .line 999
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v8

    .line 1003
    iget v5, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1004
    .line 1005
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    iget-object v9, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1010
    .line 1011
    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1012
    .line 1013
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1014
    .line 1015
    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 1018
    .line 1019
    .line 1020
    move-result v9

    .line 1021
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v9

    .line 1025
    filled-new-array {v10, v8, v5, v9}, [Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v5

    .line 1029
    const/16 v8, 0xaa0

    .line 1030
    .line 1031
    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1032
    .line 1033
    .line 1034
    iget-object v5, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1035
    .line 1036
    iget-object v5, v5, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1037
    .line 1038
    const/4 v8, 0x0

    .line 1039
    int-to-long v9, v8

    .line 1040
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 1041
    .line 1042
    iget-object v11, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1043
    .line 1044
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1045
    .line 1046
    const-string/jumbo v12, "stopSyncEvent: historyId="

    .line 1047
    .line 1048
    .line 1049
    iget-object v13, v5, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 1050
    .line 1051
    monitor-enter v13

    .line 1052
    :try_start_6
    const-string v14, "SyncManager"

    .line 1053
    .line 1054
    const/4 v15, 0x2

    .line 1055
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v14

    .line 1059
    if-eqz v14, :cond_2a

    .line 1060
    .line 1061
    const-string v14, "SyncManager"

    .line 1062
    .line 1063
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v12

    .line 1075
    invoke-static {v14, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    goto :goto_e

    .line 1079
    :catchall_2
    move-exception v0

    .line 1080
    goto/16 :goto_1e

    .line 1081
    .line 1082
    :cond_2a
    :goto_e
    iget-object v12, v5, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 1083
    .line 1084
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1085
    .line 1086
    .line 1087
    move-result v12

    .line 1088
    :cond_2b
    if-lez v12, :cond_2c

    .line 1089
    .line 1090
    add-int/lit8 v12, v12, -0x1

    .line 1091
    .line 1092
    iget-object v14, v5, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 1093
    .line 1094
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v14

    .line 1098
    check-cast v14, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1099
    .line 1100
    iget v15, v14, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1101
    .line 1102
    move-object/from16 p2, v14

    .line 1103
    .line 1104
    int-to-long v14, v15

    .line 1105
    cmp-long v14, v14, v3

    .line 1106
    .line 1107
    if-nez v14, :cond_2b

    .line 1108
    .line 1109
    move-object/from16 v12, p2

    .line 1110
    .line 1111
    goto :goto_f

    .line 1112
    :cond_2c
    const/4 v12, 0x0

    .line 1113
    :goto_f
    if-nez v12, :cond_2d

    .line 1114
    .line 1115
    const-string v0, "SyncManager"

    .line 1116
    .line 1117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .line 1121
    .line 1122
    const-string/jumbo v8, "stopSyncEvent: no history for id "

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .line 1137
    .line 1138
    monitor-exit v13

    .line 1139
    move-object/from16 v19, v6

    .line 1140
    .line 1141
    move-object/from16 p2, v7

    .line 1142
    .line 1143
    goto/16 :goto_1a

    .line 1144
    .line 1145
    :cond_2d
    move-wide/from16 v3, v21

    .line 1146
    .line 1147
    iput-wide v3, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1148
    .line 1149
    const/4 v14, 0x1

    .line 1150
    iput v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1151
    .line 1152
    iput-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1153
    .line 1154
    iput-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1155
    .line 1156
    iput-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1157
    .line 1158
    iget v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1159
    .line 1160
    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v9

    .line 1164
    iget-boolean v10, v5, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 1165
    .line 1166
    const/4 v14, 0x0

    .line 1167
    invoke-virtual {v9, v10, v14}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1168
    .line 1169
    .line 1170
    iget-object v10, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1171
    .line 1172
    iget v14, v10, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1173
    .line 1174
    const/4 v15, 0x1

    .line 1175
    add-int/2addr v14, v15

    .line 1176
    iput v14, v10, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1177
    .line 1178
    iget-object v14, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1179
    .line 1180
    move-object/from16 v19, v6

    .line 1181
    .line 1182
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1183
    .line 1184
    add-int/2addr v6, v15

    .line 1185
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1186
    .line 1187
    move-object v15, v7

    .line 1188
    iget-wide v6, v10, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1189
    .line 1190
    add-long/2addr v6, v3

    .line 1191
    iput-wide v6, v10, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1192
    .line 1193
    iget-wide v6, v14, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1194
    .line 1195
    add-long/2addr v6, v3

    .line 1196
    iput-wide v6, v14, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1197
    .line 1198
    iget v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1199
    .line 1200
    if-eqz v6, :cond_33

    .line 1201
    .line 1202
    const/4 v7, 0x1

    .line 1203
    if-eq v6, v7, :cond_32

    .line 1204
    .line 1205
    const/4 v7, 0x2

    .line 1206
    if-eq v6, v7, :cond_31

    .line 1207
    .line 1208
    const/4 v7, 0x3

    .line 1209
    if-eq v6, v7, :cond_30

    .line 1210
    .line 1211
    const/4 v7, 0x4

    .line 1212
    if-eq v6, v7, :cond_2f

    .line 1213
    .line 1214
    const/4 v7, 0x5

    .line 1215
    if-eq v6, v7, :cond_2e

    .line 1216
    .line 1217
    goto :goto_10

    .line 1218
    :cond_2e
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1219
    .line 1220
    const/4 v7, 0x1

    .line 1221
    add-int/2addr v6, v7

    .line 1222
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1223
    .line 1224
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1225
    .line 1226
    add-int/2addr v6, v7

    .line 1227
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1228
    .line 1229
    goto :goto_10

    .line 1230
    :cond_2f
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1231
    .line 1232
    const/4 v7, 0x1

    .line 1233
    add-int/2addr v6, v7

    .line 1234
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1235
    .line 1236
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1237
    .line 1238
    add-int/2addr v6, v7

    .line 1239
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1240
    .line 1241
    goto :goto_10

    .line 1242
    :cond_30
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1243
    .line 1244
    const/4 v7, 0x1

    .line 1245
    add-int/2addr v6, v7

    .line 1246
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1247
    .line 1248
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1249
    .line 1250
    add-int/2addr v6, v7

    .line 1251
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1252
    .line 1253
    goto :goto_10

    .line 1254
    :cond_31
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1255
    .line 1256
    const/4 v7, 0x1

    .line 1257
    add-int/2addr v6, v7

    .line 1258
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1259
    .line 1260
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1261
    .line 1262
    add-int/2addr v6, v7

    .line 1263
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1264
    .line 1265
    goto :goto_10

    .line 1266
    :cond_32
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1267
    .line 1268
    const/4 v7, 0x1

    .line 1269
    add-int/2addr v6, v7

    .line 1270
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1271
    .line 1272
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1273
    .line 1274
    add-int/2addr v6, v7

    .line 1275
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1276
    .line 1277
    goto :goto_10

    .line 1278
    :cond_33
    iget v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1279
    .line 1280
    const/4 v7, 0x1

    .line 1281
    add-int/2addr v6, v7

    .line 1282
    iput v6, v10, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1283
    .line 1284
    iget v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1285
    .line 1286
    add-int/2addr v6, v7

    .line 1287
    iput v6, v14, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1288
    .line 1289
    :goto_10
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    .line 1290
    .line 1291
    .line 1292
    move-result v6

    .line 1293
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1294
    .line 1295
    const/4 v10, 0x0

    .line 1296
    aget-object v14, v7, v10

    .line 1297
    .line 1298
    if-nez v14, :cond_35

    .line 1299
    .line 1300
    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1301
    .line 1302
    invoke-direct {v14, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1303
    .line 1304
    .line 1305
    aput-object v14, v7, v10

    .line 1306
    .line 1307
    :cond_34
    move-object/from16 p2, v15

    .line 1308
    .line 1309
    goto :goto_11

    .line 1310
    :cond_35
    iget v10, v14, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1311
    .line 1312
    if-eq v6, v10, :cond_34

    .line 1313
    .line 1314
    array-length v10, v7

    .line 1315
    const/4 v14, 0x1

    .line 1316
    sub-int/2addr v10, v14

    .line 1317
    move-object/from16 p2, v15

    .line 1318
    .line 1319
    const/4 v15, 0x0

    .line 1320
    invoke-static {v7, v15, v7, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1324
    .line 1325
    new-instance v10, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1326
    .line 1327
    invoke-direct {v10, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1328
    .line 1329
    .line 1330
    aput-object v10, v7, v15

    .line 1331
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

    .line 1336
    .line 1337
    const/4 v10, 0x0

    .line 1338
    aget-object v7, v7, v10

    .line 1339
    .line 1340
    iget-wide v14, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1341
    .line 1342
    add-long/2addr v14, v3

    .line 1343
    const-string/jumbo v10, "success"

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v10

    .line 1350
    if-eqz v10, :cond_38

    .line 1351
    .line 1352
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1353
    .line 1354
    const-wide/16 v17, 0x0

    .line 1355
    .line 1356
    cmp-long v1, v1, v17

    .line 1357
    .line 1358
    if-eqz v1, :cond_37

    .line 1359
    .line 1360
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1361
    .line 1362
    cmp-long v1, v1, v17

    .line 1363
    .line 1364
    if-eqz v1, :cond_36

    .line 1365
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

    .line 1371
    .line 1372
    invoke-virtual {v9, v2, v14, v15}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1373
    .line 1374
    .line 1375
    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1376
    .line 1377
    const/4 v10, 0x1

    .line 1378
    add-int/2addr v2, v10

    .line 1379
    iput v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1380
    .line 1381
    iget-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1382
    .line 1383
    add-long/2addr v14, v3

    .line 1384
    iput-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1385
    .line 1386
    goto :goto_16

    .line 1387
    :cond_38
    const-string/jumbo v1, "canceled"

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v1

    .line 1394
    if-nez v1, :cond_3a

    .line 1395
    .line 1396
    iget-wide v1, v9, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1397
    .line 1398
    const-wide/16 v17, 0x0

    .line 1399
    .line 1400
    cmp-long v1, v1, v17

    .line 1401
    .line 1402
    if-nez v1, :cond_39

    .line 1403
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

    .line 1408
    .line 1409
    iget v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1410
    .line 1411
    const/16 v17, 0x1

    .line 1412
    .line 1413
    add-int/lit8 v10, v10, 0x1

    .line 1414
    .line 1415
    iput v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1416
    .line 1417
    iget-object v2, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1418
    .line 1419
    iget v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1420
    .line 1421
    add-int/lit8 v10, v10, 0x1

    .line 1422
    .line 1423
    iput v10, v2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1424
    .line 1425
    iget v2, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1426
    .line 1427
    invoke-virtual {v9, v2, v14, v15, v0}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1431
    .line 1432
    add-int/lit8 v2, v2, 0x1

    .line 1433
    .line 1434
    iput v2, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1435
    .line 1436
    iget-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1437
    .line 1438
    add-long/2addr v14, v3

    .line 1439
    iput-wide v14, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1440
    .line 1441
    goto :goto_16

    .line 1442
    :cond_3a
    iget-object v1, v9, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1443
    .line 1444
    iget v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1445
    .line 1446
    const/4 v7, 0x1

    .line 1447
    add-int/2addr v2, v7

    .line 1448
    iput v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1449
    .line 1450
    iget-object v1, v9, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 1451
    .line 1452
    iget v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1453
    .line 1454
    add-int/2addr v2, v7

    .line 1455
    iput v2, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1456
    .line 1457
    const/4 v1, 0x1

    .line 1458
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .line 1462
    .line 1463
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1466
    .line 1467
    .line 1468
    const-string v10, ""

    .line 1469
    .line 1470
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    .line 1475
    .line 1476
    const-string v0, " Source="

    .line 1477
    .line 1478
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1482
    .line 1483
    iget v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1484
    .line 1485
    aget-object v0, v0, v10

    .line 1486
    .line 1487
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    const-string v0, " Elapsed="

    .line 1491
    .line 1492
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v0

    .line 1499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-static {v2, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 1503
    .line 1504
    .line 1505
    const-string v0, " Reason="

    .line 1506
    .line 1507
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1511
    .line 1512
    const/4 v3, 0x0

    .line 1513
    invoke-static {v3, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1521
    .line 1522
    if-eqz v0, :cond_3d

    .line 1523
    .line 1524
    const-string v0, " Exemption="

    .line 1525
    .line 1526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1530
    .line 1531
    const/4 v3, 0x1

    .line 1532
    if-eq v0, v3, :cond_3c

    .line 1533
    .line 1534
    const/4 v3, 0x2

    .line 1535
    if-eq v0, v3, :cond_3b

    .line 1536
    .line 1537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    .line 1540
    goto :goto_17

    .line 1541
    :cond_3b
    const-string/jumbo v0, "top"

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    goto :goto_17

    .line 1548
    :cond_3c
    const-string/jumbo v0, "fg"

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    :cond_3d
    :goto_17
    const-string v0, " Extras="

    .line 1555
    .line 1556
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1560
    .line 1561
    invoke-static {v0, v2}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-virtual {v9, v0}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    if-eqz v1, :cond_3e

    .line 1572
    .line 1573
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1574
    .line 1575
    .line 1576
    goto :goto_18

    .line 1577
    :cond_3e
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1578
    .line 1579
    const/4 v1, 0x1

    .line 1580
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v0

    .line 1584
    if-nez v0, :cond_3f

    .line 1585
    .line 1586
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1587
    .line 1588
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v2

    .line 1592
    const-wide/32 v3, 0x927c0

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1596
    .line 1597
    .line 1598
    :cond_3f
    :goto_18
    if-eqz v6, :cond_40

    .line 1599
    .line 1600
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1601
    .line 1602
    .line 1603
    goto :goto_19

    .line 1604
    :cond_40
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1605
    .line 1606
    const/4 v1, 0x2

    .line 1607
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    if-nez v0, :cond_41

    .line 1612
    .line 1613
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 1614
    .line 1615
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v2

    .line 1619
    const-wide/32 v3, 0x1b7740

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1623
    .line 1624
    .line 1625
    :cond_41
    :goto_19
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1626
    const/16 v1, 0x8

    .line 1627
    .line 1628
    invoke-virtual {v5, v1, v11, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    :goto_1a
    const/16 v0, 0x12

    .line 1632
    .line 1633
    move-object/from16 v1, p1

    .line 1634
    .line 1635
    if-eqz v1, :cond_46

    .line 1636
    .line 1637
    iget-boolean v2, v1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 1638
    .line 1639
    if-eqz v2, :cond_46

    .line 1640
    .line 1641
    move-object/from16 v2, p2

    .line 1642
    .line 1643
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1644
    .line 1645
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1646
    .line 1647
    iget-object v5, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1648
    .line 1649
    iget-wide v5, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 1650
    .line 1651
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1652
    .line 1653
    move-object/from16 v8, p0

    .line 1654
    .line 1655
    iget-object v9, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1656
    .line 1657
    iget-object v10, v9, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1658
    .line 1659
    if-nez v10, :cond_42

    .line 1660
    .line 1661
    goto/16 :goto_1d

    .line 1662
    .line 1663
    :cond_42
    iget-object v10, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1664
    .line 1665
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v10

    .line 1669
    const/4 v11, 0x0

    .line 1670
    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v10

    .line 1674
    if-nez v10, :cond_43

    .line 1675
    .line 1676
    goto/16 :goto_1d

    .line 1677
    .line 1678
    :cond_43
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1679
    .line 1680
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v11

    .line 1684
    invoke-virtual {v10, v11}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v10

    .line 1688
    new-instance v13, Landroid/content/Intent;

    .line 1689
    .line 1690
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1691
    .line 1692
    const-class v12, Landroid/content/SyncActivityTooManyDeletes;

    .line 1693
    .line 1694
    invoke-direct {v13, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1695
    .line 1696
    .line 1697
    const-string v11, "account"

    .line 1698
    .line 1699
    invoke-virtual {v13, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1700
    .line 1701
    .line 1702
    const-string v11, "authority"

    .line 1703
    .line 1704
    invoke-virtual {v13, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    .line 1706
    .line 1707
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v11

    .line 1711
    const-string/jumbo v12, "provider"

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {v13, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    .line 1716
    .line 1717
    const-string/jumbo v11, "numDeletes"

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v13, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1721
    .line 1722
    .line 1723
    iget-object v5, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1724
    .line 1725
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v5

    .line 1729
    const/4 v6, 0x0

    .line 1730
    invoke-virtual {v5, v13, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v5

    .line 1734
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1735
    .line 1736
    .line 1737
    move-result v6

    .line 1738
    const/4 v11, 0x0

    .line 1739
    :goto_1b
    if-ge v11, v6, :cond_45

    .line 1740
    .line 1741
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v12

    .line 1745
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1746
    .line 1747
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1748
    .line 1749
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1750
    .line 1751
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1752
    .line 1753
    const/4 v14, 0x1

    .line 1754
    and-int/2addr v12, v14

    .line 1755
    if-eqz v12, :cond_44

    .line 1756
    .line 1757
    new-instance v5, Landroid/os/UserHandle;

    .line 1758
    .line 1759
    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1760
    .line 1761
    .line 1762
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1763
    .line 1764
    const/4 v12, 0x0

    .line 1765
    const/high16 v14, 0x14000000

    .line 1766
    .line 1767
    const/4 v15, 0x0

    .line 1768
    move-object/from16 v16, v5

    .line 1769
    .line 1770
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v6

    .line 1774
    iget-object v7, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1775
    .line 1776
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v7

    .line 1780
    const v11, 0x10403f2

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v7

    .line 1787
    :try_start_7
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1788
    .line 1789
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v12

    .line 1793
    const/4 v15, 0x0

    .line 1794
    invoke-virtual {v11, v12, v15, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v11
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1798
    goto :goto_1c

    .line 1799
    :catch_2
    iget-object v11, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1800
    .line 1801
    :goto_1c
    new-instance v12, Landroid/app/Notification$Builder;

    .line 1802
    .line 1803
    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 1804
    .line 1805
    invoke-direct {v12, v11, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1806
    .line 1807
    .line 1808
    const v13, 0x1080b7b

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v12

    .line 1815
    iget-object v13, v9, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1816
    .line 1817
    const v14, 0x10403f0

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v13

    .line 1824
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v12

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1829
    .line 1830
    .line 1831
    move-result-wide v13

    .line 1832
    invoke-virtual {v12, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v12

    .line 1836
    const v13, 0x106001c

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    .line 1840
    .line 1841
    .line 1842
    move-result v13

    .line 1843
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v12

    .line 1847
    const v13, 0x10403f1

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v11

    .line 1854
    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v11

    .line 1858
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v7

    .line 1862
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v10

    .line 1866
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v7

    .line 1870
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v7

    .line 1874
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v6

    .line 1878
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v6

    .line 1882
    iget v7, v6, Landroid/app/Notification;->flags:I

    .line 1883
    .line 1884
    const/4 v12, 0x2

    .line 1885
    or-int/2addr v7, v12

    .line 1886
    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1887
    .line 1888
    iget-object v7, v9, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1889
    .line 1890
    invoke-virtual {v3}, Landroid/accounts/Account;->hashCode()I

    .line 1891
    .line 1892
    .line 1893
    move-result v3

    .line 1894
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 1895
    .line 1896
    .line 1897
    move-result v4

    .line 1898
    xor-int/2addr v3, v4

    .line 1899
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v3

    .line 1903
    invoke-virtual {v7, v3, v0, v6, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1904
    .line 1905
    .line 1906
    goto :goto_1d

    .line 1907
    :cond_44
    const/4 v12, 0x2

    .line 1908
    const/4 v15, 0x0

    .line 1909
    add-int/lit8 v11, v11, 0x1

    .line 1910
    .line 1911
    goto/16 :goto_1b

    .line 1912
    .line 1913
    :cond_45
    const-string v0, "SyncManager"

    .line 1914
    .line 1915
    const-string v3, "No activity found to handle too many deletes."

    .line 1916
    .line 1917
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    .line 1919
    .line 1920
    goto :goto_1d

    .line 1921
    :cond_46
    move-object/from16 v8, p0

    .line 1922
    .line 1923
    move-object/from16 v2, p2

    .line 1924
    .line 1925
    iget-object v3, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1926
    .line 1927
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 1928
    .line 1929
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1930
    .line 1931
    invoke-virtual {v4}, Landroid/accounts/Account;->hashCode()I

    .line 1932
    .line 1933
    .line 1934
    move-result v4

    .line 1935
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1936
    .line 1937
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1938
    .line 1939
    .line 1940
    move-result v5

    .line 1941
    xor-int/2addr v4, v5

    .line 1942
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v4

    .line 1946
    new-instance v5, Landroid/os/UserHandle;

    .line 1947
    .line 1948
    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1949
    .line 1950
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1951
    .line 1952
    .line 1953
    invoke-virtual {v3, v4, v0, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1954
    .line 1955
    .line 1956
    :goto_1d
    if-eqz v1, :cond_47

    .line 1957
    .line 1958
    iget-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 1959
    .line 1960
    if-eqz v0, :cond_47

    .line 1961
    .line 1962
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1963
    .line 1964
    new-instance v1, Lcom/android/server/content/SyncOperation;

    .line 1965
    .line 1966
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1967
    .line 1968
    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1969
    .line 1970
    move-object/from16 v3, v19

    .line 1971
    .line 1972
    iget v6, v3, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1973
    .line 1974
    iget-object v7, v3, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 1975
    .line 1976
    iget v8, v3, Lcom/android/server/content/SyncOperation;->reason:I

    .line 1977
    .line 1978
    iget v9, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1979
    .line 1980
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1981
    .line 1982
    new-instance v11, Landroid/os/Bundle;

    .line 1983
    .line 1984
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1985
    .line 1986
    .line 1987
    iget-boolean v12, v3, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 1988
    .line 1989
    iget v13, v3, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1990
    .line 1991
    move-object v3, v1

    .line 1992
    invoke-direct/range {v3 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 1996
    .line 1997
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

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v1, "SyncManager"

    .line 6
    .line 7
    const/4 v8, 0x2

    .line 8
    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v2, "SyncManager"

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 26
    .line 27
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iput-boolean v9, v2, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 33
    .line 34
    const-string v2, "SyncManager"

    .line 35
    .line 36
    const-string v3, "Clock is valid now."

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v2, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 42
    .line 43
    sget-object v3, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v3

    .line 46
    :try_start_0
    sget-object v4, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49
    .line 50
    .line 51
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 52
    iget-boolean v2, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 53
    .line 54
    const-wide/16 v3, -0x1

    .line 55
    .line 56
    if-eqz v2, :cond_7

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 81
    .line 82
    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 83
    .line 84
    iget v6, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 85
    .line 86
    if-ne v5, v6, :cond_2

    .line 87
    .line 88
    const-string/jumbo v0, "periodic sync, pending"

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 114
    .line 115
    iget-object v5, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 116
    .line 117
    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 118
    .line 119
    iget v6, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 120
    .line 121
    if-ne v5, v6, :cond_4

    .line 122
    .line 123
    const-string/jumbo v0, "periodic sync, already running"

    .line 124
    .line 125
    .line 126
    invoke-static {v6, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_5
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 131
    .line 132
    iget-object v5, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    if-eqz v6, :cond_6

    .line 148
    .line 149
    iget-object v12, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v12, Ljava/lang/Long;

    .line 152
    .line 153
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v12

    .line 157
    cmp-long v12, v12, v3

    .line 158
    .line 159
    if-eqz v12, :cond_6

    .line 160
    .line 161
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v6, Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v12

    .line 169
    cmp-long v6, v12, v10

    .line 170
    .line 171
    if-lez v6, :cond_6

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    cmp-long v2, v5, v10

    .line 179
    .line 180
    if-lez v2, :cond_7

    .line 181
    .line 182
    :goto_0
    const-wide/16 v1, 0x0

    .line 183
    .line 184
    const-string v3, "backing off"

    .line 185
    .line 186
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_7
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_d

    .line 203
    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 209
    .line 210
    iget-object v6, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object v10, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 216
    .line 217
    iget-object v11, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 218
    .line 219
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 220
    .line 221
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 224
    .line 225
    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    if-eqz v12, :cond_8

    .line 232
    .line 233
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-eqz v12, :cond_8

    .line 242
    .line 243
    iget v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 244
    .line 245
    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 246
    .line 247
    if-ne v12, v13, :cond_8

    .line 248
    .line 249
    iget-boolean v6, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 250
    .line 251
    if-eqz v6, :cond_9

    .line 252
    .line 253
    iget-object v6, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 254
    .line 255
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 258
    .line 259
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_8

    .line 266
    .line 267
    :cond_9
    iget-object v2, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    const-wide/16 v10, 0x2710

    .line 278
    .line 279
    if-lt v2, v6, :cond_b

    .line 280
    .line 281
    if-eqz v1, :cond_a

    .line 282
    .line 283
    const-string v1, "SyncManager"

    .line 284
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v3, "Rescheduling sync due to conflict "

    .line 288
    .line 289
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    :cond_a
    const-string/jumbo v1, "delay on conflict"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v7, v10, v11, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_b
    if-eqz v1, :cond_c

    .line 314
    .line 315
    const-string v1, "SyncManager"

    .line 316
    .line 317
    const-string v2, "Pushing back running sync due to a higher priority sync"

    .line 318
    .line 319
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    :cond_c
    const-string/jumbo v1, "preempted"

    .line 323
    .line 324
    .line 325
    iget-object v2, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 326
    .line 327
    const/4 v6, 0x0

    .line 328
    invoke-virtual {v0, v6, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2, v10, v11, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_e

    .line 339
    .line 340
    iget v0, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 341
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string/jumbo v3, "invalid op state: "

    .line 345
    .line 346
    .line 347
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v0, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_e
    const-string v1, "SyncManager"

    .line 362
    .line 363
    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_f

    .line 368
    .line 369
    const-string v1, "SyncManager"

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string/jumbo v5, "dispatchSyncOperation: we are going to sync "

    .line 374
    .line 375
    .line 376
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    const-string v1, "SyncManager"

    .line 390
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string/jumbo v5, "num active syncs: "

    .line 394
    .line 395
    .line 396
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 400
    .line 401
    iget-object v5, v5, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 418
    .line 419
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_f

    .line 430
    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 436
    .line 437
    const-string v5, "SyncManager"

    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    goto :goto_1

    .line 447
    :cond_f
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 448
    .line 449
    if-eqz v1, :cond_10

    .line 450
    .line 451
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 452
    .line 453
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 458
    .line 459
    if-eqz v1, :cond_10

    .line 460
    .line 461
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 462
    .line 463
    iget v5, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 464
    .line 465
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 472
    .line 473
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 474
    .line 475
    invoke-interface {v1, v2, v5}, Lcom/android/server/usage/AppStandbyInternal;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    :cond_10
    iget-object v10, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 479
    .line 480
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 481
    .line 482
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 483
    .line 484
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 485
    .line 486
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 491
    .line 492
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 493
    .line 494
    iget v5, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 495
    .line 496
    invoke-virtual {v2, v1, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    if-nez v2, :cond_11

    .line 501
    .line 502
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 503
    .line 504
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 505
    .line 506
    const-string/jumbo v3, "dispatchSyncOperation() failed: no sync adapter info for "

    .line 507
    .line 508
    .line 509
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    const-string v2, "SyncManager"

    .line 517
    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string/jumbo v4, "can\'t find a sync adapter for "

    .line 521
    .line 522
    .line 523
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v1, ", removing settings for it"

    .line 530
    .line 531
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 542
    .line 543
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 544
    .line 545
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 546
    .line 547
    monitor-enter v5

    .line 548
    :try_start_1
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 549
    .line 550
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 551
    .line 552
    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v1, v2, v4, v3, v9}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 555
    .line 556
    .line 557
    monitor-exit v5

    .line 558
    goto/16 :goto_7

    .line 559
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

    .line 564
    .line 565
    iget-object v11, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 566
    .line 567
    new-instance v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 568
    .line 569
    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 570
    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 572
    .line 573
    .line 574
    move-result-wide v1

    .line 575
    const/4 v14, 0x0

    .line 576
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    iget v15, v7, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 581
    .line 582
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v15

    .line 586
    iget-object v3, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 587
    .line 588
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 589
    .line 590
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 591
    .line 592
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    filled-new-array {v4, v5, v15, v3}, [Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    const/16 v4, 0xaa0

    .line 607
    .line 608
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 609
    .line 610
    .line 611
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 612
    .line 613
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 614
    .line 615
    const-string/jumbo v4, "insertStartSyncEvent: "

    .line 616
    .line 617
    .line 618
    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 619
    .line 620
    monitor-enter v5

    .line 621
    :try_start_2
    const-string v15, "SyncManager"

    .line 622
    .line 623
    invoke-static {v15, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 624
    .line 625
    .line 626
    move-result v15

    .line 627
    if-eqz v15, :cond_12

    .line 628
    .line 629
    const-string v15, "SyncManager"

    .line 630
    .line 631
    new-instance v8, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    goto :goto_2

    .line 647
    :catchall_1
    move-exception v0

    .line 648
    goto/16 :goto_9

    .line 649
    .line 650
    :cond_12
    :goto_2
    iget-object v4, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 651
    .line 652
    const-string/jumbo v8, "insertStartSyncEvent"

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v4, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    if-nez v4, :cond_13

    .line 660
    .line 661
    monitor-exit v5

    .line 662
    const-wide/16 v4, -0x1

    .line 663
    .line 664
    goto/16 :goto_4

    .line 665
    .line 666
    :cond_13
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 667
    .line 668
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 669
    .line 670
    .line 671
    iget-object v15, v7, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 672
    .line 673
    const-string/jumbo v9, "initialize"

    .line 674
    .line 675
    .line 676
    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 677
    .line 678
    .line 679
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 680
    .line 681
    iput v4, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 682
    .line 683
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 684
    .line 685
    add-int/lit8 v9, v4, 0x1

    .line 686
    .line 687
    iput v9, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 688
    .line 689
    iput v4, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 690
    .line 691
    if-gez v9, :cond_14

    .line 692
    .line 693
    iput v14, v3, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 694
    .line 695
    :cond_14
    iput-wide v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 696
    .line 697
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 698
    .line 699
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 700
    .line 701
    iget v1, v7, Lcom/android/server/content/SyncOperation;->reason:I

    .line 702
    .line 703
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 704
    .line 705
    new-instance v1, Landroid/os/Bundle;

    .line 706
    .line 707
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 708
    .line 709
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 710
    .line 711
    .line 712
    iput-object v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 713
    .line 714
    iput v14, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 715
    .line 716
    iget v1, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 717
    .line 718
    iput v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 719
    .line 720
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 721
    .line 722
    invoke-virtual {v1, v14, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    :goto_3
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 726
    .line 727
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    const/16 v2, 0x64

    .line 732
    .line 733
    if-le v1, v2, :cond_15

    .line 734
    .line 735
    iget-object v1, v3, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    const/4 v4, 0x1

    .line 742
    sub-int/2addr v2, v4

    .line 743
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    goto :goto_3

    .line 747
    :cond_15
    iget v1, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 748
    .line 749
    int-to-long v1, v1

    .line 750
    const-string v4, "SyncManager"

    .line 751
    .line 752
    const/4 v8, 0x2

    .line 753
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    if-eqz v4, :cond_16

    .line 758
    .line 759
    const-string v4, "SyncManager"

    .line 760
    .line 761
    new-instance v8, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    const-string/jumbo v9, "returning historyId "

    .line 767
    .line 768
    .line 769
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v8

    .line 779
    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    :cond_16
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 783
    iget-object v4, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 784
    .line 785
    iget-object v5, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 786
    .line 787
    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 788
    .line 789
    const/16 v8, 0x8

    .line 790
    .line 791
    invoke-virtual {v3, v8, v5, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 792
    .line 793
    .line 794
    move-wide v4, v1

    .line 795
    :goto_4
    move-object v1, v12

    .line 796
    move-object v2, v13

    .line 797
    move-object/from16 v3, p1

    .line 798
    .line 799
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 800
    .line 801
    .line 802
    const-string v1, "SyncManager"

    .line 803
    .line 804
    const/4 v2, 0x2

    .line 805
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    if-eqz v1, :cond_17

    .line 810
    .line 811
    const-string v1, "SyncManager"

    .line 812
    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    const-string/jumbo v3, "dispatchSyncOperation: starting "

    .line 816
    .line 817
    .line 818
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .line 830
    .line 831
    :cond_17
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 832
    .line 833
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 834
    .line 835
    const-string/jumbo v2, "setActiveSync: account= auth="

    .line 836
    .line 837
    .line 838
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 839
    .line 840
    monitor-enter v3

    .line 841
    :try_start_3
    const-string v4, "SyncManager"

    .line 842
    .line 843
    const/4 v5, 0x2

    .line 844
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 845
    .line 846
    .line 847
    move-result v4

    .line 848
    if-eqz v4, :cond_18

    .line 849
    .line 850
    const-string v4, "SyncManager"

    .line 851
    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 858
    .line 859
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 860
    .line 861
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    const-string v2, " src="

    .line 865
    .line 866
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 870
    .line 871
    iget v2, v2, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 872
    .line 873
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v2, " extras="

    .line 877
    .line 878
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 882
    .line 883
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 884
    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .line 889
    .line 890
    invoke-static {v2, v6}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .line 906
    .line 907
    goto :goto_5

    .line 908
    :catchall_2
    move-exception v0

    .line 909
    goto/16 :goto_8

    .line 910
    .line 911
    :cond_18
    :goto_5
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 912
    .line 913
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 914
    .line 915
    const/4 v4, -0x1

    .line 916
    const/4 v5, 0x1

    .line 917
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    new-instance v4, Landroid/content/SyncInfo;

    .line 922
    .line 923
    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 924
    .line 925
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 926
    .line 927
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 928
    .line 929
    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 930
    .line 931
    iget-wide v14, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 932
    .line 933
    move-object/from16 v16, v4

    .line 934
    .line 935
    move/from16 v17, v5

    .line 936
    .line 937
    move-object/from16 v18, v8

    .line 938
    .line 939
    move-object/from16 v19, v6

    .line 940
    .line 941
    move-wide/from16 v20, v14

    .line 942
    .line 943
    invoke-direct/range {v16 .. v21}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 944
    .line 945
    .line 946
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 947
    .line 948
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 949
    .line 950
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 951
    .line 952
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 953
    :try_start_4
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 954
    .line 955
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    check-cast v6, Ljava/util/ArrayList;

    .line 960
    .line 961
    if-nez v6, :cond_19

    .line 962
    .line 963
    new-instance v6, Ljava/util/ArrayList;

    .line 964
    .line 965
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .line 967
    .line 968
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 969
    .line 970
    invoke-virtual {v8, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 971
    .line 972
    .line 973
    :cond_19
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 974
    :try_start_5
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 978
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 979
    .line 980
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 981
    .line 982
    const/4 v3, 0x4

    .line 983
    invoke-virtual {v1, v3, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 984
    .line 985
    .line 986
    iput-object v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 987
    .line 988
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 989
    .line 990
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 991
    .line 992
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 996
    .line 997
    invoke-static {v1, v12}, Lcom/android/server/content/SyncManager;->-$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 998
    .line 999
    .line 1000
    iget v1, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1001
    .line 1002
    const-string v2, "SyncManager"

    .line 1003
    .line 1004
    const/4 v3, 0x2

    .line 1005
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    if-eqz v3, :cond_1a

    .line 1010
    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    const-string v4, "bindToSyncAdapter: "

    .line 1014
    .line 1015
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    const-string v4, ", connection "

    .line 1022
    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .line 1035
    .line 1036
    :cond_1a
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1037
    .line 1038
    invoke-static {v2, v11, v1}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    const/4 v2, 0x1

    .line 1043
    iput-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1044
    .line 1045
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1046
    .line 1047
    sget-object v3, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    .line 1048
    .line 1049
    new-instance v4, Landroid/os/UserHandle;

    .line 1050
    .line 1051
    iget-object v5, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1052
    .line 1053
    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1054
    .line 1055
    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1056
    .line 1057
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v2, v1, v12, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1065
    .line 1066
    iget-boolean v3, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1067
    .line 1068
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    const-string v4, " for "

    .line 1073
    .line 1074
    const-string v5, "bindService() returned="

    .line 1075
    .line 1076
    filled-new-array {v5, v3, v4, v12}, [Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    if-nez v1, :cond_1b

    .line 1084
    .line 1085
    const/4 v2, 0x0

    .line 1086
    iput-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1087
    .line 1088
    goto :goto_6

    .line 1089
    :cond_1b
    :try_start_6
    iget-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1090
    .line 1091
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    iput-object v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 1096
    .line 1097
    iget-object v3, v13, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1098
    .line 1099
    iget v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1100
    .line 1101
    invoke-interface {v3, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteSyncStart(Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1102
    .line 1103
    .line 1104
    :catch_0
    :goto_6
    if-nez v1, :cond_1c

    .line 1105
    .line 1106
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1107
    .line 1108
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1109
    .line 1110
    const-string/jumbo v2, "dispatchSyncOperation() failed: bind failed. target: "

    .line 1111
    .line 1112
    .line 1113
    filled-new-array {v2, v11}, [Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1118
    .line 1119
    .line 1120
    const-string v1, "SyncManager"

    .line 1121
    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    const-string v3, "Bind attempt failed - target: "

    .line 1125
    .line 1126
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v0, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 1140
    .line 1141
    .line 1142
    :goto_7
    iget v1, v7, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1143
    .line 1144
    const-string/jumbo v2, "dispatchSyncOperation() failed"

    .line 1145
    .line 1146
    .line 1147
    invoke-static {v1, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(ILjava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    :cond_1c
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 1151
    .line 1152
    iget-object v1, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1153
    .line 1154
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1155
    .line 1156
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

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    move-wide/from16 v12, p4

    .line 8
    .line 9
    const-string v2, "SyncManager"

    .line 10
    .line 11
    const/4 v11, 0x2

    .line 12
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    mul-long v9, v14, v4

    .line 24
    .line 25
    mul-long v7, v12, v4

    .line 26
    .line 27
    const-string v4, " extras: "

    .line 28
    .line 29
    const-string v5, " flexMillis: "

    .line 30
    .line 31
    const-string v6, " period: "

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    move/from16 v17, v3

    .line 38
    .line 39
    const-string v3, "Addition to periodic syncs requested: "

    .line 40
    .line 41
    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {v11, v5, v12, v13, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move/from16 v17, v3

    .line 72
    .line 73
    :goto_0
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    move-object/from16 v18, v4

    .line 90
    .line 91
    if-eqz v11, :cond_7

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Lcom/android/server/content/SyncOperation;

    .line 98
    .line 99
    iget-boolean v4, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 100
    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 112
    .line 113
    move-object/from16 v20, v3

    .line 114
    .line 115
    move-object/from16 v19, v5

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    move-object/from16 v3, p6

    .line 119
    .line 120
    invoke-static {v4, v3, v5}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 127
    .line 128
    iget-object v5, v11, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 129
    .line 130
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 131
    .line 132
    invoke-virtual {v4, v3, v5}, Lcom/android/server/content/SyncManager;->isPackageStopped(ILjava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_1

    .line 137
    .line 138
    :goto_2
    move-object/from16 v4, v18

    .line 139
    .line 140
    move-object/from16 v5, v19

    .line 141
    .line 142
    move-object/from16 v3, v20

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    iget-wide v3, v11, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 146
    .line 147
    cmp-long v0, v9, v3

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    iget-wide v3, v11, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 152
    .line 153
    cmp-long v0, v7, v3

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    :cond_2
    const/4 v4, 0x2

    .line 158
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo v3, "updating period "

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v3, " to "

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, " and flex to "

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_3
    new-instance v0, Lcom/android/server/content/SyncOperation;

    .line 199
    .line 200
    iget-object v13, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 201
    .line 202
    iget v14, v11, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 203
    .line 204
    iget-object v15, v11, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 205
    .line 206
    iget v2, v11, Lcom/android/server/content/SyncOperation;->reason:I

    .line 207
    .line 208
    iget v3, v11, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 209
    .line 210
    iget-object v4, v11, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 211
    .line 212
    iget-boolean v5, v11, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 213
    .line 214
    iget-boolean v6, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 215
    .line 216
    iget v12, v11, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 217
    .line 218
    const/16 v26, 0x0

    .line 219
    .line 220
    move/from16 v21, v12

    .line 221
    .line 222
    move-object v12, v0

    .line 223
    move/from16 v16, v2

    .line 224
    .line 225
    move/from16 v17, v3

    .line 226
    .line 227
    move-object/from16 v18, v4

    .line 228
    .line 229
    move/from16 v19, v5

    .line 230
    .line 231
    move/from16 v20, v6

    .line 232
    .line 233
    move-wide/from16 v22, v9

    .line 234
    .line 235
    move-wide/from16 v24, v7

    .line 236
    .line 237
    invoke-direct/range {v12 .. v26}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 238
    .line 239
    .line 240
    iget v2, v11, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 241
    .line 242
    iput v2, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 243
    .line 244
    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 247
    .line 248
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

    .line 253
    .line 254
    move-object/from16 v19, v5

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_7
    move-object/from16 v19, v5

    .line 258
    .line 259
    const/4 v4, 0x2

    .line 260
    const/4 v5, 0x1

    .line 261
    if-eqz v17, :cond_8

    .line 262
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v11, "Adding new periodic sync: "

    .line 266
    .line 267
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-object/from16 v6, v18

    .line 280
    .line 281
    move-object/from16 v11, v19

    .line 282
    .line 283
    invoke-static {v3, v11, v12, v13, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :cond_8
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 301
    .line 302
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 305
    .line 306
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 307
    .line 308
    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 315
    .line 316
    invoke-virtual {v2, v3, v6}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-nez v2, :cond_9

    .line 321
    .line 322
    return-void

    .line 323
    :cond_9
    new-instance v11, Lcom/android/server/content/SyncOperation;

    .line 324
    .line 325
    iget v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 326
    .line 327
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 328
    .line 329
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v2, Landroid/content/SyncAdapterType;

    .line 336
    .line 337
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    .line 338
    .line 339
    .line 340
    move-result v16

    .line 341
    const/16 v17, 0x4

    .line 342
    .line 343
    const/16 v18, 0x1

    .line 344
    .line 345
    const/16 v19, -0x4

    .line 346
    .line 347
    const/16 v20, -0x1

    .line 348
    .line 349
    const/16 v21, 0x0

    .line 350
    .line 351
    move-object v2, v11

    .line 352
    move-object/from16 v22, v3

    .line 353
    .line 354
    move-object/from16 v3, p1

    .line 355
    .line 356
    move/from16 v23, v4

    .line 357
    .line 358
    move v4, v6

    .line 359
    move-object/from16 v5, v22

    .line 360
    .line 361
    move/from16 v24, v6

    .line 362
    .line 363
    move/from16 v6, v19

    .line 364
    .line 365
    move-wide/from16 v25, v7

    .line 366
    .line 367
    move/from16 v7, v17

    .line 368
    .line 369
    move-object/from16 v8, p6

    .line 370
    .line 371
    move-wide/from16 v27, v9

    .line 372
    .line 373
    move/from16 v9, v16

    .line 374
    .line 375
    move/from16 v10, v18

    .line 376
    .line 377
    move-object/from16 v29, v11

    .line 378
    .line 379
    move/from16 v11, v20

    .line 380
    .line 381
    move-wide/from16 v12, v27

    .line 382
    .line 383
    move-wide/from16 v14, v25

    .line 384
    .line 385
    move/from16 v16, v21

    .line 386
    .line 387
    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 388
    .line 389
    .line 390
    move-object/from16 v2, v29

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    const/4 v4, 0x2

    .line 397
    if-ne v3, v4, :cond_b

    .line 398
    .line 399
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    :try_start_0
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .line 410
    move-object/from16 v9, v22

    .line 411
    .line 412
    :try_start_1
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    goto :goto_4

    .line 417
    :catch_0
    move-object/from16 v9, v22

    .line 418
    .line 419
    :catch_1
    const/4 v2, 0x0

    .line 420
    :goto_4
    if-nez v2, :cond_a

    .line 421
    .line 422
    return-void

    .line 423
    :cond_a
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 424
    .line 425
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 426
    .line 427
    const-string/jumbo v3, "requestAccountAccess for SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS"

    .line 428
    .line 429
    .line 430
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 438
    .line 439
    iget-object v10, v2, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 440
    .line 441
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 442
    .line 443
    new-instance v12, Landroid/os/RemoteCallback;

    .line 444
    .line 445
    new-instance v13, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;

    .line 446
    .line 447
    move-object v4, v0

    .line 448
    move-object v0, v13

    .line 449
    move-object/from16 v1, p0

    .line 450
    .line 451
    move-object/from16 v2, p1

    .line 452
    .line 453
    move-wide/from16 v3, p2

    .line 454
    .line 455
    move-wide/from16 v5, p4

    .line 456
    .line 457
    move-object/from16 v7, p6

    .line 458
    .line 459
    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v12, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v10, v11, v9, v8, v12}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :cond_b
    move-object v4, v0

    .line 470
    move-object/from16 v9, v22

    .line 471
    .line 472
    if-eqz v3, :cond_c

    .line 473
    .line 474
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 477
    .line 478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    const-string/jumbo v2, "syncOpState="

    .line 483
    .line 484
    .line 485
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :cond_c
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 494
    .line 495
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    .line 496
    .line 497
    .line 498
    iget-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 499
    .line 500
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 501
    .line 502
    iget v1, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 503
    .line 504
    const/4 v2, 0x1

    .line 505
    invoke-virtual {v0, v2, v1, v9}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method public final updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 28
    .line 29
    .line 30
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {v5, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 36
    .line 37
    const-string v4, "SyncManager"

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const-string v4, "SyncManager"

    .line 48
    .line 49
    const-string v6, "Accounts list: "

    .line 50
    .line 51
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 57
    .line 58
    array-length v6, v4

    .line 59
    move v7, v5

    .line 60
    :goto_0
    if-ge v7, v6, :cond_0

    .line 61
    .line 62
    aget-object v8, v4, v7

    .line 63
    .line 64
    const-string v9, "SyncManager"

    .line 65
    .line 66
    invoke-virtual {v8}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_0
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    instance-of v4, v4, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 87
    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 91
    .line 92
    iget-object v6, v4, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 93
    .line 94
    const-string/jumbo v7, "updateRunningAccountsH: "

    .line 95
    .line 96
    .line 97
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 98
    .line 99
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v6, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V

    .line 113
    .line 114
    .line 115
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 116
    .line 117
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 118
    .line 119
    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 120
    .line 121
    iget-object v6, v6, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    move v7, v5

    .line 128
    :goto_1
    if-ge v7, v6, :cond_3

    .line 129
    .line 130
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 131
    .line 132
    iget-object v8, v8, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 139
    .line 140
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 141
    .line 142
    iget-object v10, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 143
    .line 144
    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 145
    .line 146
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 147
    .line 148
    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 149
    .line 150
    invoke-static {v9, v4, v11, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_2

    .line 155
    .line 156
    const-string v9, "SyncManager"

    .line 157
    .line 158
    const-string/jumbo v10, "canceling sync since the account is no longer running"

    .line 159
    .line 160
    .line 161
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 165
    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-static {v9, v8, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    if-eqz v1, :cond_6

    .line 174
    .line 175
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 176
    .line 177
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 178
    .line 179
    array-length v4, v4

    .line 180
    move v6, v5

    .line 181
    :goto_2
    if-ge v6, v4, :cond_6

    .line 182
    .line 183
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 184
    .line 185
    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 186
    .line 187
    aget-object v7, v7, v6

    .line 188
    .line 189
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 190
    .line 191
    iget-object v9, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 192
    .line 193
    iget v10, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 194
    .line 195
    invoke-static {v8, v3, v9, v10}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_5

    .line 200
    .line 201
    const-string v3, "SyncManager"

    .line 202
    .line 203
    const/4 v4, 0x3

    .line 204
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_4

    .line 209
    .line 210
    const-string v3, "SyncManager"

    .line 211
    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v6, "Account "

    .line 218
    .line 219
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v6, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 223
    .line 224
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v6, " added, checking sync restore data"

    .line 228
    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 240
    .line 241
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 244
    .line 245
    invoke-static {v3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;I)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 250
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

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    :goto_4
    if-ge v5, v4, :cond_8

    .line 274
    .line 275
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 280
    .line 281
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 282
    .line 283
    iget-object v8, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 284
    .line 285
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 286
    .line 287
    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 288
    .line 289
    invoke-static {v7, v2, v9, v8}, Lcom/android/server/content/SyncManager;->-$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-nez v7, :cond_7

    .line 294
    .line 295
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 296
    .line 297
    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 298
    .line 299
    const-string/jumbo v8, "canceling: "

    .line 300
    .line 301
    .line 302
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 310
    .line 311
    const-string/jumbo v8, "updateRunningAccountsH()"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_8
    if-eqz v1, :cond_9

    .line 321
    .line 322
    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 323
    .line 324
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 325
    .line 326
    iget v8, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 327
    .line 328
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    const/4 v15, -0x4

    .line 335
    const/16 v16, 0x0

    .line 336
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

    .line 342
    .line 343
    .line 344
    :cond_9
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 349
    .line 350
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
