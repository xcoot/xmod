.class public final Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ENABLE_SUSPICIOUS_CHECK:Z

.field public static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field public static final LOCAL_SYNC_DELAY:J

.field public static final SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

.field public static sInstance:Lcom/android/server/content/SyncManager;

.field public static final sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

.field public static final sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;


# instance fields
.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountsLock:Ljava/lang/Object;

.field public final mAccountsUpdatedReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mActiveSyncContexts:Ljava/util/ArrayList;

.field public final mAmi:Landroid/app/ActivityManagerInternal;

.field public final mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field public final mConnectivityIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field public final mContext:Landroid/content/Context;

.field public volatile mDataConnectionIsConnected:Z

.field public mJobScheduler:Landroid/app/job/JobScheduler;

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public volatile mNextJobId:I

.field public final mNotificationMgr:Landroid/app/NotificationManager;

.field public final mOtherIntentsReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public volatile mProvisioned:Z

.field public volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field public final mShutdownIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field public final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field public volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mUserIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    move v0, p0

    .line 6
    :goto_0
    array-length v1, p1

    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    aget-object v1, p1, v0

    .line 10
    .line 11
    iget v2, v1, Landroid/accounts/AccountAndUser;->userId:I

    .line 12
    .line 13
    if-ne v2, p3, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return p0
.end method

.method public static -$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-wide/16 v4, 0x3e8

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v8, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    cmp-long v8, v1, v8

    .line 28
    .line 29
    if-gez v8, :cond_0

    .line 30
    .line 31
    const-string v0, "SyncManager"

    .line 32
    .line 33
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    const-string v0, "SyncManager"

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v7, "Still in backoff, do not increase it. Remaining: "

    .line 44
    .line 45
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    sub-long/2addr v7, v1

    .line 57
    div-long/2addr v7, v4

    .line 58
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " seconds."

    .line 62
    .line 63
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_0
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    long-to-float v3, v8

    .line 84
    iget-object v8, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 85
    .line 86
    iget-object v9, v8, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v9

    .line 89
    :try_start_0
    iget v8, v8, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 90
    .line 91
    monitor-exit v9

    .line 92
    mul-float/2addr v3, v8

    .line 93
    float-to-long v8, v3

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw v0

    .line 98
    :cond_1
    const-wide/16 v8, -0x1

    .line 99
    .line 100
    :goto_0
    const-wide/16 v10, 0x0

    .line 101
    .line 102
    cmp-long v3, v8, v10

    .line 103
    .line 104
    if-gtz v3, :cond_3

    .line 105
    .line 106
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 107
    .line 108
    iget-object v10, v3, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v10

    .line 111
    :try_start_1
    iget v3, v3, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 112
    .line 113
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    mul-int/lit16 v3, v3, 0x3e8

    .line 115
    .line 116
    int-to-long v8, v3

    .line 117
    long-to-double v10, v8

    .line 118
    const-wide v12, 0x3ff199999999999aL    # 1.1

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double/2addr v10, v12

    .line 124
    double-to-long v10, v10

    .line 125
    new-instance v3, Ljava/util/Random;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    invoke-direct {v3, v12, v13}, Ljava/util/Random;-><init>(J)V

    .line 132
    .line 133
    .line 134
    sub-long/2addr v10, v8

    .line 135
    const-wide/32 v12, 0x7fffffff

    .line 136
    .line 137
    .line 138
    cmp-long v12, v10, v12

    .line 139
    .line 140
    if-gtz v12, :cond_2

    .line 141
    .line 142
    long-to-int v10, v10

    .line 143
    invoke-virtual {v3, v10}, Ljava/util/Random;->nextInt(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    int-to-long v10, v3

    .line 148
    add-long/2addr v8, v10

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string/jumbo v1, "the difference between the maxValue and the minValue must be less than 2147483647"

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    throw v0

    .line 162
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 163
    .line 164
    iget-object v10, v3, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v10

    .line 167
    :try_start_3
    iget v3, v3, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 168
    .line 169
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    int-to-long v10, v3

    .line 171
    mul-long/2addr v10, v4

    .line 172
    cmp-long v3, v8, v10

    .line 173
    .line 174
    if-lez v3, :cond_4

    .line 175
    .line 176
    move-wide v8, v10

    .line 177
    :cond_4
    add-long v3, v1, v8

    .line 178
    .line 179
    const-string v1, "SyncManager"

    .line 180
    .line 181
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    const-string v1, "SyncManager"

    .line 188
    .line 189
    const-string v2, "Backoff until: "

    .line 190
    .line 191
    const-string v5, ", delayTime: "

    .line 192
    .line 193
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :cond_5
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 208
    .line 209
    move-object v2, p1

    .line 210
    move-wide v5, v8

    .line 211
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 212
    .line 213
    .line 214
    const-string/jumbo v1, "increaseBackoffSetting"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    :goto_2
    return-void

    .line 221
    :catchall_2
    move-exception v0

    .line 222
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    throw v0
.end method

.method public static -$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static -$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string v1, "SyncManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "posting MESSAGE_SYNC_MONITOR in 60s"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 20
    .line 21
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    add-long/2addr v3, v1

    .line 30
    iput-wide v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 41
    .line 42
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-wide/32 v0, 0xea60

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static -$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 45
    .line 46
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 47
    .line 48
    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public static -$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string v1, "SyncManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "sending MESSAGE_SYNC_FINISHED"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    iput v1, v0, Landroid/os/Message;->what:I

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 29
    .line 30
    invoke-direct {v1, p2, p1}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 4
    .line 5
    const-string/jumbo v0, "sync.local_sync_delay"

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x7530

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 15
    .line 16
    const-wide/16 v0, 0x15

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    .line 26
    .line 27
    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v1, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    iput-boolean v8, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 21
    .line 22
    iput v8, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v9, Lcom/android/server/content/SyncManager$2;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v9, v0, v1}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/android/server/content/SyncManager$2;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, v0, v2}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/android/server/content/SyncManager$2;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, v0, v3}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    .line 46
    .line 47
    .line 48
    new-instance v10, Lcom/android/server/content/SyncManager$2;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    invoke-direct {v10, v0, v3}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/android/server/content/SyncManager$2;

    .line 55
    .line 56
    const/4 v4, 0x4

    .line 57
    invoke-direct {v3, v0, v4}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 66
    .line 67
    const-class v4, Lcom/android/server/content/SyncManager;

    .line 68
    .line 69
    monitor-enter v4

    .line 70
    :try_start_0
    sget-object v5, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    .line 71
    .line 72
    if-nez v5, :cond_0

    .line 73
    .line 74
    sput-object v0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_0
    const-string v5, "SyncManager"

    .line 81
    .line 82
    const-string v6, "SyncManager instantiated multiple times"

    .line 83
    .line 84
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iput-object v7, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 95
    .line 96
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 105
    .line 106
    if-eqz v5, :cond_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v6, Lcom/android/server/content/SyncStorageEngine;

    .line 114
    .line 115
    invoke-direct {v6, v7, v5, v4}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 116
    .line 117
    .line 118
    sput-object v6, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 119
    .line 120
    :goto_1
    sget-object v4, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 121
    .line 122
    if-eqz v4, :cond_e

    .line 123
    .line 124
    sget-object v11, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 125
    .line 126
    iput-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 127
    .line 128
    new-instance v4, Lcom/android/server/content/SyncManager$7;

    .line 129
    .line 130
    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v11, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    .line 134
    .line 135
    if-nez v5, :cond_2

    .line 136
    .line 137
    iput-object v4, v11, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    .line 138
    .line 139
    :cond_2
    new-instance v4, Lcom/android/server/content/SyncManager$7;

    .line 140
    .line 141
    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 142
    .line 143
    .line 144
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

    .line 145
    .line 146
    if-nez v5, :cond_3

    .line 147
    .line 148
    sput-object v4, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

    .line 149
    .line 150
    :cond_3
    new-instance v4, Lcom/android/server/content/SyncManager$7;

    .line 151
    .line 152
    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v11, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    .line 156
    .line 157
    if-nez v5, :cond_4

    .line 158
    .line 159
    iput-object v4, v11, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    .line 160
    .line 161
    :cond_4
    new-instance v4, Landroid/content/SyncAdaptersCache;

    .line 162
    .line 163
    invoke-direct {v4, v7}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 167
    .line 168
    new-instance v5, Landroid/os/HandlerThread;

    .line 169
    .line 170
    const-string v6, "SyncManager"

    .line 171
    .line 172
    const/16 v12, 0xa

    .line 173
    .line 174
    invoke-direct {v5, v6, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 178
    .line 179
    .line 180
    new-instance v12, Lcom/android/server/content/SyncManager$SyncHandler;

    .line 181
    .line 182
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-direct {v12, v0, v5}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    .line 187
    .line 188
    .line 189
    iput-object v12, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 190
    .line 191
    new-instance v5, Lcom/android/server/content/SyncManager$10;

    .line 192
    .line 193
    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5, v12}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 197
    .line 198
    .line 199
    new-instance v4, Lcom/android/server/content/SyncManagerConstants;

    .line 200
    .line 201
    invoke-direct {v4, v7}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 205
    .line 206
    invoke-static/range {p1 .. p1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 211
    .line 212
    new-instance v4, Landroid/content/IntentFilter;

    .line 213
    .line 214
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 215
    .line 216
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    .line 223
    .line 224
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 225
    .line 226
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/16 v4, 0x3e8

    .line 230
    .line 231
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    new-instance v4, Landroid/content/IntentFilter;

    .line 238
    .line 239
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 243
    .line 244
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 248
    .line 249
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 253
    .line 254
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    const/4 v6, 0x0

    .line 261
    move-object/from16 v1, p1

    .line 262
    .line 263
    move-object v2, v3

    .line 264
    move-object v3, v13

    .line 265
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    new-instance v1, Lcom/android/server/content/SyncManager$PackageMonitorImpl;

    .line 269
    .line 270
    invoke-direct {v1}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 271
    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    invoke-virtual {v1, v7, v2, v13, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 275
    .line 276
    .line 277
    new-instance v1, Landroid/content/IntentFilter;

    .line 278
    .line 279
    const-string v3, "android.intent.action.TIME_SET"

    .line 280
    .line 281
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    if-nez p2, :cond_5

    .line 288
    .line 289
    const-string/jumbo v1, "notification"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Landroid/app/NotificationManager;

    .line 297
    .line 298
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_5
    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 302
    .line 303
    :goto_2
    const-string/jumbo v1, "power"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Landroid/os/PowerManager;

    .line 311
    .line 312
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 313
    .line 314
    const-string/jumbo v2, "user"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    move-object v10, v2

    .line 322
    check-cast v10, Landroid/os/UserManager;

    .line 323
    .line 324
    iput-object v10, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 325
    .line 326
    const-string v2, "account"

    .line 327
    .line 328
    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Landroid/accounts/AccountManager;

    .line 333
    .line 334
    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 341
    .line 342
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 343
    .line 344
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 349
    .line 350
    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 351
    .line 352
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 353
    .line 354
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 359
    .line 360
    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 361
    .line 362
    new-instance v3, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;

    .line 363
    .line 364
    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v3}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 368
    .line 369
    .line 370
    const-string v2, "batterystats"

    .line 371
    .line 372
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 381
    .line 382
    const-string v2, "SyncLoopWakeLock"

    .line 383
    .line 384
    const/4 v14, 0x1

    .line 385
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 390
    .line 391
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    .line 393
    invoke-virtual {v1, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    iput-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 401
    .line 402
    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 403
    .line 404
    if-nez v1, :cond_7

    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    new-instance v2, Lcom/android/server/content/SyncManager$11;

    .line 411
    .line 412
    invoke-direct {v2, v0, v1}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/ContentResolver;)V

    .line 413
    .line 414
    .line 415
    monitor-enter v12

    .line 416
    :try_start_1
    const-string/jumbo v3, "device_provisioned"

    .line 417
    .line 418
    .line 419
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v1, v3, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 424
    .line 425
    .line 426
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 427
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    or-int/2addr v3, v4

    .line 433
    iput-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 434
    .line 435
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 436
    .line 437
    if-eqz v3, :cond_6

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 440
    .line 441
    .line 442
    goto :goto_3

    .line 443
    :catchall_1
    move-exception v0

    .line 444
    goto :goto_4

    .line 445
    :cond_6
    :goto_3
    monitor-exit v12

    .line 446
    goto :goto_5

    .line 447
    :goto_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 448
    throw v0

    .line 449
    :cond_7
    :goto_5
    if-nez p2, :cond_8

    .line 450
    .line 451
    new-instance v4, Landroid/content/IntentFilter;

    .line 452
    .line 453
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 454
    .line 455
    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const/4 v5, 0x0

    .line 459
    const/4 v6, 0x0

    .line 460
    move-object/from16 v1, p1

    .line 461
    .line 462
    move-object v2, v9

    .line 463
    move-object v3, v13

    .line 464
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 465
    .line 466
    .line 467
    :cond_8
    iget-boolean v1, v11, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 468
    .line 469
    if-nez v1, :cond_9

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_9
    invoke-virtual {v10}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    move v3, v8

    .line 481
    :goto_6
    if-ge v3, v2, :cond_d

    .line 482
    .line 483
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 488
    .line 489
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 498
    .line 499
    invoke-virtual {v6, v5}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eqz v7, :cond_c

    .line 512
    .line 513
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    check-cast v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 518
    .line 519
    iget-object v9, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 520
    .line 521
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 526
    .line 527
    iget-object v11, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v11, Landroid/content/SyncAdapterType;

    .line 530
    .line 531
    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v10, v11, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 534
    .line 535
    .line 536
    move-result-object v10

    .line 537
    array-length v11, v10

    .line 538
    move v12, v8

    .line 539
    :goto_7
    if-ge v12, v11, :cond_a

    .line 540
    .line 541
    aget-object v13, v10, v12

    .line 542
    .line 543
    invoke-virtual {v0, v13, v9, v5}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 544
    .line 545
    .line 546
    move-result v15

    .line 547
    if-nez v15, :cond_b

    .line 548
    .line 549
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 550
    .line 551
    const-string/jumbo v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 552
    .line 553
    .line 554
    move-object/from16 p1, v1

    .line 555
    .line 556
    iget v1, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 557
    .line 558
    invoke-virtual {v15, v13, v8, v1, v14}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 559
    .line 560
    .line 561
    goto :goto_8

    .line 562
    :cond_b
    move-object/from16 p1, v1

    .line 563
    .line 564
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 565
    .line 566
    move-object/from16 v1, p1

    .line 567
    .line 568
    const/4 v8, 0x0

    .line 569
    goto :goto_7

    .line 570
    :cond_c
    move-object/from16 p1, v1

    .line 571
    .line 572
    add-int/lit8 v3, v3, 0x1

    .line 573
    .line 574
    const/4 v8, 0x0

    .line 575
    goto :goto_6

    .line 576
    :cond_d
    :goto_9
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 577
    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v2, "Sync manager initialized: "

    .line 581
    .line 582
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 603
    .line 604
    const-string/jumbo v1, "not initialized"

    .line 605
    .line 606
    .line 607
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :goto_a
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    throw v0
.end method

.method public static dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 7

    .line 1
    const-string v0, "Success ("

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 12
    .line 13
    const-string v1, " avg="

    .line 14
    .line 15
    const-string v2, " for "

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v3, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 23
    .line 24
    invoke-static {p0, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 33
    .line 34
    int-to-long v5, v0

    .line 35
    div-long/2addr v3, v5

    .line 36
    invoke-static {p0, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const-string v0, ") Failure ("

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 50
    .line 51
    if-lez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 57
    .line 58
    invoke-static {p0, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 65
    .line 66
    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 67
    .line 68
    int-to-long v2, p1

    .line 69
    div-long/2addr v0, v2

    .line 70
    invoke-static {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 71
    .line 72
    .line 73
    :cond_1
    const-string p1, ")"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v0, p1, v0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x2e

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x64

    .line 14
    .line 15
    div-long/2addr p1, v0

    .line 16
    const-wide/16 v0, 0xa

    .line 17
    .line 18
    rem-long/2addr p1, v0

    .line 19
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x73

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x2d

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    neg-long p1, p1

    .line 16
    :cond_0
    const-wide/16 v2, 0x3c

    .line 17
    .line 18
    rem-long v4, p1, v2

    .line 19
    .line 20
    div-long/2addr p1, v2

    .line 21
    rem-long v6, p1, v2

    .line 22
    .line 23
    div-long/2addr p1, v2

    .line 24
    const-wide/16 v2, 0x18

    .line 25
    .line 26
    rem-long v8, p1, v2

    .line 27
    .line 28
    div-long/2addr p1, v2

    .line 29
    cmp-long v0, p1, v0

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x64

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    const/16 p2, 0x68

    .line 45
    .line 46
    invoke-static {p0, v8, v9, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/16 p2, 0x6d

    .line 51
    .line 52
    invoke-static {p0, v6, v7, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/16 p2, 0x73

    .line 57
    .line 58
    invoke-static {p0, v4, v5, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const-string p1, "0s"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "N/A"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.content.SyncAdapter"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string p1, "android.intent.extra.client_label"

    .line 15
    .line 16
    const v1, 0x1040f0c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    new-instance v4, Landroid/content/Intent;

    .line 23
    .line 24
    const-string p1, "android.settings.SYNC_SETTINGS"

    .line 25
    .line 26
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const/4 v3, 0x0

    .line 35
    const/high16 v5, 0x4000000

    .line 36
    .line 37
    move-object v2, p0

    .line 38
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "android.intent.extra.client_intent"

    .line 43
    .line 44
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/content/SyncManager;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SyncManager"

    .line 9
    .line 10
    const-string/jumbo v2, "sInstance == null"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public static getJobStats()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "JobStats: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "(JobSchedulerInternal==null)"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .locals 2

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const-wide/16 v0, 0xa

    .line 14
    .line 15
    cmp-long p4, p1, v0

    .line 16
    .line 17
    if-gez p4, :cond_1

    .line 18
    .line 19
    const/16 p4, 0x30

    .line 20
    .line 21
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public static readyToSync(I)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v2, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    sget-object v3, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move v3, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_1
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    monitor-exit v2

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    throw p0

    .line 46
    :cond_1
    :goto_1
    return v1
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-le v2, v3, :cond_2

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v2, p1

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-le v3, v4, :cond_3

    .line 41
    .line 42
    move-object p0, p1

    .line 43
    :cond_3
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_15

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    if-nez p2, :cond_13

    .line 64
    .line 65
    if-nez v3, :cond_5

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_5
    const-string/jumbo v4, "expedited"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    const-string/jumbo v4, "schedule_as_expedited_job"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    const-string/jumbo v4, "ignore_settings"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_8

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_8
    const-string/jumbo v4, "ignore_backoff"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_9

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_9
    const-string/jumbo v4, "do_not_retry"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_a
    const-string/jumbo v4, "force"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_b

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_b
    const-string/jumbo v4, "upload"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_c

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_c
    const-string/jumbo v4, "deletions_override"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_d

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_d
    const-string/jumbo v4, "discard_deletions"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_e

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_e
    const-string/jumbo v4, "expected_upload"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_f

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_f
    const-string/jumbo v4, "expected_download"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_10

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_10
    const-string/jumbo v4, "sync_priority"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_11

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_11
    const-string v4, "allow_metered"

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_12

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_12
    const-string/jumbo v4, "initialize"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_13

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_13
    :goto_2
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_14

    .line 216
    .line 217
    return v1

    .line 218
    :cond_14
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_4

    .line 231
    .line 232
    return v1

    .line 233
    :cond_15
    return v0
.end method


# virtual methods
.method public final canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p3, 0x100000

    .line 26
    .line 27
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :catch_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "SyncManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "sending MESSAGE_CANCEL"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string/jumbo v0, "sendCancelSyncsMessage() ep="

    .line 17
    .line 18
    .line 19
    const-string v1, " why="

    .line 20
    .line 21
    filled-new-array {v0, p1, v1, p3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 26
    .line 27
    invoke-virtual {v0, p3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const/4 v0, 0x6

    .line 37
    iput v0, p3, Landroid/os/Message;->what:I

    .line 38
    .line 39
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SyncManager"

    .line 4
    .line 5
    const-string p1, "Null sync operation detected."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "Removing periodic sync "

    .line 16
    .line 17
    const-string v1, " for "

    .line 18
    .line 19
    filled-new-array {v0, p1, v1, p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const-string/jumbo v2, "cancelScheduledSyncOperation"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 63
    .line 64
    const-wide/16 v2, -0x1

    .line 65
    .line 66
    const-wide/16 v4, -0x1

    .line 67
    .line 68
    move-object v1, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string/jumbo v3, "clearScheduledSyncOperations"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 43
    .line 44
    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-wide/16 v8, -0x1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 51
    .line 52
    const-wide/16 v6, -0x1

    .line 53
    .line 54
    move-object v5, p1

    .line 55
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 10
    .line 11
    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "get authority syncable"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :cond_2
    if-lez v3, :cond_3

    .line 39
    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 49
    .line 50
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    iget v2, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0, p3}, Lcom/android/server/content/SyncManager;->shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    const-string v0, "SyncManager"

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Account sync is disabled for account: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, " userId: "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " provider: "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :catch_0
    :cond_4
    :goto_1
    move v2, v3

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 131
    .line 132
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p3, v1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    :goto_2
    goto :goto_1

    .line 145
    :cond_7
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-wide/16 v4, 0x0

    .line 156
    .line 157
    invoke-interface {v1, v0, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    if-nez v0, :cond_8

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 177
    .line 178
    return v3

    .line 179
    :cond_a
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {p3, v0}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 186
    .line 187
    invoke-virtual {v0, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    if-nez p3, :cond_b

    .line 192
    .line 193
    return v3

    .line 194
    :cond_b
    iget v0, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 195
    .line 196
    iget-object v1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz p5, :cond_c

    .line 203
    .line 204
    invoke-virtual {p0, p2, v1}, Lcom/android/server/content/SyncManager;->isPackageStopped(ILjava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_c

    .line 209
    .line 210
    return v3

    .line 211
    :cond_c
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 212
    .line 213
    invoke-virtual {p2, v0, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_d

    .line 218
    .line 219
    const-string p0, "SyncManager"

    .line 220
    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string p2, "Not scheduling job "

    .line 224
    .line 225
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget p2, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string p2, ":"

    .line 234
    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object p2, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p2, " -- package not allowed to start"

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    return v3

    .line 256
    :cond_d
    if-eqz p4, :cond_e

    .line 257
    .line 258
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-nez p0, :cond_e

    .line 263
    .line 264
    const-string p0, "SyncManager"

    .line 265
    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string p4, "Access to "

    .line 269
    .line 270
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p1, " denied for package "

    .line 281
    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p1, " in UID "

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget p1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 294
    .line 295
    invoke-static {p2, p1, p0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const/4 p0, 0x3

    .line 299
    return p0

    .line 300
    :cond_e
    return v2

    .line 301
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Z)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 6
    .line 7
    const-string v3, "  "

    .line 8
    .line 9
    invoke-direct {v2, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 13
    .line 14
    invoke-direct {v3}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "Data connected: "

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v5, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 30
    .line 31
    .line 32
    const-string v5, "Battery saver: "

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    move v5, v7

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v5, v6

    .line 52
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 53
    .line 54
    .line 55
    const-string v5, "Background network restriction: "

    .line 56
    .line 57
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    const/4 v5, -0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    :goto_1
    const/4 v9, 0x2

    .line 73
    if-eq v5, v7, :cond_4

    .line 74
    .line 75
    if-eq v5, v9, :cond_3

    .line 76
    .line 77
    const/4 v10, 0x3

    .line 78
    if-eq v5, v10, :cond_2

    .line 79
    .line 80
    const-string v10, "Unknown("

    .line 81
    .line 82
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 86
    .line 87
    .line 88
    const-string v5, ")"

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const-string v5, " enabled"

    .line 95
    .line 96
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-string v5, " whitelisted"

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string v5, " disabled"

    .line 107
    .line 108
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    const-string v5, "Auto sync: "

    .line 112
    .line 113
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_6

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_5

    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 139
    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string/jumbo v12, "u"

    .line 143
    .line 144
    .line 145
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    .line 149
    .line 150
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v12, "="

    .line 154
    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 159
    .line 160
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 161
    .line 162
    invoke-virtual {v12, v10}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v10, " "

    .line 170
    .line 171
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    new-instance v10, Landroid/content/IntentFilter;

    .line 188
    .line 189
    const-string v11, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 190
    .line 191
    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v11, 0x0

    .line 195
    invoke-virtual {v5, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v10, "Storage low: "

    .line 200
    .line 201
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    move v5, v7

    .line 207
    goto :goto_4

    .line 208
    :cond_7
    move v5, v6

    .line 209
    :goto_4
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 210
    .line 211
    .line 212
    const-string v5, "Clock valid: "

    .line 213
    .line 214
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 218
    .line 219
    iget-boolean v5, v5, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 220
    .line 221
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    const-string v10, "Accounts: "

    .line 233
    .line 234
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-object v10, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 238
    .line 239
    if-eq v5, v10, :cond_8

    .line 240
    .line 241
    array-length v10, v5

    .line 242
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    const-string/jumbo v10, "not known yet"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 253
    .line 254
    .line 255
    move-result-wide v12

    .line 256
    const-string v10, "Now: "

    .line 257
    .line 258
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 262
    .line 263
    .line 264
    new-instance v10, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v14, " ("

    .line 267
    .line 268
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide v14

    .line 275
    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v14, ")"

    .line 283
    .line 284
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 295
    .line 296
    .line 297
    const-string v10, "Uptime: "

    .line 298
    .line 299
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v4, v12, v13}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 309
    .line 310
    .line 311
    const-string v10, "Time spent syncing: "

    .line 312
    .line 313
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 317
    .line 318
    .line 319
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 320
    .line 321
    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 322
    .line 323
    monitor-enter v10

    .line 324
    :try_start_0
    iget-boolean v14, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 325
    .line 326
    if-nez v14, :cond_9

    .line 327
    .line 328
    iget-wide v14, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .line 330
    monitor-exit v10

    .line 331
    goto :goto_6

    .line 332
    :catchall_0
    move-exception v0

    .line 333
    goto/16 :goto_1a

    .line 334
    .line 335
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 336
    .line 337
    .line 338
    move-result-wide v14

    .line 339
    iget-wide v8, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    .line 340
    .line 341
    iget-wide v6, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .line 343
    sub-long/2addr v14, v6

    .line 344
    add-long/2addr v14, v8

    .line 345
    monitor-exit v10

    .line 346
    :goto_6
    invoke-static {v4, v14, v15}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    const-string v6, ", sync "

    .line 353
    .line 354
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 358
    .line 359
    iget-object v6, v6, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 360
    .line 361
    iget-boolean v6, v6, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 362
    .line 363
    if-eqz v6, :cond_a

    .line 364
    .line 365
    const-string v6, ""

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_a
    const-string/jumbo v6, "not "

    .line 369
    .line 370
    .line 371
    :goto_7
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string/jumbo v6, "in progress"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 381
    .line 382
    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    const-string v7, "Active Syncs: "

    .line 386
    .line 387
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_b

    .line 423
    .line 424
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 429
    .line 430
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 431
    .line 432
    sub-long v9, v12, v9

    .line 433
    .line 434
    const-string v14, "  "

    .line 435
    .line 436
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const/4 v14, 0x0

    .line 440
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 441
    .line 442
    .line 443
    invoke-static {v4, v9, v10}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    const-string v9, " - "

    .line 450
    .line 451
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v8, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 455
    .line 456
    invoke-virtual {v8, v6, v14, v3, v14}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 468
    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    const-string v7, "Pending Syncs: "

    .line 475
    .line 476
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    move-object v7, v6

    .line 480
    check-cast v7, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    const/4 v9, 0x0

    .line 487
    :cond_c
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 488
    .line 489
    .line 490
    move-result v10

    .line 491
    if-eqz v10, :cond_d

    .line 492
    .line 493
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 498
    .line 499
    iget-boolean v10, v10, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 500
    .line 501
    const/4 v14, 0x1

    .line 502
    xor-int/2addr v10, v14

    .line 503
    if-eqz v10, :cond_c

    .line 504
    .line 505
    add-int/lit8 v9, v9, 0x1

    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_d
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 509
    .line 510
    .line 511
    sget-object v8, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 512
    .line 513
    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    :cond_e
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-eqz v7, :cond_f

    .line 525
    .line 526
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    check-cast v7, Lcom/android/server/content/SyncOperation;

    .line 531
    .line 532
    iget-boolean v8, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 533
    .line 534
    if-nez v8, :cond_e

    .line 535
    .line 536
    const/4 v8, 0x0

    .line 537
    invoke-virtual {v7, v11, v8, v3, v8}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_f
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 546
    .line 547
    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    const-string v7, "Periodic Syncs: "

    .line 553
    .line 554
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    move-object v7, v6

    .line 558
    check-cast v7, Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    const/4 v9, 0x0

    .line 565
    :cond_10
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v10

    .line 569
    if-eqz v10, :cond_11

    .line 570
    .line 571
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 576
    .line 577
    iget-boolean v10, v10, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 578
    .line 579
    if-eqz v10, :cond_10

    .line 580
    .line 581
    add-int/lit8 v9, v9, 0x1

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_11
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 585
    .line 586
    .line 587
    sget-object v8, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    .line 588
    .line 589
    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    :cond_12
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 597
    .line 598
    .line 599
    move-result v7

    .line 600
    if-eqz v7, :cond_13

    .line 601
    .line 602
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    check-cast v7, Lcom/android/server/content/SyncOperation;

    .line 607
    .line 608
    iget-boolean v8, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 609
    .line 610
    if-eqz v8, :cond_12

    .line 611
    .line 612
    const/4 v8, 0x0

    .line 613
    invoke-virtual {v7, v11, v8, v3, v8}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_13
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 622
    .line 623
    .line 624
    const-string v3, "Sync Status"

    .line 625
    .line 626
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    new-instance v3, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .line 633
    .line 634
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 635
    .line 636
    const/4 v7, 0x0

    .line 637
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 638
    .line 639
    .line 640
    array-length v6, v5

    .line 641
    const/4 v14, 0x0

    .line 642
    :goto_d
    if-ge v14, v6, :cond_20

    .line 643
    .line 644
    aget-object v7, v5, v14

    .line 645
    .line 646
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 647
    .line 648
    monitor-enter v8

    .line 649
    :try_start_2
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 650
    .line 651
    iget v10, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 652
    .line 653
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 654
    .line 655
    .line 656
    move-result v9

    .line 657
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 658
    const-string v8, "Account %s u%d %s%s\n"

    .line 659
    .line 660
    iget-object v10, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 661
    .line 662
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 663
    .line 664
    iget v11, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 665
    .line 666
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    iget-object v15, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 671
    .line 672
    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 673
    .line 674
    if-eqz v9, :cond_14

    .line 675
    .line 676
    const-string v9, ""

    .line 677
    .line 678
    goto :goto_e

    .line 679
    :cond_14
    const-string v9, " (locked)"

    .line 680
    .line 681
    :goto_e
    filled-new-array {v10, v11, v15, v9}, [Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 686
    .line 687
    .line 688
    const-string v8, "======================================================================="

    .line 689
    .line 690
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    new-instance v8, Lcom/android/server/content/SyncManager$PrintTable;

    .line 694
    .line 695
    invoke-direct {v8}, Lcom/android/server/content/SyncManager$PrintTable;-><init>()V

    .line 696
    .line 697
    .line 698
    const-string v16, "Authority"

    .line 699
    .line 700
    const-string v17, "Syncable"

    .line 701
    .line 702
    const-string v18, "Enabled"

    .line 703
    .line 704
    const-string v19, "Stats"

    .line 705
    .line 706
    const-string v20, "Loc"

    .line 707
    .line 708
    const-string v21, "Poll"

    .line 709
    .line 710
    const-string v22, "Per"

    .line 711
    .line 712
    const-string v23, "Feed"

    .line 713
    .line 714
    const-string v24, "User"

    .line 715
    .line 716
    const-string v25, "Othr"

    .line 717
    .line 718
    const-string v26, "Tot"

    .line 719
    .line 720
    const-string v27, "Fail"

    .line 721
    .line 722
    const-string v28, "Can"

    .line 723
    .line 724
    const-string v29, "Time"

    .line 725
    .line 726
    const-string v30, "Last Sync"

    .line 727
    .line 728
    const-string v31, "Backoff"

    .line 729
    .line 730
    filled-new-array/range {v16 .. v31}, [Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    const/4 v10, 0x0

    .line 735
    invoke-virtual {v8, v10, v10, v9}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 739
    .line 740
    .line 741
    move-result-object v9

    .line 742
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 743
    .line 744
    iget v11, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 745
    .line 746
    invoke-virtual {v10, v11}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    .line 747
    .line 748
    .line 749
    move-result-object v10

    .line 750
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 751
    .line 752
    .line 753
    new-instance v10, Lcom/android/server/content/SyncManager$12;

    .line 754
    .line 755
    const/4 v11, 0x0

    .line 756
    invoke-direct {v10, v11}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    .line 757
    .line 758
    .line 759
    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 760
    .line 761
    .line 762
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 767
    .line 768
    .line 769
    move-result v10

    .line 770
    if-eqz v10, :cond_1a

    .line 771
    .line 772
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v10

    .line 776
    check-cast v10, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 777
    .line 778
    iget-object v11, v10, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v11, Landroid/content/SyncAdapterType;

    .line 781
    .line 782
    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 783
    .line 784
    iget-object v15, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 785
    .line 786
    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    if-nez v11, :cond_15

    .line 793
    .line 794
    goto :goto_f

    .line 795
    :cond_15
    iget-object v11, v8, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 798
    .line 799
    .line 800
    move-result v11

    .line 801
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 802
    .line 803
    move-object/from16 v16, v5

    .line 804
    .line 805
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 806
    .line 807
    move/from16 v17, v6

    .line 808
    .line 809
    iget-object v6, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 810
    .line 811
    iget-object v10, v10, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v10, Landroid/content/SyncAdapterType;

    .line 814
    .line 815
    iget-object v10, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 816
    .line 817
    move-object/from16 v18, v9

    .line 818
    .line 819
    iget v9, v7, Landroid/accounts/AccountAndUser;->userId:I

    .line 820
    .line 821
    invoke-direct {v5, v6, v10, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 822
    .line 823
    .line 824
    iget-object v6, v15, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 825
    .line 826
    monitor-enter v6

    .line 827
    const/4 v9, 0x1

    .line 828
    const/4 v10, -0x1

    .line 829
    :try_start_3
    invoke-virtual {v15, v5, v10, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    iget v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 834
    .line 835
    invoke-virtual {v15, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    .line 836
    .line 837
    .line 838
    move-result-object v9

    .line 839
    new-instance v15, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 840
    .line 841
    invoke-direct {v15, v5}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    .line 842
    .line 843
    .line 844
    new-instance v5, Landroid/content/SyncStatusInfo;

    .line 845
    .line 846
    invoke-direct {v5, v9}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    .line 847
    .line 848
    .line 849
    invoke-static {v15, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 854
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 855
    .line 856
    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 857
    .line 858
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 861
    .line 862
    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 863
    .line 864
    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 872
    .line 873
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 874
    .line 875
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 876
    .line 877
    .line 878
    move-result v15

    .line 879
    const/16 v10, 0x32

    .line 880
    .line 881
    if-le v15, v10, :cond_16

    .line 882
    .line 883
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 884
    .line 885
    .line 886
    move-result v15

    .line 887
    sub-int/2addr v15, v10

    .line 888
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v9

    .line 892
    :cond_16
    iget v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 893
    .line 894
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    iget-boolean v15, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 899
    .line 900
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 901
    .line 902
    .line 903
    move-result-object v15

    .line 904
    filled-new-array {v9, v10, v15}, [Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v9

    .line 908
    const/4 v10, 0x0

    .line 909
    invoke-virtual {v8, v11, v10, v9}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 910
    .line 911
    .line 912
    new-instance v9, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;

    .line 913
    .line 914
    invoke-direct {v9, v4, v8}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 915
    .line 916
    .line 917
    const-string v10, "Total"

    .line 918
    .line 919
    iget-object v15, v5, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 920
    .line 921
    move-object/from16 v19, v4

    .line 922
    .line 923
    new-instance v4, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;

    .line 924
    .line 925
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 926
    .line 927
    .line 928
    move-object/from16 v20, v7

    .line 929
    .line 930
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 931
    .line 932
    .line 933
    move-result-object v7

    .line 934
    invoke-virtual {v9, v10, v15, v4, v7}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    const-string v4, "Today"

    .line 938
    .line 939
    iget-object v7, v5, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 940
    .line 941
    new-instance v10, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    .line 942
    .line 943
    invoke-direct {v10, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 944
    .line 945
    .line 946
    add-int/lit8 v15, v11, 0x1

    .line 947
    .line 948
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-virtual {v9, v4, v7, v10, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    const-string v1, "Yestr"

    .line 956
    .line 957
    iget-object v4, v5, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 958
    .line 959
    new-instance v7, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    .line 960
    .line 961
    invoke-direct {v7, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 962
    .line 963
    .line 964
    add-int/lit8 v10, v11, 0x2

    .line 965
    .line 966
    move-object/from16 v21, v3

    .line 967
    .line 968
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    invoke-virtual {v9, v1, v4, v7, v3}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    iget-wide v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 976
    .line 977
    cmp-long v1, v3, v12

    .line 978
    .line 979
    if-lez v1, :cond_17

    .line 980
    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    .line 982
    .line 983
    const-string v3, "D: "

    .line 984
    .line 985
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    iget-wide v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 989
    .line 990
    sub-long/2addr v3, v12

    .line 991
    const-wide/16 v22, 0x3e8

    .line 992
    .line 993
    div-long v3, v3, v22

    .line 994
    .line 995
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    const/16 v3, 0xf

    .line 1007
    .line 1008
    invoke-virtual {v8, v11, v3, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1009
    .line 1010
    .line 1011
    iget-wide v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 1012
    .line 1013
    cmp-long v3, v3, v12

    .line 1014
    .line 1015
    if-lez v3, :cond_17

    .line 1016
    .line 1017
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    const-string v4, "B: "

    .line 1020
    .line 1021
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    move-object v4, v2

    .line 1025
    iget-wide v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 1026
    .line 1027
    sub-long/2addr v1, v12

    .line 1028
    div-long v1, v1, v22

    .line 1029
    .line 1030
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    const/16 v2, 0xf

    .line 1042
    .line 1043
    invoke-virtual {v8, v15, v2, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    iget-wide v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 1047
    .line 1048
    div-long v6, v6, v22

    .line 1049
    .line 1050
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-virtual {v8, v10, v2, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_10

    .line 1062
    :cond_17
    move-object v4, v2

    .line 1063
    :goto_10
    iget-wide v1, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1064
    .line 1065
    const-wide/16 v6, 0x0

    .line 1066
    .line 1067
    cmp-long v1, v1, v6

    .line 1068
    .line 1069
    const/16 v2, 0xe

    .line 1070
    .line 1071
    if-eqz v1, :cond_18

    .line 1072
    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1079
    .line 1080
    iget v9, v5, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1081
    .line 1082
    aget-object v3, v3, v9

    .line 1083
    .line 1084
    const-string v9, " SUCCESS"

    .line 1085
    .line 1086
    invoke-static {v1, v3, v9}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v1

    .line 1090
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    invoke-virtual {v8, v11, v2, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1095
    .line 1096
    .line 1097
    iget-wide v6, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1098
    .line 1099
    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    invoke-virtual {v8, v15, v2, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1108
    .line 1109
    .line 1110
    move v11, v10

    .line 1111
    :cond_18
    iget-wide v6, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1112
    .line 1113
    const-wide/16 v9, 0x0

    .line 1114
    .line 1115
    cmp-long v1, v6, v9

    .line 1116
    .line 1117
    if-eqz v1, :cond_19

    .line 1118
    .line 1119
    add-int/lit8 v1, v11, 0x1

    .line 1120
    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1127
    .line 1128
    iget v7, v5, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1129
    .line 1130
    aget-object v6, v6, v7

    .line 1131
    .line 1132
    const-string v7, " FAILURE"

    .line 1133
    .line 1134
    invoke-static {v3, v6, v7}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    invoke-virtual {v8, v11, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1143
    .line 1144
    .line 1145
    const/4 v3, 0x2

    .line 1146
    add-int/2addr v11, v3

    .line 1147
    iget-wide v6, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1148
    .line 1149
    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    invoke-virtual {v8, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1158
    .line 1159
    .line 1160
    iget-object v1, v5, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1161
    .line 1162
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-virtual {v8, v11, v2, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    :cond_19
    move-object/from16 v1, p1

    .line 1170
    .line 1171
    move-object v2, v4

    .line 1172
    move-object/from16 v5, v16

    .line 1173
    .line 1174
    move/from16 v6, v17

    .line 1175
    .line 1176
    move-object/from16 v9, v18

    .line 1177
    .line 1178
    move-object/from16 v4, v19

    .line 1179
    .line 1180
    move-object/from16 v7, v20

    .line 1181
    .line 1182
    move-object/from16 v3, v21

    .line 1183
    .line 1184
    goto/16 :goto_f

    .line 1185
    .line 1186
    :catchall_1
    move-exception v0

    .line 1187
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1188
    throw v0

    .line 1189
    :cond_1a
    move-object/from16 v21, v3

    .line 1190
    .line 1191
    move-object/from16 v19, v4

    .line 1192
    .line 1193
    move-object/from16 v16, v5

    .line 1194
    .line 1195
    move/from16 v17, v6

    .line 1196
    .line 1197
    move-object v4, v2

    .line 1198
    iget v1, v8, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 1199
    .line 1200
    new-array v2, v1, [Ljava/lang/String;

    .line 1201
    .line 1202
    const/4 v3, 0x0

    .line 1203
    const/4 v5, 0x0

    .line 1204
    :goto_11
    if-ge v3, v1, :cond_1d

    .line 1205
    .line 1206
    iget-object v6, v8, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 1207
    .line 1208
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v6

    .line 1212
    const/4 v7, 0x0

    .line 1213
    :cond_1b
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v9

    .line 1217
    if-eqz v9, :cond_1c

    .line 1218
    .line 1219
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v9

    .line 1223
    check-cast v9, [Ljava/lang/Object;

    .line 1224
    .line 1225
    aget-object v9, v9, v3

    .line 1226
    .line 1227
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v9

    .line 1231
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1232
    .line 1233
    .line 1234
    move-result v9

    .line 1235
    if-le v9, v7, :cond_1b

    .line 1236
    .line 1237
    move v7, v9

    .line 1238
    goto :goto_12

    .line 1239
    :cond_1c
    add-int/2addr v5, v7

    .line 1240
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v6

    .line 1244
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v6

    .line 1248
    const-string v7, "%%-%ds"

    .line 1249
    .line 1250
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v6

    .line 1254
    aput-object v6, v2, v3

    .line 1255
    .line 1256
    add-int/lit8 v3, v3, 0x1

    .line 1257
    .line 1258
    goto :goto_11

    .line 1259
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    .line 1260
    .line 1261
    const-string v3, "%s"

    .line 1262
    .line 1263
    aput-object v3, v2, v1

    .line 1264
    .line 1265
    iget-object v3, v8, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 1266
    .line 1267
    const/4 v6, 0x0

    .line 1268
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    check-cast v3, [Ljava/lang/Object;

    .line 1273
    .line 1274
    invoke-static {v4, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    .line 1276
    .line 1277
    const/4 v3, 0x2

    .line 1278
    mul-int/2addr v1, v3

    .line 1279
    add-int/2addr v1, v5

    .line 1280
    move v5, v6

    .line 1281
    :goto_13
    if-ge v5, v1, :cond_1e

    .line 1282
    .line 1283
    const-string v7, "-"

    .line 1284
    .line 1285
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    add-int/lit8 v5, v5, 0x1

    .line 1289
    .line 1290
    goto :goto_13

    .line 1291
    :cond_1e
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 1292
    .line 1293
    .line 1294
    iget-object v1, v8, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 1295
    .line 1296
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1297
    .line 1298
    .line 1299
    move-result v1

    .line 1300
    const/4 v5, 0x1

    .line 1301
    :goto_14
    if-ge v5, v1, :cond_1f

    .line 1302
    .line 1303
    iget-object v7, v8, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 1304
    .line 1305
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v7

    .line 1309
    check-cast v7, [Ljava/lang/Object;

    .line 1310
    .line 1311
    invoke-static {v4, v2, v7}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    .line 1313
    .line 1314
    add-int/lit8 v5, v5, 0x1

    .line 1315
    .line 1316
    goto :goto_14

    .line 1317
    :cond_1f
    add-int/lit8 v14, v14, 0x1

    .line 1318
    .line 1319
    move-object/from16 v1, p1

    .line 1320
    .line 1321
    move-object v2, v4

    .line 1322
    move-object/from16 v5, v16

    .line 1323
    .line 1324
    move/from16 v6, v17

    .line 1325
    .line 1326
    move-object/from16 v4, v19

    .line 1327
    .line 1328
    move-object/from16 v3, v21

    .line 1329
    .line 1330
    goto/16 :goto_d

    .line 1331
    .line 1332
    :catchall_2
    move-exception v0

    .line 1333
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1334
    throw v0

    .line 1335
    :cond_20
    move-object v4, v2

    .line 1336
    move-object/from16 v21, v3

    .line 1337
    .line 1338
    const/4 v6, 0x0

    .line 1339
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 1343
    .line 1344
    .line 1345
    const-string v1, "Per Adapter History"

    .line 1346
    .line 1347
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    const-string v1, "(SERVER is now split up to FEED and OTHER)"

    .line 1351
    .line 1352
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    move v14, v6

    .line 1356
    :goto_15
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 1357
    .line 1358
    .line 1359
    move-result v1

    .line 1360
    if-ge v14, v1, :cond_24

    .line 1361
    .line 1362
    move-object/from16 v1, v21

    .line 1363
    .line 1364
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    check-cast v2, Landroid/util/Pair;

    .line 1369
    .line 1370
    const-string v3, "  "

    .line 1371
    .line 1372
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1376
    .line 1377
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1378
    .line 1379
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1380
    .line 1381
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1382
    .line 1383
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    const/16 v3, 0x2f

    .line 1387
    .line 1388
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1389
    .line 1390
    .line 1391
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1392
    .line 1393
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1394
    .line 1395
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1396
    .line 1397
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1398
    .line 1399
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    const-string v3, " u"

    .line 1403
    .line 1404
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1408
    .line 1409
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1410
    .line 1411
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1412
    .line 1413
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1414
    .line 1415
    .line 1416
    const-string v3, " ["

    .line 1417
    .line 1418
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1422
    .line 1423
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1424
    .line 1425
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1426
    .line 1427
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    const-string v3, "]"

    .line 1431
    .line 1432
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 1436
    .line 1437
    .line 1438
    const-string v3, "    Per source last syncs:"

    .line 1439
    .line 1440
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    move v3, v6

    .line 1444
    :goto_16
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1445
    .line 1446
    const/4 v7, 0x6

    .line 1447
    if-ge v3, v7, :cond_21

    .line 1448
    .line 1449
    const-string v7, "      "

    .line 1450
    .line 1451
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    const-string v7, "%8s"

    .line 1455
    .line 1456
    aget-object v5, v5, v3

    .line 1457
    .line 1458
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v5

    .line 1462
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v5

    .line 1466
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    .line 1468
    .line 1469
    const-string v5, "  Success: "

    .line 1470
    .line 1471
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1475
    .line 1476
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1477
    .line 1478
    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 1479
    .line 1480
    aget-wide v7, v5, v3

    .line 1481
    .line 1482
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v5

    .line 1486
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    const-string v5, "  Failure: "

    .line 1490
    .line 1491
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1495
    .line 1496
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1497
    .line 1498
    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 1499
    .line 1500
    aget-wide v7, v5, v3

    .line 1501
    .line 1502
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v5

    .line 1506
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    add-int/lit8 v3, v3, 0x1

    .line 1510
    .line 1511
    goto :goto_16

    .line 1512
    :cond_21
    const-string v3, "    Last syncs:"

    .line 1513
    .line 1514
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    move v3, v6

    .line 1518
    :goto_17
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1519
    .line 1520
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1521
    .line 1522
    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    .line 1523
    .line 1524
    .line 1525
    move-result v5

    .line 1526
    if-ge v3, v5, :cond_22

    .line 1527
    .line 1528
    const-string v5, "      "

    .line 1529
    .line 1530
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    .line 1532
    .line 1533
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1536
    .line 1537
    invoke-virtual {v5, v3}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    .line 1538
    .line 1539
    .line 1540
    move-result-wide v7

    .line 1541
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v5

    .line 1545
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    const/16 v5, 0x20

    .line 1549
    .line 1550
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1551
    .line 1552
    .line 1553
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1554
    .line 1555
    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1556
    .line 1557
    invoke-virtual {v5, v3}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v5

    .line 1561
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 1565
    .line 1566
    .line 1567
    add-int/lit8 v3, v3, 0x1

    .line 1568
    .line 1569
    goto :goto_17

    .line 1570
    :cond_22
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1571
    .line 1572
    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1573
    .line 1574
    invoke-virtual {v2}, Landroid/content/SyncStatusInfo;->getEventCount()I

    .line 1575
    .line 1576
    .line 1577
    move-result v2

    .line 1578
    if-nez v2, :cond_23

    .line 1579
    .line 1580
    const-string v2, "      N/A"

    .line 1581
    .line 1582
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    .line 1584
    .line 1585
    :cond_23
    add-int/lit8 v14, v14, 0x1

    .line 1586
    .line 1587
    move-object/from16 v21, v1

    .line 1588
    .line 1589
    goto/16 :goto_15

    .line 1590
    .line 1591
    :cond_24
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1592
    .line 1593
    const-string v2, ""

    .line 1594
    .line 1595
    iget-object v3, v1, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 1596
    .line 1597
    monitor-enter v3

    .line 1598
    move-object/from16 v5, p1

    .line 1599
    .line 1600
    :try_start_6
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    const-string v6, "SyncManager Config:"

    .line 1604
    .line 1605
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1609
    .line 1610
    .line 1611
    const-string v6, "  mInitialSyncRetryTimeInSeconds="

    .line 1612
    .line 1613
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    iget v6, v1, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 1617
    .line 1618
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    const-string v6, "  mRetryTimeIncreaseFactor="

    .line 1625
    .line 1626
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    iget v6, v1, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 1630
    .line 1631
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(F)V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    .line 1636
    .line 1637
    const-string v6, "  mMaxSyncRetryTimeInSeconds="

    .line 1638
    .line 1639
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    iget v6, v1, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 1643
    .line 1644
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    const-string v6, "  mMaxRetriesWithAppStandbyExemption="

    .line 1651
    .line 1652
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    iget v6, v1, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 1656
    .line 1657
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    const-string v2, "  mKeyExemptionTempWhitelistDurationInSeconds="

    .line 1664
    .line 1665
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    iget v1, v1, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 1669
    .line 1670
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1671
    .line 1672
    .line 1673
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1674
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1675
    .line 1676
    .line 1677
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 1678
    .line 1679
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    if-eqz v1, :cond_26

    .line 1684
    .line 1685
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v1

    .line 1689
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1690
    .line 1691
    .line 1692
    move-result v2

    .line 1693
    if-eqz v2, :cond_26

    .line 1694
    .line 1695
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v2

    .line 1699
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1700
    .line 1701
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    const-string v6, "Sync adapters for "

    .line 1704
    .line 1705
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1709
    .line 1710
    .line 1711
    const-string v6, ":"

    .line 1712
    .line 1713
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v3

    .line 1720
    invoke-virtual {v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1724
    .line 1725
    .line 1726
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1727
    .line 1728
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1729
    .line 1730
    invoke-virtual {v3, v2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v2

    .line 1734
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v2

    .line 1738
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v3

    .line 1742
    if-eqz v3, :cond_25

    .line 1743
    .line 1744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v3

    .line 1748
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1749
    .line 1750
    invoke-virtual {v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1751
    .line 1752
    .line 1753
    goto :goto_19

    .line 1754
    :cond_25
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1758
    .line 1759
    .line 1760
    goto :goto_18

    .line 1761
    :cond_26
    if-eqz p2, :cond_27

    .line 1762
    .line 1763
    const-string v1, "Detailed Sync History"

    .line 1764
    .line 1765
    invoke-virtual {v4, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1769
    .line 1770
    invoke-virtual {v0, v5}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 1771
    .line 1772
    .line 1773
    :cond_27
    return-void

    .line 1774
    :catchall_3
    move-exception v0

    .line 1775
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1776
    throw v0

    .line 1777
    :goto_1a
    monitor-exit v10

    .line 1778
    throw v0
.end method

.method public final dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_0
    if-ge v7, v4, :cond_0

    .line 23
    .line 24
    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 31
    .line 32
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_13

    .line 40
    .line 41
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_16

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    const-wide/16 v12, 0x0

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    if-eqz v16, :cond_6

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v16

    .line 76
    move-object/from16 v6, v16

    .line 77
    .line 78
    check-cast v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 79
    .line 80
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 81
    .line 82
    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 83
    .line 84
    invoke-virtual {v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    iget-object v9, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 91
    .line 92
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    move-object/from16 v17, v7

    .line 100
    .line 101
    iget-object v7, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 102
    .line 103
    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 104
    .line 105
    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v7, "/"

    .line 111
    .line 112
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v7, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 116
    .line 117
    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 118
    .line 119
    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v7, " u"

    .line 125
    .line 126
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v7, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 130
    .line 131
    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 132
    .line 133
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_2

    .line 141
    :cond_1
    move-object/from16 v17, v7

    .line 142
    .line 143
    const-string v9, "Unknown"

    .line 144
    .line 145
    const-string v3, "Unknown"

    .line 146
    .line 147
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-le v7, v14, :cond_2

    .line 152
    .line 153
    move v14, v7

    .line 154
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-le v7, v15, :cond_3

    .line 159
    .line 160
    move v15, v7

    .line 161
    :cond_3
    iget-wide v6, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 162
    .line 163
    add-long/2addr v10, v6

    .line 164
    const-wide/16 v18, 0x1

    .line 165
    .line 166
    add-long v12, v12, v18

    .line 167
    .line 168
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 173
    .line 174
    if-nez v8, :cond_4

    .line 175
    .line 176
    new-instance v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    move-wide/from16 v18, v10

    .line 182
    .line 183
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    iput-object v10, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 188
    .line 189
    iput-object v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    move-wide/from16 v18, v10

    .line 196
    .line 197
    :goto_3
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 198
    .line 199
    add-long/2addr v9, v6

    .line 200
    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 201
    .line 202
    iget v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 203
    .line 204
    const/4 v10, 0x1

    .line 205
    add-int/2addr v9, v10

    .line 206
    iput v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 207
    .line 208
    iget-object v8, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    check-cast v9, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 215
    .line 216
    if-nez v9, :cond_5

    .line 217
    .line 218
    new-instance v9, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 219
    .line 220
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v3, v9, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    :cond_5
    iget-wide v10, v9, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 229
    .line 230
    add-long/2addr v10, v6

    .line 231
    iput-wide v10, v9, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 232
    .line 233
    iget v3, v9, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 234
    .line 235
    const/4 v6, 0x1

    .line 236
    add-int/2addr v3, v6

    .line 237
    iput v3, v9, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 238
    .line 239
    move-object/from16 v7, v17

    .line 240
    .line 241
    move-wide/from16 v10, v18

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_6
    const-wide/16 v6, 0x0

    .line 246
    .line 247
    cmp-long v3, v10, v6

    .line 248
    .line 249
    const-wide/16 v6, 0x3e8

    .line 250
    .line 251
    if-lez v3, :cond_8

    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 254
    .line 255
    .line 256
    const-string v3, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    .line 257
    .line 258
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    div-long v17, v10, v6

    .line 263
    .line 264
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v1, v3, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 273
    .line 274
    .line 275
    new-instance v3, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Lcom/android/server/content/SyncManager$12;

    .line 285
    .line 286
    const/4 v8, 0x1

    .line 287
    invoke-direct {v2, v8}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v2, v15, 0x3

    .line 294
    .line 295
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    add-int/lit8 v8, v2, 0x1b

    .line 300
    .line 301
    new-array v8, v8, [C

    .line 302
    .line 303
    const/16 v9, 0x2d

    .line 304
    .line 305
    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 306
    .line 307
    .line 308
    new-instance v9, Ljava/lang/String;

    .line 309
    .line 310
    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    .line 311
    .line 312
    .line 313
    const-string v8, "  %%-%ds: %%-9s  %%-11s\n"

    .line 314
    .line 315
    add-int/lit8 v17, v2, 0x2

    .line 316
    .line 317
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v17

    .line 321
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    const-string v7, "    %%-%ds:   %%-9s  %%-11s\n"

    .line 330
    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_8

    .line 355
    .line 356
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    check-cast v7, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 361
    .line 362
    iget-object v8, v7, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 363
    .line 364
    move-object/from16 v20, v3

    .line 365
    .line 366
    move/from16 v17, v4

    .line 367
    .line 368
    iget-wide v3, v7, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 369
    .line 370
    move-object/from16 v21, v5

    .line 371
    .line 372
    iget v5, v7, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 373
    .line 374
    const-string v0, "%ds/%d%%"

    .line 375
    .line 376
    const-wide/16 v18, 0x3e8

    .line 377
    .line 378
    div-long v22, v3, v18

    .line 379
    .line 380
    move/from16 v24, v14

    .line 381
    .line 382
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    const-wide/16 v22, 0x64

    .line 387
    .line 388
    mul-long v3, v3, v22

    .line 389
    .line 390
    div-long/2addr v3, v10

    .line 391
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const-string v3, "%d/%d%%"

    .line 404
    .line 405
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    mul-int/lit8 v5, v5, 0x64

    .line 410
    .line 411
    move/from16 v25, v15

    .line 412
    .line 413
    int-to-long v14, v5

    .line 414
    div-long/2addr v14, v12

    .line 415
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    filled-new-array {v8, v3, v0}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 432
    .line 433
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    .line 435
    .line 436
    iget-object v3, v7, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 437
    .line 438
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .line 444
    .line 445
    new-instance v3, Lcom/android/server/content/SyncManager$12;

    .line 446
    .line 447
    const/4 v4, 0x2

    .line 448
    invoke-direct {v3, v4}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_7

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 469
    .line 470
    iget-wide v4, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 471
    .line 472
    iget v7, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 473
    .line 474
    const-string v8, "%ds/%d%%"

    .line 475
    .line 476
    const-wide/16 v14, 0x3e8

    .line 477
    .line 478
    div-long v26, v4, v14

    .line 479
    .line 480
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v14

    .line 484
    mul-long v4, v4, v22

    .line 485
    .line 486
    div-long/2addr v4, v10

    .line 487
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    const-string v5, "%d/%d%%"

    .line 500
    .line 501
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    mul-int/lit8 v7, v7, 0x64

    .line 506
    .line 507
    int-to-long v14, v7

    .line 508
    div-long/2addr v14, v12

    .line 509
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    iget-object v3, v3, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 522
    .line 523
    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 528
    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_7
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    move-object/from16 v0, p0

    .line 535
    .line 536
    move/from16 v4, v17

    .line 537
    .line 538
    move-object/from16 v3, v20

    .line 539
    .line 540
    move-object/from16 v5, v21

    .line 541
    .line 542
    move/from16 v14, v24

    .line 543
    .line 544
    move/from16 v15, v25

    .line 545
    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :cond_8
    move/from16 v17, v4

    .line 549
    .line 550
    move-object/from16 v21, v5

    .line 551
    .line 552
    move/from16 v24, v14

    .line 553
    .line 554
    move/from16 v25, v15

    .line 555
    .line 556
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 557
    .line 558
    .line 559
    const-string v0, "Recent Sync History"

    .line 560
    .line 561
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    .line 565
    .line 566
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    const-string v2, "  %-"

    .line 572
    .line 573
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    move/from16 v15, v25

    .line 577
    .line 578
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string/jumbo v2, "s  %-"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    move/from16 v14, v24

    .line 588
    .line 589
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string/jumbo v2, "s %s\n"

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    move-object/from16 v3, p0

    .line 607
    .line 608
    iget-object v4, v3, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 609
    .line 610
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    move/from16 v5, v17

    .line 615
    .line 616
    const/4 v6, 0x0

    .line 617
    :goto_6
    if-ge v6, v5, :cond_11

    .line 618
    .line 619
    move-object/from16 v7, v21

    .line 620
    .line 621
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v8

    .line 625
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 626
    .line 627
    iget-object v9, v3, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 628
    .line 629
    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 630
    .line 631
    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 632
    .line 633
    .line 634
    move-result-object v9

    .line 635
    if-eqz v9, :cond_9

    .line 636
    .line 637
    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 638
    .line 639
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 640
    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 647
    .line 648
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 649
    .line 650
    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 651
    .line 652
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string v12, "/"

    .line 656
    .line 657
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 661
    .line 662
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 663
    .line 664
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string v12, " u"

    .line 670
    .line 671
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 675
    .line 676
    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 677
    .line 678
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    goto :goto_7

    .line 686
    :cond_9
    const-string v10, "Unknown"

    .line 687
    .line 688
    const-string v9, "Unknown"

    .line 689
    .line 690
    :goto_7
    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 691
    .line 692
    iget-wide v13, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 693
    .line 694
    const-string v15, "/"

    .line 695
    .line 696
    invoke-static {v10, v15, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v15

    .line 700
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v17

    .line 704
    check-cast v17, Ljava/lang/Long;

    .line 705
    .line 706
    if-nez v17, :cond_a

    .line 707
    .line 708
    const-string v17, ""

    .line 709
    .line 710
    move-object/from16 v20, v0

    .line 711
    .line 712
    move/from16 v26, v5

    .line 713
    .line 714
    move-object/from16 v19, v7

    .line 715
    .line 716
    move-object/from16 v0, v17

    .line 717
    .line 718
    const-wide/16 v17, 0x3e8

    .line 719
    .line 720
    goto :goto_8

    .line 721
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    .line 722
    .line 723
    .line 724
    move-result-wide v20

    .line 725
    sub-long v20, v20, v13

    .line 726
    .line 727
    const-wide/16 v17, 0x3e8

    .line 728
    .line 729
    div-long v20, v20, v17

    .line 730
    .line 731
    const-wide/16 v22, 0x3c

    .line 732
    .line 733
    cmp-long v19, v20, v22

    .line 734
    .line 735
    if-gez v19, :cond_b

    .line 736
    .line 737
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v19

    .line 741
    move-object/from16 v20, v0

    .line 742
    .line 743
    move/from16 v26, v5

    .line 744
    .line 745
    move-object/from16 v0, v19

    .line 746
    .line 747
    move-object/from16 v19, v7

    .line 748
    .line 749
    goto :goto_8

    .line 750
    :cond_b
    const-wide/16 v24, 0xe10

    .line 751
    .line 752
    cmp-long v19, v20, v24

    .line 753
    .line 754
    if-gez v19, :cond_c

    .line 755
    .line 756
    const-string v3, "%02d:%02d"

    .line 757
    .line 758
    div-long v24, v20, v22

    .line 759
    .line 760
    move-object/from16 v19, v7

    .line 761
    .line 762
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 763
    .line 764
    .line 765
    move-result-object v7

    .line 766
    rem-long v20, v20, v22

    .line 767
    .line 768
    move/from16 v26, v5

    .line 769
    .line 770
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    move-object/from16 v20, v0

    .line 783
    .line 784
    move-object v0, v3

    .line 785
    goto :goto_8

    .line 786
    :cond_c
    move/from16 v26, v5

    .line 787
    .line 788
    move-object/from16 v19, v7

    .line 789
    .line 790
    rem-long v27, v20, v24

    .line 791
    .line 792
    const-string v3, "%02d:%02d:%02d"

    .line 793
    .line 794
    div-long v20, v20, v24

    .line 795
    .line 796
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    div-long v20, v27, v22

    .line 801
    .line 802
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    rem-long v27, v27, v22

    .line 807
    .line 808
    move-object/from16 v20, v0

    .line 809
    .line 810
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    filled-new-array {v5, v7, v0}, [Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    :goto_8
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    const-string v3, "  #%-3d: %s %8s  %5.1fs  %8s"

    .line 830
    .line 831
    add-int/lit8 v6, v6, 0x1

    .line 832
    .line 833
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v5

    .line 837
    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v7

    .line 841
    sget-object v13, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 842
    .line 843
    iget v14, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 844
    .line 845
    aget-object v13, v13, v14

    .line 846
    .line 847
    long-to-float v11, v11

    .line 848
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 849
    .line 850
    div-float/2addr v11, v12

    .line 851
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 852
    .line 853
    .line 854
    move-result-object v11

    .line 855
    filled-new-array {v5, v7, v13, v11, v0}, [Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 860
    .line 861
    .line 862
    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 863
    .line 864
    invoke-static {v4, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    filled-new-array {v9, v10, v0}, [Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    move-object/from16 v3, v20

    .line 873
    .line 874
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 875
    .line 876
    .line 877
    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 878
    .line 879
    const/4 v5, 0x1

    .line 880
    if-ne v0, v5, :cond_d

    .line 881
    .line 882
    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 883
    .line 884
    const-wide/16 v11, 0x0

    .line 885
    .line 886
    cmp-long v7, v9, v11

    .line 887
    .line 888
    if-nez v7, :cond_e

    .line 889
    .line 890
    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 891
    .line 892
    cmp-long v7, v9, v11

    .line 893
    .line 894
    if-eqz v7, :cond_f

    .line 895
    .line 896
    goto :goto_9

    .line 897
    :cond_d
    const-wide/16 v11, 0x0

    .line 898
    .line 899
    :cond_e
    :goto_9
    const-string v7, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    .line 900
    .line 901
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 906
    .line 907
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 908
    .line 909
    .line 910
    move-result-object v9

    .line 911
    iget-wide v13, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 912
    .line 913
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 914
    .line 915
    .line 916
    move-result-object v10

    .line 917
    filled-new-array {v0, v9, v10}, [Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v1, v7, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 922
    .line 923
    .line 924
    :cond_f
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 925
    .line 926
    if-eqz v0, :cond_10

    .line 927
    .line 928
    const-string/jumbo v7, "success"

    .line 929
    .line 930
    .line 931
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-nez v0, :cond_10

    .line 936
    .line 937
    const-string v0, "    mesg=%s\n"

    .line 938
    .line 939
    iget-object v7, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 940
    .line 941
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v7

    .line 945
    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 946
    .line 947
    .line 948
    :cond_10
    move-object v0, v3

    .line 949
    move-object/from16 v21, v19

    .line 950
    .line 951
    move/from16 v5, v26

    .line 952
    .line 953
    move-object/from16 v3, p0

    .line 954
    .line 955
    goto/16 :goto_6

    .line 956
    .line 957
    :cond_11
    move-object v3, v0

    .line 958
    move/from16 v26, v5

    .line 959
    .line 960
    move-object/from16 v19, v21

    .line 961
    .line 962
    const/4 v5, 0x1

    .line 963
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 964
    .line 965
    .line 966
    const-string v0, "Recent Sync History Extras"

    .line 967
    .line 968
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    .line 972
    .line 973
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    move/from16 v0, v26

    .line 977
    .line 978
    const/4 v2, 0x0

    .line 979
    :goto_a
    if-ge v2, v0, :cond_15

    .line 980
    .line 981
    move-object/from16 v4, v19

    .line 982
    .line 983
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v6

    .line 987
    check-cast v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 988
    .line 989
    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 990
    .line 991
    if-eqz v7, :cond_12

    .line 992
    .line 993
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    .line 994
    .line 995
    .line 996
    move-result v8

    .line 997
    if-nez v8, :cond_13

    .line 998
    .line 999
    :cond_12
    move-object/from16 v8, p0

    .line 1000
    .line 1001
    goto :goto_c

    .line 1002
    :cond_13
    move-object/from16 v8, p0

    .line 1003
    .line 1004
    iget-object v9, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1005
    .line 1006
    iget v10, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1007
    .line 1008
    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v9

    .line 1012
    if-eqz v9, :cond_14

    .line 1013
    .line 1014
    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1015
    .line 1016
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1017
    .line 1018
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .line 1022
    .line 1023
    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1024
    .line 1025
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1026
    .line 1027
    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1028
    .line 1029
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    const-string v12, "/"

    .line 1033
    .line 1034
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1038
    .line 1039
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1040
    .line 1041
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    const-string v12, " u"

    .line 1047
    .line 1048
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1052
    .line 1053
    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1054
    .line 1055
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v9

    .line 1062
    goto :goto_b

    .line 1063
    :cond_14
    const-string v10, "Unknown"

    .line 1064
    .line 1065
    const-string v9, "Unknown"

    .line 1066
    .line 1067
    :goto_b
    iget-wide v11, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1068
    .line 1069
    const-string v13, "  #%-3d: %s %8s "

    .line 1070
    .line 1071
    add-int/lit8 v14, v2, 0x1

    .line 1072
    .line 1073
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v14

    .line 1077
    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v11

    .line 1081
    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 1082
    .line 1083
    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1084
    .line 1085
    aget-object v6, v12, v6

    .line 1086
    .line 1087
    filled-new-array {v14, v11, v6}, [Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v6

    .line 1091
    invoke-virtual {v1, v13, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1092
    .line 1093
    .line 1094
    filled-new-array {v9, v10, v7}, [Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v6

    .line 1098
    invoke-virtual {v1, v3, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1099
    .line 1100
    .line 1101
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 1102
    .line 1103
    move-object/from16 v19, v4

    .line 1104
    .line 1105
    goto :goto_a

    .line 1106
    :cond_15
    move-object/from16 v8, p0

    .line 1107
    .line 1108
    goto :goto_d

    .line 1109
    :cond_16
    move-object v8, v0

    .line 1110
    const/4 v5, 0x1

    .line 1111
    :goto_d
    iget-object v0, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1112
    .line 1113
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 1114
    .line 1115
    monitor-enter v2

    .line 1116
    :try_start_1
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1117
    .line 1118
    array-length v3, v0

    .line 1119
    new-array v4, v3, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1120
    .line 1121
    const/4 v6, 0x0

    .line 1122
    invoke-static {v0, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1123
    .line 1124
    .line 1125
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1126
    aget-object v0, v4, v6

    .line 1127
    .line 1128
    if-eqz v0, :cond_1f

    .line 1129
    .line 1130
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1131
    .line 1132
    .line 1133
    const-string v0, "Sync Statistics"

    .line 1134
    .line 1135
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    const-string v0, "  Today:  "

    .line 1139
    .line 1140
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    aget-object v0, v4, v6

    .line 1144
    .line 1145
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 1146
    .line 1147
    .line 1148
    aget-object v0, v4, v6

    .line 1149
    .line 1150
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1151
    .line 1152
    :goto_e
    const/4 v2, 0x6

    .line 1153
    if-gt v5, v2, :cond_19

    .line 1154
    .line 1155
    if-ge v5, v3, :cond_19

    .line 1156
    .line 1157
    aget-object v6, v4, v5

    .line 1158
    .line 1159
    if-nez v6, :cond_17

    .line 1160
    .line 1161
    goto :goto_f

    .line 1162
    :cond_17
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1163
    .line 1164
    sub-int v7, v0, v7

    .line 1165
    .line 1166
    if-le v7, v2, :cond_18

    .line 1167
    .line 1168
    goto :goto_f

    .line 1169
    :cond_18
    const-string v2, "  Day-"

    .line 1170
    .line 1171
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1175
    .line 1176
    .line 1177
    const-string v2, ":  "

    .line 1178
    .line 1179
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v1, v6}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 1183
    .line 1184
    .line 1185
    add-int/lit8 v5, v5, 0x1

    .line 1186
    .line 1187
    goto :goto_e

    .line 1188
    :cond_19
    :goto_f
    move v6, v0

    .line 1189
    :cond_1a
    :goto_10
    if-ge v5, v3, :cond_1f

    .line 1190
    .line 1191
    add-int/lit8 v6, v6, -0x7

    .line 1192
    .line 1193
    const/4 v7, 0x0

    .line 1194
    :goto_11
    if-ge v5, v3, :cond_1e

    .line 1195
    .line 1196
    aget-object v8, v4, v5

    .line 1197
    .line 1198
    if-nez v8, :cond_1b

    .line 1199
    .line 1200
    move v5, v3

    .line 1201
    goto :goto_12

    .line 1202
    :cond_1b
    iget v9, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1203
    .line 1204
    sub-int v9, v6, v9

    .line 1205
    .line 1206
    if-le v9, v2, :cond_1c

    .line 1207
    .line 1208
    goto :goto_12

    .line 1209
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 1210
    .line 1211
    if-nez v7, :cond_1d

    .line 1212
    .line 1213
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1214
    .line 1215
    invoke-direct {v7, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1216
    .line 1217
    .line 1218
    :cond_1d
    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1219
    .line 1220
    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1221
    .line 1222
    add-int/2addr v9, v10

    .line 1223
    iput v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1224
    .line 1225
    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1226
    .line 1227
    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1228
    .line 1229
    add-long/2addr v9, v11

    .line 1230
    iput-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1231
    .line 1232
    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1233
    .line 1234
    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1235
    .line 1236
    add-int/2addr v9, v10

    .line 1237
    iput v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1238
    .line 1239
    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1240
    .line 1241
    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1242
    .line 1243
    add-long/2addr v9, v11

    .line 1244
    iput-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1245
    .line 1246
    goto :goto_11

    .line 1247
    :cond_1e
    :goto_12
    if-eqz v7, :cond_1a

    .line 1248
    .line 1249
    const-string v8, "  Week-"

    .line 1250
    .line 1251
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    sub-int v8, v0, v6

    .line 1255
    .line 1256
    div-int/lit8 v8, v8, 0x7

    .line 1257
    .line 1258
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1259
    .line 1260
    .line 1261
    const-string v8, ": "

    .line 1262
    .line 1263
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_10

    .line 1270
    :cond_1f
    return-void

    .line 1271
    :catchall_1
    move-exception v0

    .line 1272
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1273
    throw v0

    .line 1274
    :goto_13
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1275
    throw v0
.end method

.method public getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/accounts/AccountManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/accounts/AccountManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getAllPendingSyncs()Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/app/job/JobInfo;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v3, "SyncManager"

    .line 43
    .line 44
    const-string v4, "Non-sync job inside of SyncManager\'s namespace"

    .line 45
    .line 46
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v1
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v1, "connectivity"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v0
.end method

.method public final getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 27
    .line 28
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    new-instance v3, Landroid/content/PeriodicSync;

    .line 41
    .line 42
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 43
    .line 44
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v7, Landroid/os/Bundle;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-wide v8, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 54
    .line 55
    const-wide/16 v10, 0x3e8

    .line 56
    .line 57
    div-long/2addr v8, v10

    .line 58
    iget-wide v1, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 59
    .line 60
    div-long v10, v1, v10

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    invoke-direct/range {v4 .. v11}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v0
.end method

.method public final getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 31
    .line 32
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/content/SyncAdapterType;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    invoke-virtual {v5, p1, p2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Landroid/content/SyncAdapterType;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    new-array p0, p0, [Landroid/content/SyncAdapterType;

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, [Landroid/content/SyncAdapterType;

    .line 72
    .line 73
    return-object p0
.end method

.method public final isDeviceProvisioned()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "device_provisioned"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_0
    return v1
.end method

.method public final isPackageStopped(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p2, p1}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    const-string p0, "Couldn\'t determine stopped state for unknown package: "

    .line 23
    .line 24
    const-string p1, "SyncManager"

    .line 25
    .line 26
    invoke-static {p0, p2, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final migrateSyncJobNamespaceIfNeeded()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-class v2, Landroid/app/job/JobScheduler;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 23
    .line 24
    const-wide/32 v2, 0x927c0

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    sub-int/2addr v6, v5

    .line 40
    move v7, v5

    .line 41
    :goto_0
    if-ltz v6, :cond_2

    .line 42
    .line 43
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Landroid/app/job/JobInfo;

    .line 48
    .line 49
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-static {v9}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 60
    .line 61
    iget-object v10, v9, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v11, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 64
    .line 65
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 66
    .line 67
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v7, v8, v10, v11, v9}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-virtual {v1, v7}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 79
    .line 80
    .line 81
    move v7, v4

    .line 82
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 86
    .line 87
    iget-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 88
    .line 89
    if-ne v1, v7, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iput-boolean v7, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 95
    .line 96
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getNamespace()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledOwnJobs(Ljava/lang/String;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    sub-int/2addr v1, v5

    .line 122
    move v6, v5

    .line 123
    :goto_2
    if-ltz v1, :cond_6

    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    check-cast v7, Landroid/app/job/JobInfo;

    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 142
    .line 143
    iget-object v9, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 146
    .line 147
    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v6, v7, v9, v10, v8}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move v6, v4

    .line 157
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 161
    .line 162
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 163
    .line 164
    if-ne v0, v6, :cond_7

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    iput-boolean v6, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 170
    .line 171
    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    .line 173
    .line 174
    :goto_3
    return-void
.end method

.method public final postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 7
    .line 8
    const/16 p1, 0xc

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "rescheduleSyncs() ep="

    .line 2
    .line 3
    .line 4
    const-string v1, " why="

    .line 5
    .line 6
    filled-new-array {v0, p1, v1, p2}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 37
    .line 38
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v2, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p0, 0x2

    .line 62
    const-string p2, "SyncManager"

    .line 63
    .line 64
    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "Rescheduled "

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, " syncs for "

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .locals 14

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 1
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v6, p2

    move-object/from16 v2, p4

    move/from16 v15, p6

    move-wide/from16 v13, p7

    if-nez p5, :cond_0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p5

    .line 3
    :goto_0
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    .line 4
    const-string v1, "SyncManager"

    const/4 v11, 0x2

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v1, "scheduleSync: account="

    const-string v3, " u"

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " authority="

    const-string v7, " reason="

    .line 7
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v16, " extras="

    move-object v0, v9

    move-object/from16 v9, v16

    const-string v16, " cuid="

    move/from16 v23, v11

    move-object/from16 v11, v16

    .line 8
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 p5, v12

    move-object/from16 v12, v16

    const-string v16, " cpid="

    move-object/from16 v13, v16

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v16, " cpkg="

    move-object/from16 v15, v16

    const-string v17, " mdm="

    .line 9
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, " ciar="

    .line 10
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v21, " sef="

    .line 11
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move-object/from16 v16, p13

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    goto :goto_2

    :cond_1
    move/from16 v23, v11

    move-object/from16 p5, v12

    goto :goto_1

    .line 13
    :goto_2
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v13, -0x1

    move-object/from16 v2, p1

    if-eqz v2, :cond_5

    move/from16 v12, p2

    if-eq v12, v13, :cond_2

    .line 14
    :try_start_0
    new-array v3, v14, [Landroid/accounts/AccountAndUser;

    new-instance v4, Landroid/accounts/AccountAndUser;

    invoke-direct {v4, v2, v12}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v4, v3, v15

    :goto_3
    move-object v11, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    .line 15
    :cond_2
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v15

    :goto_4
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    .line 16
    iget-object v8, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v8}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 17
    const-class v8, Landroid/accounts/AccountAndUser;

    invoke-static {v8, v5, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/AccountAndUser;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move-object v11, v5

    goto :goto_5

    :cond_5
    move/from16 v12, p2

    .line 18
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    goto :goto_3

    .line 19
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 21
    :cond_6
    const-string/jumbo v1, "upload"

    move-object/from16 v9, p5

    invoke-virtual {v9, v1, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 22
    const-string/jumbo v1, "force"

    invoke-virtual {v9, v1, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {v9, v2, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string/jumbo v2, "ignore_settings"

    invoke-virtual {v9, v2, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    :cond_7
    const-string/jumbo v2, "ignore_settings"

    .line 26
    invoke-virtual {v9, v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/4 v10, 0x3

    if-eqz v16, :cond_8

    move-object/from16 v8, p4

    move/from16 v29, v14

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v8, p4

    move/from16 v29, v10

    goto :goto_6

    :cond_9
    move-object/from16 v8, p4

    if-nez v8, :cond_a

    move/from16 v29, v23

    goto :goto_6

    .line 27
    :cond_a
    const-string/jumbo v1, "feed"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x5

    move/from16 v29, v1

    goto :goto_6

    :cond_b
    move/from16 v29, v15

    .line 28
    :goto_6
    array-length v7, v11

    move v6, v15

    :goto_7
    if-ge v6, v7, :cond_1e

    aget-object v5, v11, v6

    if-ltz v12, :cond_d

    .line 29
    iget v1, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v1, :cond_d

    if-eq v12, v1, :cond_d

    :cond_c
    move-wide/from16 v2, p7

    move/from16 v31, v6

    move/from16 v35, v7

    move-object/from16 v32, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v33, v13

    move v13, v14

    move-object v14, v0

    move/from16 v0, p6

    goto/16 :goto_14

    .line 30
    :cond_d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 32
    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    if-eqz v8, :cond_f

    .line 33
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 34
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v2, :cond_f

    .line 35
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 37
    iget-object v2, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v5, Landroid/accounts/AccountAndUser;->userId:I

    xor-int/lit8 v18, p9, 0x1

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 p1, v4

    move-object v15, v5

    move/from16 v5, v18

    move/from16 v31, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    move-result v1

    if-nez v1, :cond_10

    :goto_a
    move-object v5, v15

    move/from16 v6, v31

    :goto_b
    const/4 v15, 0x0

    goto :goto_9

    .line 38
    :cond_10
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v6, p1

    .line 39
    invoke-static {v6, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    iget v4, v15, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_a

    .line 40
    :cond_11
    iget v4, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v1, v10, :cond_13

    .line 41
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 42
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 43
    iget-object v1, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 44
    :try_start_1
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v12, v5}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_12

    goto :goto_a

    .line 45
    :cond_12
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v2, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;

    move-object/from16 v32, v1

    move-object v1, v0

    move-object/from16 v33, v2

    move-object/from16 v2, p0

    move-object/from16 v34, v3

    move-object v3, v15

    move-object/from16 v18, v4

    move/from16 v4, p2

    move-object/from16 p1, v15

    move-object v15, v5

    move/from16 v5, p3

    move/from16 v35, v7

    move-object/from16 v7, v18

    move/from16 v8, p6

    move-object/from16 v36, v9

    move/from16 v37, v10

    move-wide/from16 v9, p7

    move-object/from16 v38, v11

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object/from16 v1, v32

    invoke-direct {v1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move/from16 v0, p2

    move-object/from16 v3, v33

    move-object/from16 v2, v34

    invoke-virtual {v2, v3, v15, v0, v1}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move v12, v0

    move/from16 v6, v31

    move/from16 v7, v35

    move-object/from16 v9, v36

    move/from16 v10, v37

    move-object/from16 v11, v38

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_13
    move/from16 v35, v7

    move-object/from16 v36, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move v0, v12

    move-object/from16 p1, v15

    .line 46
    iget-object v2, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v27

    .line 47
    iget-object v2, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v2

    if-nez p9, :cond_14

    if-gez v1, :cond_14

    if-eqz v2, :cond_14

    move-object/from16 v14, p0

    .line 48
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v15, p1

    iget-object v2, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v22, 0x1

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v6

    move/from16 v23, p11

    move/from16 v24, p12

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    :goto_d
    const/4 v2, -0x2

    move/from16 v13, p6

    if-eq v13, v2, :cond_15

    if-eq v13, v1, :cond_15

    :goto_e
    move-object/from16 v8, p4

    move v12, v0

    move-object v0, v14

    move-object v5, v15

    move/from16 v6, v31

    move/from16 v7, v35

    move-object/from16 v9, v36

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/4 v13, -0x1

    const/4 v14, 0x1

    goto/16 :goto_b

    .line 49
    :cond_15
    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-nez v3, :cond_16

    if-eqz v16, :cond_16

    goto :goto_e

    :cond_16
    if-ltz v1, :cond_18

    if-nez v17, :cond_18

    .line 50
    iget-object v3, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v7, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 51
    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v15, Landroid/accounts/AccountAndUser;->userId:I

    .line 52
    invoke-virtual {v3, v7, v6, v8}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_f

    .line 53
    :cond_17
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: sync of "

    const-string v3, " "

    const-string v4, " is not allowed, dropping request"

    filled-new-array {v2, v15, v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_e

    .line 54
    :cond_18
    :goto_f
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v15, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v3, v7, v6, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 55
    iget-object v7, v14, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 56
    invoke-virtual {v7, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 57
    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/4 v12, -0x1

    if-ne v1, v12, :cond_1b

    if-eqz p9, :cond_1a

    .line 58
    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v11, v36

    invoke-direct {v7, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 59
    iget-object v10, v14, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v8, v15, Landroid/accounts/AccountAndUser;->userId:I

    new-instance v9, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v4, p3

    move-object v0, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, p6

    move-object v14, v9

    move-object/from16 p1, v15

    move v15, v8

    move-wide/from16 v8, p7

    move-object/from16 v39, v10

    move/from16 v10, p10

    move-object/from16 v32, v11

    move/from16 v11, p11

    move/from16 v33, v12

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    .line 60
    new-instance v1, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v1, v0, v14}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;)V

    .line 61
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v2, v39

    .line 62
    invoke-static {v2, v0, v15}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v3, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    .line 63
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 64
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    .line 66
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    :goto_10
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v0, p6

    move-wide/from16 v2, p7

    const/4 v13, 0x1

    goto/16 :goto_13

    :cond_1a
    move/from16 v33, v12

    move-object/from16 p1, v15

    move-object/from16 v32, v36

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string/jumbo v1, "initialize"

    const/4 v13, 0x1

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v14, p0

    .line 69
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: schedule initialisation sync "

    const-string v3, " "

    filled-new-array {v2, v15, v3, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v2, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, p3

    move/from16 v24, v29

    move-object/from16 v25, v6

    move-object/from16 v26, v0

    move/from16 v28, p10

    invoke-direct/range {v18 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v11, p7

    invoke-virtual {v14, v1, v11, v12}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    move/from16 v0, p6

    :goto_11
    move-wide v2, v11

    goto :goto_13

    :cond_1b
    move/from16 v33, v12

    move v0, v13

    move-object/from16 v32, v36

    const/4 v13, 0x1

    move-wide/from16 v11, p7

    if-eq v0, v2, :cond_1d

    if-ne v0, v1, :cond_1c

    goto :goto_12

    .line 71
    :cond_1c
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: not handling "

    const-string v3, " "

    filled-new-array {v2, v15, v3, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_11

    .line 72
    :cond_1d
    :goto_12
    iget-object v1, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: scheduling sync "

    const-string v3, " "

    filled-new-array {v2, v15, v3, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v3, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v15, Landroid/accounts/AccountAndUser;->userId:I

    move-object v2, v1

    move v7, v4

    move v4, v5

    move v5, v7

    move-object v9, v6

    move-object/from16 v6, v22

    move/from16 v7, p3

    move/from16 v8, v29

    move-object/from16 v10, v32

    move/from16 v11, v27

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v2, p7

    invoke-virtual {v14, v1, v2, v3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    :goto_13
    move/from16 v12, p2

    move-object/from16 v8, p4

    move-object v0, v14

    move-object v5, v15

    move/from16 v6, v31

    move-object/from16 v9, v32

    move/from16 v7, v35

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/4 v15, 0x0

    move v14, v13

    move/from16 v13, v33

    goto/16 :goto_9

    :goto_14
    add-int/lit8 v6, v31, 0x1

    move/from16 v12, p2

    move-object/from16 v8, p4

    move-object v0, v14

    move-object/from16 v9, v32

    move/from16 v7, v35

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/4 v15, 0x0

    move v14, v13

    move/from16 v13, v33

    goto/16 :goto_7

    :cond_1e
    return-void

    .line 74
    :goto_15
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v1, :cond_0

    .line 3
    const-string v0, "SyncManager"

    const-string v1, "Can\'t schedule null sync operation."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v5, "ignore_backoff"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    if-nez v4, :cond_7

    .line 5
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v9}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v4

    const-wide/16 v9, -0x1

    if-nez v4, :cond_2

    .line 6
    const-string v4, "SyncManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Couldn\'t find backoff values for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v12, :cond_1

    .line 7
    const-string v12, "[null]"

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v12

    .line 8
    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v4, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-eqz v11, :cond_3

    .line 13
    iput-boolean v5, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 14
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 15
    iget-object v13, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v13, v9

    if-nez v9, :cond_4

    move-wide v9, v7

    goto :goto_2

    .line 16
    :cond_4
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v11

    .line 17
    :goto_2
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v13}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v13

    cmp-long v4, v13, v11

    if-lez v4, :cond_5

    sub-long/2addr v13, v11

    goto :goto_3

    :cond_5
    move-wide v13, v7

    :goto_3
    if-eqz v2, :cond_6

    .line 18
    const-string v4, "SyncManager"

    const-string v11, "backoff delay:"

    const-string v12, " delayUntil delay:"

    .line 19
    invoke-static {v11, v9, v10, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 20
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_6
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v11, p2

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_4

    :cond_7
    move-wide/from16 v11, p2

    move-wide v9, v11

    :goto_4
    cmp-long v4, v9, v7

    if-gez v4, :cond_8

    move-wide v9, v7

    goto :goto_5

    :cond_8
    if-lez v4, :cond_9

    .line 22
    iput-boolean v5, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 23
    :cond_9
    :goto_5
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_1a

    .line 24
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 25
    iget-object v11, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v2, :cond_b

    .line 26
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate sync is already running. Not scheduling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    .line 27
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v9

    .line 28
    iput-wide v11, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v13, v1

    move v12, v6

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/content/SyncOperation;

    .line 31
    iget-boolean v15, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v15, :cond_d

    goto :goto_6

    .line 32
    :cond_d
    iget-object v15, v14, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 33
    iget-wide v6, v13, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-object/from16 p2, v4

    iget-wide v3, v14, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v3, v6, v3

    if-lez v3, :cond_e

    move-object v13, v14

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 p2, v4

    :goto_7
    move-object/from16 v4, p2

    const/4 v3, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_10
    move-object/from16 p2, v4

    if-le v12, v5, :cond_12

    .line 34
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "duplicates found when scheduling a sync operation: owningUid="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; owningPackage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; source="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; adapter="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v6, :cond_11

    .line 36
    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_8

    .line 37
    :cond_11
    const-string/jumbo v6, "unknown"

    :goto_8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eq v1, v13, :cond_13

    const-wide/16 v3, 0x0

    cmp-long v6, v9, v3

    if-nez v6, :cond_13

    .line 39
    iget v3, v13, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v4, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v3, v4, :cond_13

    const/4 v3, 0x0

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v13, v1

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    .line 41
    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncOperation;

    .line 42
    iget-boolean v8, v7, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v8, :cond_15

    goto :goto_a

    .line 43
    :cond_15
    iget-object v8, v7, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-eq v7, v13, :cond_14

    if-eqz v2, :cond_16

    .line 44
    const-string v8, "SyncManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Cancelling duplicate sync "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_16
    iget v8, v7, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 46
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 47
    const-string/jumbo v8, "scheduleSyncOperationH-duplicate"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    if-eq v13, v1, :cond_19

    if-eqz v2, :cond_18

    .line 48
    const-string v0, "SyncManager"

    const-string v1, "Not scheduling because a duplicate exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    :cond_19
    if-lez v4, :cond_1a

    .line 49
    iput v4, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 50
    :cond_1a
    iget v4, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1f

    .line 51
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v4}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 52
    :goto_b
    iget v6, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_1c

    .line 54
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/job/JobInfo;

    .line 55
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    move-result v11

    if-ne v11, v6, :cond_1b

    goto :goto_e

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 56
    :cond_1c
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_1e

    .line 57
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 58
    iget-object v11, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v11, v11, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v11, v6, :cond_1d

    .line 59
    :goto_e
    iget v6, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    goto :goto_b

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 60
    :cond_1e
    iget v4, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    .line 61
    iput v4, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    :cond_1f
    if-eqz v2, :cond_20

    .line 62
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "scheduling sync operation "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v4

    .line 64
    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string v7, "allow_metered"

    const/4 v3, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x2

    goto :goto_f

    :cond_21
    move v6, v5

    .line 65
    :goto_f
    iget v7, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v7, :cond_22

    const/16 v7, 0x8

    goto :goto_10

    :cond_22
    const/4 v7, 0x0

    .line 66
    :goto_10
    new-instance v8, Landroid/app/job/JobInfo$Builder;

    iget v11, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/server/content/SyncJobService;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v8, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 68
    invoke-virtual {v8, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 69
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 70
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 71
    invoke-virtual {v6, v4}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 73
    iget-boolean v6, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v6, :cond_23

    .line 74
    iget-wide v6, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v8, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_11

    :cond_23
    const-wide/16 v6, 0x0

    cmp-long v6, v9, v6

    if-lez v6, :cond_24

    .line 75
    invoke-virtual {v4, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 76
    :cond_24
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 77
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 78
    :goto_11
    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "require_charging"

    const/4 v3, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 79
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 80
    :cond_25
    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "schedule_as_expedited_job"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 81
    iget-boolean v6, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-nez v6, :cond_26

    .line 82
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 83
    :cond_26
    iget v6, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_27

    .line 84
    const-class v6, Lcom/android/server/DeviceIdleInternal;

    .line 85
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/server/DeviceIdleInternal;

    if-eqz v7, :cond_27

    .line 86
    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 87
    iget-object v8, v6, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 88
    monitor-enter v8

    .line 89
    :try_start_0
    iget v6, v6, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v10, v6

    .line 90
    iget v6, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 91
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const-string/jumbo v16, "sync by top app"

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v8, 0x3e8

    const/16 v15, 0x132

    .line 92
    invoke-interface/range {v7 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V

    goto :goto_12

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 94
    :cond_27
    :goto_12
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 95
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v6, :cond_29

    .line 96
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 97
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 98
    iget v9, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v9, :cond_28

    move v9, v5

    goto :goto_13

    :cond_28
    const/4 v9, 0x0

    .line 99
    :goto_13
    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 100
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/usage/AppStandbyInternal;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    .line 101
    :cond_29
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 103
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 104
    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v10

    .line 106
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2b

    .line 107
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExpedited()Z

    move-result v6

    if-eqz v6, :cond_2b

    if-eqz v2, :cond_2a

    .line 108
    const-string v2, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to schedule EJ for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    const-string v8, ". Downgrading to regular"

    .line 109
    invoke-static {v6, v7, v8, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2a
    iput-boolean v5, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 113
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 114
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    :cond_2b
    if-nez v7, :cond_2c

    .line 117
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule job for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 118
    invoke-static {v2, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public final setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 24
    .line 25
    iget-boolean v3, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    invoke-virtual {v2, p1, p0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    invoke-virtual {v2, p1, p0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x1110165

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v1, "com.android.contacts"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p2, 0x1

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    xor-int/2addr p0, p2

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "Trying to fetch user properties for non-existing/partial user "

    .line 62
    .line 63
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "SyncManager"

    .line 78
    .line 79
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move p0, v0

    .line 83
    :goto_0
    if-nez p0, :cond_0

    .line 84
    .line 85
    move v0, p2

    .line 86
    :cond_0
    return v0
.end method

.method public final updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    move-object v6, p6

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 12
    .line 13
    const/16 p1, 0xd

    .line 14
    .line 15
    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "SyncManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "sending MESSAGE_ACCOUNTS_UPDATED"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final declared-synchronized verifyJobScheduler()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 12
    :try_start_2
    const-string v2, "SyncManager"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const-string v2, "SyncManager"

    .line 22
    .line 23
    const-string/jumbo v3, "initializing JobScheduler object."

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-class v3, Landroid/app/job/JobScheduler;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 42
    .line 43
    const-string v3, "SyncManager"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->migrateSyncJobNamespaceIfNeeded()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x0

    .line 65
    move v5, v4

    .line 66
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/app/job/JobInfo;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v6}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    iget-boolean v7, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 89
    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const-string v6, "SyncManager"

    .line 107
    .line 108
    const-string v7, "Non-sync job inside of SyncManager namespace"

    .line 109
    .line 110
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v6, "Loaded persisted syncs: "

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, " periodic syncs, "

    .line 128
    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v5, " oneshot syncs, "

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, " total system server jobs, "

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "SyncManager"

    .line 164
    .line 165
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 169
    .line 170
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v3, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    new-instance v3, Lcom/android/server/content/SyncManager$6;

    .line 178
    .line 179
    invoke-direct {v3, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 180
    .line 181
    .line 182
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 183
    .line 184
    invoke-virtual {v5, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 185
    .line 186
    .line 187
    sget-boolean v3, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    if-eqz v3, :cond_5

    .line 190
    .line 191
    if-nez v4, :cond_5

    .line 192
    .line 193
    :try_start_3
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 194
    .line 195
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 196
    .line 197
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    :try_start_4
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    const/4 v4, 0x6

    .line 206
    if-lt v3, v4, :cond_5

    .line 207
    .line 208
    :try_start_5
    const-string v3, "SyncManager"

    .line 209
    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v5, "Device booted with no persisted periodic syncs: "

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_1
    move-exception v2

    .line 232
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 234
    :catchall_2
    :cond_5
    :goto_2
    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 235
    .line 236
    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 239
    :catchall_3
    move-exception v0

    .line 240
    goto :goto_4

    .line 241
    :goto_3
    :try_start_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    .line 243
    .line 244
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 245
    :goto_4
    monitor-exit p0

    .line 246
    throw v0
.end method
