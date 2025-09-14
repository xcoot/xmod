.class public final Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# static fields
.field public static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field public static final ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

.field public static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field public static final sResponseLatency:Lcom/android/modules/expresslog/Histogram;

.field public static final sThis:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final mAccountHistory:Lcom/android/internal/util/RingBuffer;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

.field public mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

.field public final mContext:Landroid/content/Context;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field public final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field public final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSessions:Ljava/util/LinkedHashMap;

.field public mSyncDeCeAccountsExecuted:Z

.field public mUseAccountDb:Z

.field public mUserManager:Landroid/os/UserManager;

.field public final mUsers:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move/from16 v8, p6

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v5, "AccountManagerService"

    .line 17
    .line 18
    const-string/jumbo v6, "doNotification: "

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    const/4 v11, 0x2

    .line 26
    :try_start_0
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, " intent:"

    .line 41
    .line 42
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_0
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    const-class v5, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0, v2, v4, v7, p1}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    new-instance v5, Landroid/os/UserHandle;

    .line 90
    .line 91
    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    const/4 v12, 0x0

    .line 101
    invoke-virtual {v6, v11, v12, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    :try_start_2
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    :goto_1
    invoke-static {v2, p1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    const v1, 0x1040938

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v6, Landroid/app/Notification$Builder;

    .line 129
    .line 130
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v6, v5, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-wide/16 v12, 0x0

    .line 136
    .line 137
    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const v12, 0x108008a

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const v12, 0x106001c

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v12}, Landroid/content/Context;->getColor(I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 160
    .line 161
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    new-instance v6, Landroid/os/UserHandle;

    .line 180
    .line 181
    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 182
    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v2, 0x0

    .line 186
    const/high16 v13, 0x14000000

    .line 187
    .line 188
    move-object/from16 v3, p4

    .line 189
    .line 190
    move v4, v13

    .line 191
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p0, v11, v1, v7, v8}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .line 205
    .line 206
    :goto_2
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :goto_3
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 211
    .line 212
    .line 213
    throw v0
.end method

.method public static -$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 p0, 0xca

    .line 5
    .line 6
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    const-string p3, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, ";"

    .line 28
    .line 29
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    :goto_0
    filled-new-array {p2, p1, p4, p3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static -$$Nest$mpurgeUserData(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 39
    :try_start_3
    iget-object v3, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-object v3, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :try_start_4
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 58
    .line 59
    .line 60
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    goto :goto_4

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :catchall_2
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    :try_start_7
    throw v0

    .line 69
    :goto_2
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 70
    :try_start_8
    throw v0

    .line 71
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 72
    throw p1

    .line 73
    :cond_1
    :goto_4
    return-void

    .line 74
    :catchall_3
    move-exception p0

    .line 75
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 76
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/app/BroadcastOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 25
    .line 26
    const/high16 v1, 0x5000000

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Landroid/accounts/Account;

    .line 40
    .line 41
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 42
    .line 43
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 44
    .line 45
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 46
    .line 47
    const v2, 0x461c4000    # 10000.0f

    .line 48
    .line 49
    .line 50
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    const/16 v4, 0x14

    .line 53
    .line 54
    const/16 v5, 0x2710

    .line 55
    .line 56
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 57
    .line 58
    .line 59
    const-string v2, "app.value_high_authenticator_response_latency"

    .line 60
    .line 61
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sResponseLatency:Lcom/android/modules/expresslog/Histogram;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 5
    .line 6
    const-class v1, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;

    .line 7
    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAccountHistory:Lcom/android/internal/util/RingBuffer;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService;->mSyncDeCeAccountsExecuted:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    new-instance v1, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 34
    .line 35
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 43
    .line 44
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 60
    .line 61
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iput-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    const-class v2, Landroid/app/AppOpsManager;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move-object v9, v2

    .line 78
    check-cast v9, Landroid/app/AppOpsManager;

    .line 79
    .line 80
    iput-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 81
    .line 82
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 83
    .line 84
    new-instance v2, Lcom/android/server/ServiceThread;

    .line 85
    .line 86
    const-string v11, "AccountManagerService"

    .line 87
    .line 88
    const/4 v3, -0x2

    .line 89
    invoke-direct {v2, v3, v11, v0}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v10, p0, v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    .line 100
    .line 101
    .line 102
    iput-object v10, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 103
    .line 104
    new-instance v2, Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-direct {v2, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 112
    .line 113
    invoke-virtual {v2, p0, v10}, Landroid/content/pm/RegisteredServicesCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/content/IntentFilter;

    .line 122
    .line 123
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v2, "package"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$1;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-direct {v2, p0, v3}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 149
    .line 150
    .line 151
    const-class v2, Landroid/accounts/AccountManagerInternal;

    .line 152
    .line 153
    invoke-static {v2, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v5, Landroid/content/IntentFilter;

    .line 157
    .line 158
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string p1, "android.intent.action.USER_REMOVED"

    .line 162
    .line 163
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$1;

    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    invoke-direct {v3, p0, p1}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    .line 170
    .line 171
    .line 172
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    move-object v2, v1

    .line 177
    move-object v4, p1

    .line 178
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$3;

    .line 182
    .line 183
    invoke-direct {v2, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v1, v3, p1, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$4;

    .line 194
    .line 195
    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 196
    .line 197
    .line 198
    const/16 v0, 0x3e

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    invoke-virtual {v9, v0, v2, p1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda10;

    .line 205
    .line 206
    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 213
    .line 214
    invoke-direct {p1, v1}, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 218
    .line 219
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V

    .line 226
    .line 227
    .line 228
    const-string p0, "Account Backup Controller is registered"

    .line 229
    .line 230
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public static accountExistsCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Landroid/accounts/Account;

    .line 24
    .line 25
    array-length v1, p1

    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-ge v3, v1, :cond_1

    .line 28
    .line 29
    aget-object v4, p1, v3

    .line 30
    .line 31
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return v2

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public static canCallerAccessPackage(IILjava/lang/String;)Z
    .locals 5

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const-wide/32 v1, 0x938effd

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-virtual {v0, p2, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 p1, -0x1

    .line 26
    if-eq p0, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    return v2

    .line 31
    :cond_1
    invoke-virtual {v0, p0, p1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    xor-int/2addr v0, v2

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v1, "AccountManagerService"

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const-string v2, "Package "

    .line 48
    .line 49
    const-string v3, " is not visible to caller "

    .line 50
    .line 51
    const-string v4, " for user "

    .line 52
    .line 53
    invoke-static {p0, v2, p2, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return v0
.end method

.method public static getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 25
    .line 26
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 31
    .line 32
    iget p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method public static getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 5

    .line 1
    const-string v0, "AccountManagerService:38:"

    .line 2
    .line 3
    iget-object v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    .line 7
    .line 8
    new-instance v3, Landroid/util/Pair;

    .line 9
    .line 10
    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ":"

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, ":"

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 67
    .line 68
    const/16 p1, 0x26

    .line 69
    .line 70
    invoke-direct {v3, p0, p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit v1

    .line 82
    return-object v3

    .line 83
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public static getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "AccountManagerService"

    .line 14
    .line 15
    const-string v1, "Visibility was not initialized"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 26
    .line 27
    check-cast p1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method

.method public static getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ":"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Iterable;

    .line 35
    .line 36
    const-string p1, ","

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, ""

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 4

    .line 1
    const-string v0, "AccountManagerService:37:"

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 33
    .line 34
    const/16 v3, 0x25

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v1

    .line 48
    return-object v2

    .line 49
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    .line 8
    .line 9
    return-object v0
.end method

.method public static handleIncomingUser(I)I
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v6, ""

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    move v3, p0

    .line 19
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    return p0
.end method

.method public static insertAccountIntoCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/Account;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Landroid/accounts/Account;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    new-array v3, v3, [Landroid/accounts/Account;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    new-instance v1, Landroid/accounts/Account;

    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    aput-object v1, v3, v2

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 53
    .line 54
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 60
    .line 61
    .line 62
    aget-object p0, v3, v2

    .line 63
    .line 64
    return-object p0
.end method

.method public static invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    .line 15
    .line 16
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "_id= ?"

    .line 52
    .line 53
    filled-new-array {v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string/jumbo v6, "ceDb.authtokens"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v6, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    new-instance v1, Landroid/accounts/Account;

    .line 64
    .line 65
    invoke-direct {v1, v2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public static isProfileOwner(I)Z
    .locals 2

    .line 1
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public static isSpecialPackageKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android:accounts:key_legacy_visible"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android:accounts:key_legacy_not_visible"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xcc

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "AccountManagerService calling onResult() on response "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-class v3, Lcom/android/server/accounts/AccountManagerService;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string/jumbo p1, "failure while notifying response"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public static readAuthTokenInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 52
    .line 53
    check-cast p1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    return-object p0

    .line 70
    :catchall_2
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    :try_start_5
    throw p0

    .line 74
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    throw p0

    .line 76
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    throw p0
.end method

.method public static readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/accounts/TokenCache$Key;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide p3

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-wide v1, p2, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    .line 29
    .line 30
    cmp-long p3, p3, v1

    .line 31
    .line 32
    if-gez p3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance p3, Landroid/util/Pair;

    .line 46
    .line 47
    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 p2, 0x0

    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return-object p2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public static readPreviousNameInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    return-object v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    return-object p0

    .line 53
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :try_start_6
    throw p0

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 56
    throw p0
.end method

.method public static readUserDataInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_1
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 24
    .line 25
    check-cast v2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 42
    .line 43
    check-cast p1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    move-object v1, v2

    .line 54
    goto :goto_3

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    :try_start_5
    throw p0

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 60
    throw p0

    .line 61
    :cond_1
    :goto_3
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    return-object p0

    .line 68
    :catchall_2
    move-exception p0

    .line 69
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 70
    throw p0
.end method

.method public static registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 6

    .line 9
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 10
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 12
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v5, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v5, v3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeAccountFromCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Landroid/accounts/Account;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    invoke-virtual {v4, p0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 43
    .line 44
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-array v0, v0, [Landroid/accounts/Account;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Landroid/accounts/Account;

    .line 61
    .line 62
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 63
    .line 64
    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 70
    .line 71
    check-cast v0, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 77
    .line 78
    check-cast v0, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 89
    .line 90
    check-cast p1, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "AccountManagerService"

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string/jumbo p2, "failure while notifying response"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public static setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "Updating account "

    .line 10
    .line 11
    const-string v5, "Updating account "

    .line 12
    .line 13
    const-string v6, "Updating account "

    .line 14
    .line 15
    const-string v7, "Updating account "

    .line 16
    .line 17
    const-string v8, "Updating account "

    .line 18
    .line 19
    iget-object v9, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v9

    .line 22
    :try_start_0
    iget-object v10, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 23
    .line 24
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    :try_start_1
    iget-object v10, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 29
    .line 30
    invoke-virtual {v10, v2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 34
    const-wide/16 v14, 0x0

    .line 35
    .line 36
    cmp-long v12, v10, v14

    .line 37
    .line 38
    if-gez v12, :cond_0

    .line 39
    .line 40
    :try_start_2
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    const-string v15, "AccountManagerService"

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " failed"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v16

    .line 76
    const-string v17, ""

    .line 77
    .line 78
    iget v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 79
    .line 80
    const/4 v11, 0x5

    .line 81
    const/4 v12, 0x4

    .line 82
    move/from16 v18, v0

    .line 83
    .line 84
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    monitor-exit v9

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :catchall_1
    move-exception v0

    .line 96
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    :cond_0
    :try_start_5
    iget-object v8, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 101
    .line 102
    invoke-virtual {v8, v10, v11, v0}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v16

    .line 106
    cmp-long v8, v16, v14

    .line 107
    .line 108
    if-gez v8, :cond_1

    .line 109
    .line 110
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 111
    .line 112
    invoke-virtual {v5, v0, v10, v11, v3}, Lcom/android/server/accounts/AccountsDb;->insertExtra(Ljava/lang/String;JLjava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 116
    cmp-long v5, v10, v14

    .line 117
    .line 118
    if-gez v5, :cond_2

    .line 119
    .line 120
    :try_start_6
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 126
    .line 127
    .line 128
    move-result-wide v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    :try_start_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    const-string v15, "AccountManagerService"

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, " failed"

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v16

    .line 156
    const-string v17, ""

    .line 157
    .line 158
    iget v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 159
    .line 160
    const/4 v11, 0x5

    .line 161
    const/4 v12, 0x4

    .line 162
    move/from16 v18, v0

    .line 163
    .line 164
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 165
    .line 166
    .line 167
    :try_start_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    .line 169
    .line 170
    monitor-exit v9

    .line 171
    return-void

    .line 172
    :catchall_2
    move-exception v0

    .line 173
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 177
    :catchall_3
    move-exception v0

    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_1
    :try_start_9
    iget-object v7, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 181
    .line 182
    iget-object v7, v7, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    new-instance v8, Landroid/content/ContentValues;

    .line 189
    .line 190
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v10, "value"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    filled-new-array {v10}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    const-string/jumbo v11, "extras"

    .line 208
    .line 209
    .line 210
    const-string v12, "_id=?"

    .line 211
    .line 212
    invoke-virtual {v7, v11, v8, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    const/4 v8, 0x1

    .line 217
    if-ne v7, v8, :cond_5

    .line 218
    .line 219
    :cond_2
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 222
    .line 223
    .line 224
    :try_start_a
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 230
    .line 231
    .line 232
    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 233
    :try_start_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    const-string v14, "AccountManagerService"

    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v6, " succeeded"

    .line 252
    .line 253
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    const-string v16, ""

    .line 261
    .line 262
    iget v6, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 263
    .line 264
    const/4 v10, 0x5

    .line 265
    const/4 v11, 0x4

    .line 266
    const/4 v12, 0x1

    .line 267
    move/from16 v17, v6

    .line 268
    .line 269
    invoke-static/range {v10 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 270
    .line 271
    .line 272
    :try_start_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    .line 274
    .line 275
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 276
    .line 277
    monitor-enter v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 278
    :try_start_d
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 279
    .line 280
    check-cast v5, Ljava/util/HashMap;

    .line 281
    .line 282
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    check-cast v5, Ljava/util/Map;

    .line 287
    .line 288
    if-nez v5, :cond_3

    .line 289
    .line 290
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 291
    .line 292
    invoke-virtual {v5, v2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 297
    .line 298
    check-cast v1, Ljava/util/HashMap;

    .line 299
    .line 300
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    :cond_3
    if-nez v3, :cond_4

    .line 304
    .line 305
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_4
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    :goto_0
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 313
    .line 314
    .line 315
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 316
    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 317
    return-void

    .line 318
    :catchall_4
    move-exception v0

    .line 319
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 320
    :try_start_10
    throw v0

    .line 321
    :catchall_5
    move-exception v0

    .line 322
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_5
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 329
    .line 330
    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 332
    .line 333
    .line 334
    move-result-wide v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 335
    :try_start_11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    const-string v15, "AccountManagerService"

    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v0, " failed"

    .line 354
    .line 355
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v16

    .line 362
    const-string v17, ""

    .line 363
    .line 364
    iget v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 365
    .line 366
    const/4 v11, 0x5

    .line 367
    const/4 v12, 0x4

    .line 368
    move/from16 v18, v0

    .line 369
    .line 370
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 371
    .line 372
    .line 373
    :try_start_12
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .line 375
    .line 376
    monitor-exit v9

    .line 377
    return-void

    .line 378
    :catchall_6
    move-exception v0

    .line 379
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :goto_1
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 389
    .line 390
    .line 391
    move-result-wide v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 392
    :try_start_13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 393
    .line 394
    .line 395
    move-result v14

    .line 396
    const-string v15, "AccountManagerService"

    .line 397
    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v2, " failed"

    .line 411
    .line 412
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v16

    .line 419
    const-string v17, ""

    .line 420
    .line 421
    iget v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 422
    .line 423
    const/4 v11, 0x5

    .line 424
    const/4 v12, 0x4

    .line 425
    move/from16 v18, v1

    .line 426
    .line 427
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 428
    .line 429
    .line 430
    :try_start_14
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :catchall_7
    move-exception v0

    .line 435
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :goto_2
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 440
    throw v0
.end method

.method public static unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7

    .line 9
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 10
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 11
    :cond_0
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 12
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 16
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attempt to unregister wrong receiver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateAccountVisibilityLocked(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :try_start_0
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v5, Landroid/content/ContentValues;

    .line 28
    .line 29
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v6, "accounts_id"

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "_package"

    .line 42
    .line 43
    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v1, "value"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v0, "visibility"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-wide/16 v4, -0x1

    .line 64
    .line 65
    cmp-long v0, v0, v4

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x1

    .line 87
    return p0

    .line 88
    :cond_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public static writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 20
    .line 21
    check-cast p0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    if-nez p3, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public final accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 23
    .line 24
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v1, "account cannot be null"

    .line 32
    .line 33
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 84
    return p0

    .line 85
    :cond_3
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 86
    .line 87
    const-string/jumbo p1, "uid "

    .line 88
    .line 89
    .line 90
    const-string v1, " cannot notify authentication for accounts of type: "

    .line 91
    .line 92
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/SecurityException;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const-string v1, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "addAccount: accountType "

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", response "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", authTokenType "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", requiredFeatures "

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ", expectActivityLaunch "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", caller\'s uid "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ", pid "

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_0
    if-eqz p1, :cond_4

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-virtual {p0, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    const/16 p2, 0x64

    .line 110
    .line 111
    :try_start_0
    const-string p3, "User is not allowed to add an account!"

    .line 112
    .line 113
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0, v8, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    const/16 p2, 0x65

    .line 127
    .line 128
    :try_start_1
    const-string p3, "User cannot modify accounts of this type (policy)."

    .line 129
    .line 130
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    :catch_1
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_2
    move-object v1, p0

    .line 138
    move-object v2, p1

    .line 139
    move-object v3, p2

    .line 140
    move-object v4, p3

    .line 141
    move-object v5, p4

    .line 142
    move v6, p5

    .line 143
    move-object v7, p6

    .line 144
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string p1, "accountType is null"

    .line 151
    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    const-string/jumbo p1, "response is null"

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 20

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    if-nez p6, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v15, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object/from16 v15, p6

    .line 19
    .line 20
    :goto_0
    const-string/jumbo v1, "callerUid"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v15, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "callerPid"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v15, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v18

    .line 36
    move-object/from16 v0, p0

    .line 37
    .line 38
    move/from16 v1, p7

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    const-string v2, "action_called_account_add"

    .line 45
    .line 46
    const-string v3, "accounts"

    .line 47
    .line 48
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    move-object/from16 v1, p0

    .line 51
    .line 52
    move-object v6, v10

    .line 53
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$9;

    .line 57
    .line 58
    move-object v8, v1

    .line 59
    move-object/from16 v9, p0

    .line 60
    .line 61
    move-object/from16 v11, p1

    .line 62
    .line 63
    move-object/from16 v12, p2

    .line 64
    .line 65
    move/from16 v13, p5

    .line 66
    .line 67
    move-object/from16 v14, p3

    .line 68
    .line 69
    move-object v0, v15

    .line 70
    move-object/from16 v15, p4

    .line 71
    .line 72
    move-object/from16 v16, v0

    .line 73
    .line 74
    move-object/from16 v17, p2

    .line 75
    .line 76
    invoke-direct/range {v8 .. v17}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-static/range {v18 .. v19}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-static/range {v18 .. v19}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public final addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const-string v3, "AccountManagerService"

    .line 11
    .line 12
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "addAccount: accountType "

    .line 21
    .line 22
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ", response "

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", authTokenType "

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, ", requiredFeatures "

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ", expectActivityLaunch "

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, ", caller\'s uid "

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, ", pid "

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, ", for user id "

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_0
    const/4 v2, 0x0

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    move v3, v0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v3, v2

    .line 109
    :goto_0
    const-string/jumbo v4, "response cannot be null"

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move v0, v2

    .line 119
    :goto_1
    const-string v2, "accountType cannot be null"

    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1, p7}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0, p7, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    const/16 p2, 0x64

    .line 137
    .line 138
    :try_start_0
    const-string p3, "User is not allowed to add an account!"

    .line 139
    .line 140
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    :catch_0
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    invoke-virtual {p0, p7, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    const/16 p2, 0x65

    .line 154
    .line 155
    :try_start_1
    const-string p3, "User cannot modify accounts of this type (policy)."

    .line 156
    .line 157
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .line 159
    .line 160
    :catch_1
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 169
    .line 170
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    const-string p2, "User "

    .line 175
    .line 176
    const-string p3, " trying to add account for "

    .line 177
    .line 178
    invoke-static {p1, p7, p2, p3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
.end method

.method public final addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v3, p1

    .line 3
    move-object/from16 v8, p5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    move-object v5, p3

    .line 7
    invoke-static {p3, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v4, "account cannot be null"

    .line 19
    .line 20
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v7, "addAccountExplicitly: caller\'s uid="

    .line 26
    .line 27
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v7, ", pid="

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, ", packageName="

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v7, ", accountType="

    .line 54
    .line 55
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v7, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v7, "AccountManagerService"

    .line 68
    .line 69
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v6, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    :try_start_0
    const-string/jumbo v4, "device_account_policy"

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    iget-object v7, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v9, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v4, v7, v9, v1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 105
    .line 106
    const-string v4, "Security policy blocks this account addition"

    .line 107
    .line 108
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v1, p0

    .line 121
    move-object v3, p1

    .line 122
    move-object v4, p2

    .line 123
    move-object v5, p3

    .line 124
    move-object v7, p4

    .line 125
    move-object/from16 v8, p5

    .line 126
    .line 127
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_2
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 141
    .line 142
    const-string/jumbo v1, "uid="

    .line 143
    .line 144
    .line 145
    const-string v2, ", package="

    .line 146
    .line 147
    const-string v3, " cannot explicitly add accounts of type: "

    .line 148
    .line 149
    invoke-static {v6, v1, v2, v8, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/SecurityException;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1
.end method

.method public final addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    const-string/jumbo v2, "insertAccountIntoDatabase: "

    .line 12
    .line 13
    .line 14
    const-string/jumbo v3, "insertAccountIntoDatabase: "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "insertAccountIntoDatabase: "

    .line 18
    .line 19
    .line 20
    const-string/jumbo v5, "insertAccountIntoDatabase: "

    .line 21
    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    invoke-static {v1, v11}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    if-nez v9, :cond_0

    .line 29
    .line 30
    return v12

    .line 31
    :cond_0
    iget-object v6, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v7, 0xc8

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-le v6, v7, :cond_1

    .line 42
    .line 43
    const-string v0, "AccountManagerService"

    .line 44
    .line 45
    const-string v1, "Account cannot be added - Name longer than 200 chars"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v12

    .line 51
    :cond_1
    iget-object v6, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-le v6, v7, :cond_2

    .line 60
    .line 61
    const-string v0, "AccountManagerService"

    .line 62
    .line 63
    const-string v1, "Account cannot be added - Name longer than 200 chars"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v12

    .line 69
    :cond_2
    iget v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    const-string v0, "AccountManagerService"

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "Account "

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " cannot be added - user "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " is locked. callingUid="

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return v12

    .line 119
    :cond_3
    iget-object v13, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v13

    .line 122
    :try_start_0
    iget-object v14, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .line 129
    .line 130
    :try_start_2
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 131
    .line 132
    invoke-virtual {v6, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    const-wide/16 v15, 0x0

    .line 137
    .line 138
    cmp-long v6, v6, v15

    .line 139
    .line 140
    if-ltz v6, :cond_4

    .line 141
    .line 142
    const-string v0, "AccountManagerService"

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, ", skipping since the account already exists"

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    .line 167
    .line 168
    :try_start_3
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 171
    .line 172
    .line 173
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    return v12

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :catchall_1
    move-exception v0

    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :catchall_2
    move-exception v0

    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_4
    :try_start_5
    iget-object v5, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    const/16 v6, 0x64

    .line 196
    .line 197
    if-le v5, v6, :cond_5

    .line 198
    .line 199
    const-string v0, "AccountManagerService"

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, ", skipping since more than 100 accounts on device exist"

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    .line 224
    .line 225
    :try_start_6
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 228
    .line 229
    .line 230
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    return v12

    .line 233
    :cond_5
    :try_start_8
    iget-object v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 234
    .line 235
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 236
    .line 237
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    new-instance v5, Landroid/content/ContentValues;

    .line 242
    .line 243
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .line 245
    .line 246
    iget-object v6, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 247
    .line 248
    const-string/jumbo v7, "name"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string/jumbo v6, "type"

    .line 255
    .line 256
    .line 257
    iget-object v11, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string/jumbo v6, "password"

    .line 263
    .line 264
    .line 265
    move-object/from16 v11, p3

    .line 266
    .line 267
    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string/jumbo v6, "ceDb.accounts"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    .line 275
    .line 276
    move-result-wide v6

    .line 277
    cmp-long v4, v6, v15

    .line 278
    .line 279
    if-gez v4, :cond_6

    .line 280
    .line 281
    const-string v0, "AccountManagerService"

    .line 282
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v2, ", skipping the DB insert failed"

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 305
    .line 306
    .line 307
    :try_start_9
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 310
    .line 311
    .line 312
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 313
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 314
    return v12

    .line 315
    :cond_6
    :try_start_b
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 316
    .line 317
    invoke-virtual {v3, v9, v6, v7}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    .line 318
    .line 319
    .line 320
    move-result-wide v3

    .line 321
    cmp-long v3, v3, v15

    .line 322
    .line 323
    if-gez v3, :cond_7

    .line 324
    .line 325
    const-string v0, "AccountManagerService"

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v2, ", skipping the DB insert failed"

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 349
    .line 350
    .line 351
    :try_start_c
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 354
    .line 355
    .line 356
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 357
    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 358
    return v12

    .line 359
    :cond_7
    if-eqz v1, :cond_9

    .line 360
    .line 361
    :try_start_e
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_9

    .line 374
    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    iget-object v5, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 386
    .line 387
    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(Ljava/lang/String;JLjava/lang/String;)J

    .line 388
    .line 389
    .line 390
    move-result-wide v4

    .line 391
    cmp-long v4, v4, v15

    .line 392
    .line 393
    if-gez v4, :cond_8

    .line 394
    .line 395
    const-string v0, "AccountManagerService"

    .line 396
    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string/jumbo v2, "insertAccountIntoDatabase: "

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v2, ", skipping since insertExtra failed for key "

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 428
    .line 429
    .line 430
    :try_start_f
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 433
    .line 434
    .line 435
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 436
    :try_start_10
    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 437
    return v12

    .line 438
    :cond_8
    :try_start_11
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 439
    .line 440
    .line 441
    goto :goto_0

    .line 442
    :cond_9
    if-eqz p6, :cond_a

    .line 443
    .line 444
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v11

    .line 452
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_a

    .line 457
    .line 458
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Ljava/util/Map$Entry;

    .line 463
    .line 464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    move-object v3, v2

    .line 469
    check-cast v3, Ljava/lang/String;

    .line 470
    .line 471
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    check-cast v1, Ljava/lang/Integer;

    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    const/4 v5, 0x0

    .line 482
    move-object/from16 v1, p0

    .line 483
    .line 484
    move-object/from16 v2, p2

    .line 485
    .line 486
    move-wide v15, v6

    .line 487
    move-object/from16 v6, p1

    .line 488
    .line 489
    move/from16 v7, p5

    .line 490
    .line 491
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z

    .line 492
    .line 493
    .line 494
    move-wide v6, v15

    .line 495
    goto :goto_1

    .line 496
    :cond_a
    move-wide v15, v6

    .line 497
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 498
    .line 499
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 500
    .line 501
    .line 502
    const-string v2, "action_account_add"

    .line 503
    .line 504
    const-string v3, "accounts"

    .line 505
    .line 506
    move-object/from16 v1, p0

    .line 507
    .line 508
    move-wide v4, v15

    .line 509
    move-object/from16 v6, p1

    .line 510
    .line 511
    move/from16 v7, p5

    .line 512
    .line 513
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 514
    .line 515
    .line 516
    invoke-static {v9, v8}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/Account;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 517
    .line 518
    .line 519
    :try_start_12
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 520
    .line 521
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 522
    .line 523
    .line 524
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 525
    :try_start_13
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    iget v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    const/4 v2, 0x4

    .line 541
    if-eqz v1, :cond_c

    .line 542
    .line 543
    iget v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 544
    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_c

    .line 562
    .line 563
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 568
    .line 569
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eqz v5, :cond_b

    .line 574
    .line 575
    iget v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 576
    .line 577
    if-ne v1, v5, :cond_b

    .line 578
    .line 579
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 580
    .line 581
    invoke-virtual {v0, v9, v5}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)V

    .line 582
    .line 583
    .line 584
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 585
    .line 586
    invoke-virtual {v0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    if-eqz v5, :cond_b

    .line 591
    .line 592
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 593
    .line 594
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 595
    .line 596
    invoke-virtual {v5, v2, v1, v4, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    .line 602
    .line 603
    goto :goto_2

    .line 604
    :cond_c
    invoke-virtual {v0, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 605
    .line 606
    .line 607
    const-string v1, "AccountManagerService"

    .line 608
    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const-string/jumbo v4, "callingUid="

    .line 612
    .line 613
    .line 614
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v4, ", userId="

    .line 621
    .line 622
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    iget v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 626
    .line 627
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v4, " added account"

    .line 631
    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    iget v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 643
    .line 644
    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 645
    .line 646
    const-string v4, "addAccount"

    .line 647
    .line 648
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 652
    .line 653
    const-class v1, Lcom/android/server/pm/PersonaManagerService;

    .line 654
    .line 655
    monitor-enter v1

    .line 656
    :try_start_14
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 657
    .line 658
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 659
    if-eqz v0, :cond_e

    .line 660
    .line 661
    iget v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 662
    .line 663
    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 664
    .line 665
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 666
    .line 667
    if-nez v4, :cond_d

    .line 668
    .line 669
    goto :goto_3

    .line 670
    :cond_d
    const/16 v5, 0x46

    .line 671
    .line 672
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 677
    .line 678
    const/4 v1, 0x1

    .line 679
    iput v1, v4, Landroid/os/Message;->arg2:I

    .line 680
    .line 681
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 684
    .line 685
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 686
    .line 687
    .line 688
    :cond_e
    :goto_3
    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 689
    .line 690
    const/16 v1, 0xcb

    .line 691
    .line 692
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    new-instance v4, Ljava/util/HashMap;

    .line 705
    .line 706
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 707
    .line 708
    .line 709
    if-eqz p6, :cond_10

    .line 710
    .line 711
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 720
    .line 721
    .line 722
    move-result v6

    .line 723
    if-eqz v6, :cond_10

    .line 724
    .line 725
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    check-cast v6, Ljava/util/Map$Entry;

    .line 730
    .line 731
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v7

    .line 739
    if-nez v7, :cond_f

    .line 740
    .line 741
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    check-cast v7, Ljava/lang/Integer;

    .line 746
    .line 747
    new-instance v8, Ljava/util/HashSet;

    .line 748
    .line 749
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    :cond_f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v7

    .line 763
    check-cast v7, Ljava/util/Set;

    .line 764
    .line 765
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    check-cast v6, Ljava/lang/String;

    .line 770
    .line 771
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    goto :goto_4

    .line 775
    :cond_10
    invoke-static {v12, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    const/4 v6, 0x1

    .line 780
    invoke-static {v6, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    const/4 v8, 0x2

    .line 785
    invoke-static {v8, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v8

    .line 789
    const/4 v9, 0x3

    .line 790
    invoke-static {v9, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v9

    .line 794
    invoke-static {v2, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    filled-new-array {v5, v7, v8, v9, v2}, [Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-virtual {v1, v0, v3, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 807
    .line 808
    .line 809
    return v6

    .line 810
    :catchall_3
    move-exception v0

    .line 811
    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 812
    throw v0

    .line 813
    :goto_5
    :try_start_16
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 814
    .line 815
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 816
    .line 817
    .line 818
    throw v0

    .line 819
    :goto_6
    monitor-exit v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 820
    :try_start_17
    throw v0

    .line 821
    :goto_7
    monitor-exit v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 822
    throw v0
.end method

.method public final addSharedAccountAsUser(Landroid/accounts/Account;I)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v1, "name=? AND type=?"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "shared_accounts"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v3, "name"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "type"

    .line 56
    .line 57
    .line 58
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .line 69
    cmp-long p2, v3, v0

    .line 70
    .line 71
    if-gez p2, :cond_0

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo p2, "insertAccountIntoDatabase: "

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, ", skipping the DB insert failed"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, "AccountManagerService"

    .line 98
    .line 99
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    const-string v1, "action_account_add"

    .line 108
    .line 109
    const-string/jumbo v2, "shared_accounts"

    .line 110
    .line 111
    .line 112
    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "android.permission.MANAGE_USERS"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "android.permission.CREATE_USERS"

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string p1, "You need MANAGE_USERS or CREATE_USERS permission to: addSharedAccountsFromParentUser"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    array-length p3, p1

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_1
    if-ge v0, p3, :cond_2

    .line 43
    .line 44
    aget-object v1, p1, v0

    .line 45
    .line 46
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method

.method public final calculatePackageSignatureDigest(ILjava/lang/String;)[B
    .locals 5

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "SHA-256"

    .line 5
    .line 6
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    const/16 v3, 0x40

    .line 13
    .line 14
    invoke-virtual {p0, p2, v3, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 19
    .line 20
    array-length p1, p0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, p1, :cond_0

    .line 23
    .line 24
    aget-object v4, p0, v3

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_1
    const-string p0, "Could not find packageinfo for: "

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :goto_1
    move-object v2, v1

    .line 48
    goto :goto_3

    .line 49
    :goto_2
    const-string p1, "SHA-256 should be available"

    .line 50
    .line 51
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_3
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_4
    return-object v1
.end method

.method public final canUserModifyAccounts(II)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p2, Landroid/os/UserHandle;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo p1, "no_modify_accounts"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    return v0
.end method

.method public final canUserModifyAccountsForType(IILjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accounts/AccountManagerService;IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    :cond_0
    const-string/jumbo p3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-static {p2, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    :cond_1
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v6, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    move-object v8, p4

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v3, "android"

    .line 21
    .line 22
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 23
    .line 24
    iget v5, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    .line 25
    .line 26
    iget p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 27
    .line 28
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catch_0
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :goto_0
    return-void
.end method

.method public final varargs checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget-object v3, p3, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_2

    .line 15
    .line 16
    const-string v4, "AccountManagerService"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v6, "  caller uid "

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v6, " has "

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, -0x1

    .line 55
    if-eq v3, v4, :cond_1

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 58
    .line 59
    invoke-virtual {v4, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    :cond_1
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return v1
.end method

.method public final clearPassword(Landroid/accounts/Account;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "clearPassword: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", caller\'s uid "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", pid "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    const-string v1, "account cannot be null"

    .line 53
    .line 54
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0, v0, p1, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_1
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 91
    .line 92
    const-string/jumbo p1, "uid "

    .line 93
    .line 94
    .line 95
    const-string v1, " cannot clear passwords for accounts of type: "

    .line 96
    .line 97
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    new-instance p1, Ljava/lang/SecurityException;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public final confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v4, p1

    .line 3
    move-object v8, p2

    .line 4
    move/from16 v1, p5

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    invoke-static {v9, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "AccountManagerService"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v6, "confirmCredentials: "

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v6, ", response "

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, ", expectActivityLaunch "

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move/from16 v6, p4

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v7, ", caller\'s uid "

    .line 55
    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v7, ", pid "

    .line 63
    .line 64
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move/from16 v6, p4

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$12;

    .line 103
    .line 104
    iget-object v5, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v7, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 107
    .line 108
    move-object v1, v12

    .line 109
    move-object v2, p0

    .line 110
    move-object v4, p1

    .line 111
    move/from16 v6, p4

    .line 112
    .line 113
    move-object v8, p2

    .line 114
    move-object/from16 v9, p3

    .line 115
    .line 116
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v1, "account is null"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string/jumbo v1, "response is null"

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 149
    .line 150
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const-string v3, "User "

    .line 155
    .line 156
    const-string v4, " trying to confirm account credentials for "

    .line 157
    .line 158
    invoke-static {v2, v1, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method

.method public final copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    move/from16 v1, p4

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    const-string v2, "AccountManagerService"

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    if-nez v9, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "Copying account "

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, " from user "

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, " to user "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    :try_start_0
    new-instance v13, Lcom/android/server/accounts/AccountManagerService$5;

    .line 77
    .line 78
    iget-object v5, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 81
    .line 82
    move-object v1, v13

    .line 83
    move-object v2, p0

    .line 84
    move-object v4, p1

    .line 85
    move-object/from16 v7, p2

    .line 86
    .line 87
    move-object v8, p1

    .line 88
    move/from16 v10, p3

    .line 89
    .line 90
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 106
    .line 107
    new-instance v0, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v1, "booleanResult"

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    :try_start_1
    invoke-interface {p1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    move-object v1, v0

    .line 125
    const-string v0, "Failed to report error back to the client."

    .line 126
    .line 127
    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_1
    return-void

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 132
    .line 133
    const-string v1, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public final createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 11

    .line 1
    iget v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 2
    .line 3
    const-string/jumbo v1, "uid"

    .line 4
    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "authTokenType"

    .line 12
    .line 13
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    invoke-virtual {v5, p3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 35
    .line 36
    filled-new-array {p3, v5}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const v5, 0x1040ab0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const/16 v3, 0xa

    .line 48
    .line 49
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-lez v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    move-object v3, p3

    .line 66
    move-object p3, v5

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v3, ""

    .line 69
    .line 70
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6, v4, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    :goto_1
    new-instance v5, Landroid/app/Notification$Builder;

    .line 88
    .line 89
    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v5, v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const v6, 0x108008a

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .line 103
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const v6, 0x106001c

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v6, 0x0

    .line 130
    const/high16 v8, 0x14000000

    .line 131
    .line 132
    move-object v7, p2

    .line 133
    move-object v10, v0

    .line 134
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {v1, p1, p4, v2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string p3, "android"

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 153
    .line 154
    .line 155
    move-result p4

    .line 156
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v4, 0x3e8

    .line 15
    .line 16
    if-ne v1, v4, :cond_0

    .line 17
    .line 18
    const-string v1, "account cannot be null"

    .line 19
    .line 20
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "packageName cannot be null"

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "userHandle cannot be null"

    .line 30
    .line 31
    .line 32
    move-object/from16 v4, p3

    .line 33
    .line 34
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const-string/jumbo v1, "user must be concrete"

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const v5, 0x7fffffff

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v4, v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    new-instance v5, Landroid/accounts/AccountAuthenticatorResponse;

    .line 59
    .line 60
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$17;

    .line 61
    .line 62
    invoke-direct {v6, p0, v4, v2, v1}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;ILandroid/accounts/Account;Landroid/os/RemoteCallback;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v6}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v6, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 69
    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    move-object v1, p0

    .line 73
    move-object/from16 v2, p1

    .line 74
    .line 75
    move-object/from16 v3, p2

    .line 76
    .line 77
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    :try_start_1
    iget-object v9, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    new-instance v14, Landroid/os/UserHandle;

    .line 88
    .line 89
    invoke-direct {v14, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const/high16 v12, 0x54000000

    .line 93
    .line 94
    const/4 v13, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :catch_0
    const-string v0, "Unknown package "

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v2, "AccountManagerService"

    .line 120
    .line 121
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 126
    .line 127
    const-string v1, "Can be called only by system UID"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "AccountManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "--checkin"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    array-length v3, p3

    .line 19
    move v4, v1

    .line 20
    :goto_0
    if-ge v4, v3, :cond_2

    .line 21
    .line 22
    aget-object v5, p3, v4

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_1
    if-nez v0, :cond_5

    .line 37
    .line 38
    const-string v0, "-c"

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    array-length v3, p3

    .line 43
    move v4, v1

    .line 44
    :goto_2
    if-ge v4, v3, :cond_4

    .line 45
    .line 46
    aget-object v5, p3, v4

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v2, v1

    .line 59
    :cond_5
    :goto_3
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 60
    .line 61
    const-string v3, "  "

    .line 62
    .line 63
    invoke-direct {v0, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_c

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "User "

    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, ":"

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 113
    .line 114
    .line 115
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 116
    .line 117
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter v4

    .line 126
    :try_start_0
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v4

    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0

    .line 137
    :cond_6
    const-string v8, "android"

    .line 138
    .line 139
    const/16 v7, 0x3e8

    .line 140
    .line 141
    const/4 v9, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    move-object v4, p0

    .line 144
    move-object v5, v3

    .line 145
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v6, "Accounts: "

    .line 152
    .line 153
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    array-length v6, v4

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    array-length v5, v4

    .line 168
    move v6, v1

    .line 169
    :goto_5
    if-ge v6, v5, :cond_7

    .line 170
    .line 171
    aget-object v7, v4, v6

    .line 172
    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v9, "  "

    .line 176
    .line 177
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v6, v6, 0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 198
    .line 199
    .line 200
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v4

    .line 203
    :try_start_1
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 204
    .line 205
    invoke-virtual {v5, v0}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 206
    .line 207
    .line 208
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 209
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 210
    .line 211
    .line 212
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 213
    .line 214
    monitor-enter v5

    .line 215
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v6

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v8, "Active Sessions: "

    .line 225
    .line 226
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eqz v8, :cond_8

    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    check-cast v8, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 266
    .line 267
    new-instance v9, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v10, "  "

    .line 273
    .line 274
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v6, v7}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :catchall_1
    move-exception p0

    .line 293
    goto/16 :goto_a

    .line 294
    .line 295
    :cond_8
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 297
    .line 298
    .line 299
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 300
    .line 301
    iget v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 302
    .line 303
    invoke-virtual {v4, p1, v0, p3, v5}, Landroid/content/pm/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 307
    .line 308
    monitor-enter v4

    .line 309
    :try_start_3
    iget v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 310
    .line 311
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 316
    if-nez v5, :cond_9

    .line 317
    .line 318
    goto/16 :goto_8

    .line 319
    .line 320
    :cond_9
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 321
    .line 322
    .line 323
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 324
    .line 325
    monitor-enter v5

    .line 326
    :try_start_4
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 327
    .line 328
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const-string v4, "Account visibility:"

    .line 333
    .line 334
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    check-cast v3, Ljava/util/HashMap;

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_b

    .line 352
    .line 353
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    check-cast v6, Landroid/accounts/Account;

    .line 358
    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v8, "  "

    .line 365
    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    iget-object v8, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Ljava/util/Map;

    .line 386
    .line 387
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-eqz v7, :cond_a

    .line 400
    .line 401
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    check-cast v7, Ljava/util/Map$Entry;

    .line 406
    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v9, "    "

    .line 413
    .line 414
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    check-cast v9, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v9, ", "

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :catchall_2
    move-exception p0

    .line 447
    goto :goto_9

    .line 448
    :cond_b
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 449
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 453
    .line 454
    .line 455
    goto/16 :goto_4

    .line 456
    .line 457
    :goto_9
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 458
    throw p0

    .line 459
    :catchall_3
    move-exception p0

    .line 460
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 461
    throw p0

    .line 462
    :goto_a
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 463
    throw p0

    .line 464
    :catchall_4
    move-exception p0

    .line 465
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 466
    throw p0

    .line 467
    :cond_c
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mAccountHistory:Lcom/android/internal/util/RingBuffer;

    .line 468
    .line 469
    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    if-nez p1, :cond_e

    .line 474
    .line 475
    const-string p1, "Account event dump: "

    .line 476
    .line 477
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 481
    .line 482
    .line 483
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAccountHistory:Lcom/android/internal/util/RingBuffer;

    .line 484
    .line 485
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object p0

    .line 489
    check-cast p0, [Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;

    .line 490
    .line 491
    array-length p1, p0

    .line 492
    :goto_b
    if-ge v1, p1, :cond_d

    .line 493
    .line 494
    aget-object p2, p0, v1

    .line 495
    .line 496
    const-string/jumbo p3, "description"

    .line 497
    .line 498
    .line 499
    iget-object v2, p2, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDescription:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v0, p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 502
    .line 503
    .line 504
    const-string/jumbo p3, "date"

    .line 505
    .line 506
    .line 507
    iget-object p2, p2, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDate:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 513
    .line 514
    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 516
    .line 517
    goto :goto_b

    .line 518
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 522
    .line 523
    .line 524
    :cond_e
    return-void
.end method

.method public final editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AccountManagerService"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "editProperties: accountType "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", response "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", expectActivityLaunch "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", caller\'s uid "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ", pid "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    if-eqz p1, :cond_4

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string/jumbo p0, "uid "

    .line 90
    .line 91
    .line 92
    const-string p1, " cannot edit authenticator properites for account type: "

    .line 93
    .line 94
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance p1, Ljava/lang/SecurityException;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$16;

    .line 113
    .line 114
    move-object v4, v0

    .line 115
    move-object v5, p0

    .line 116
    move-object v7, p1

    .line 117
    move-object v8, p2

    .line 118
    move v9, p3

    .line 119
    move-object v10, p2

    .line 120
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p1, "accountType is null"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    const-string/jumbo p1, "response is null"

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 8

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p4

    .line 9
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, p2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_1
    if-ge v3, v2, :cond_3

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eq v6, v7, :cond_1

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    if-eq v6, v7, :cond_1

    .line 33
    .line 34
    if-eqz p5, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    if-ne v6, v7, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-array p1, p1, [Landroid/accounts/Account;

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [Landroid/accounts/Account;

    .line 64
    .line 65
    return-object p0
.end method

.method public final filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 10
    .line 11
    if-ltz p1, :cond_c

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    if-ne p3, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_c

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_c

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    new-array p3, v0, [Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x10402e2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    array-length v2, p3

    .line 60
    move v3, v0

    .line 61
    :goto_0
    if-ge v3, v2, :cond_3

    .line 62
    .line 63
    aget-object v4, p3, v3

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, ";"

    .line 68
    .line 69
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_4
    const-string v1, ""

    .line 104
    .line 105
    if-eqz p4, :cond_5

    .line 106
    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    .line 109
    invoke-virtual {p0, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_7

    .line 114
    .line 115
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz p0, :cond_7

    .line 118
    .line 119
    move-object v1, p0

    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    array-length p4, p3

    .line 124
    move v2, v0

    .line 125
    :goto_1
    if-ge v2, p4, :cond_7

    .line 126
    .line 127
    aget-object v3, p3, v2

    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 130
    .line 131
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    move-object v1, v3

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string/jumbo p4, "filterSharedAccounts#Package not found "

    .line 149
    .line 150
    .line 151
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    const-string p3, "AccountManagerService"

    .line 166
    .line 167
    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_7
    :goto_3
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_b

    .line 190
    .line 191
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    check-cast p3, Ljava/util/Map$Entry;

    .line 196
    .line 197
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p4

    .line 201
    check-cast p4, Landroid/accounts/Account;

    .line 202
    .line 203
    iget-object v2, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_8

    .line 210
    .line 211
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    check-cast p3, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_8
    array-length v2, p1

    .line 222
    move v3, v0

    .line 223
    :goto_5
    if-ge v3, v2, :cond_a

    .line 224
    .line 225
    aget-object v4, p1, v3

    .line 226
    .line 227
    invoke-virtual {v4, p4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_9

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    check-cast p3, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_b
    return-object p0

    .line 248
    :cond_c
    :goto_6
    return-object p2
.end method

.method public final finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p4

    .line 8
    .line 9
    move/from16 v3, p5

    .line 10
    .line 11
    const-string/jumbo v4, "failed to decrypt session bundle"

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-static {v1, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const-string v6, "AccountManagerService"

    .line 23
    .line 24
    const/4 v9, 0x2

    .line 25
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v10, "finishSession: response "

    .line 34
    .line 35
    .line 36
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v10, ", expectActivityLaunch "

    .line 43
    .line 44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move/from16 v10, p3

    .line 48
    .line 49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v11, ", caller\'s uid "

    .line 53
    .line 54
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v11, ", caller\'s user id "

    .line 61
    .line 62
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v11, ", pid "

    .line 73
    .line 74
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v11, ", for user id "

    .line 85
    .line 86
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move/from16 v10, p3

    .line 101
    .line 102
    :goto_0
    if-eqz v8, :cond_1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const/4 v5, 0x0

    .line 106
    :goto_1
    const-string/jumbo v9, "response cannot be null"

    .line 107
    .line 108
    .line 109
    invoke-static {v5, v9}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_8

    .line 125
    .line 126
    invoke-virtual {v0, v3, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_2

    .line 131
    .line 132
    const/16 v1, 0x64

    .line 133
    .line 134
    const-string v2, "User is not allowed to add an account!"

    .line 135
    .line 136
    invoke-static {v8, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/16 v9, 0x8

    .line 148
    .line 149
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v11, v1}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    if-nez v11, :cond_3

    .line 158
    .line 159
    invoke-static {v8, v9, v4}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    const-string v1, "accountType"

    .line 166
    .line 167
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_4

    .line 176
    .line 177
    const-string v0, "accountType is empty"

    .line 178
    .line 179
    const/4 v1, 0x7

    .line 180
    invoke-static {v8, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_4
    if-eqz v2, :cond_5

    .line 185
    .line 186
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 187
    .line 188
    .line 189
    :cond_5
    const-string/jumbo v1, "callerUid"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    const-string/jumbo v1, "callerPid"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v3, v7, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_6

    .line 206
    .line 207
    const/16 v1, 0x65

    .line 208
    .line 209
    const-string v2, "User cannot modify accounts of this type (policy)."

    .line 210
    .line 211
    invoke-static {v8, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_6
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    const-string v2, "action_called_account_session_finish"

    .line 227
    .line 228
    const-string v3, "accounts"

    .line 229
    .line 230
    const-wide/16 v4, -0x1

    .line 231
    .line 232
    move-object/from16 v1, p0

    .line 233
    .line 234
    move-object v6, v9

    .line 235
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 236
    .line 237
    .line 238
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$7;

    .line 239
    .line 240
    move-object v1, v15

    .line 241
    move-object/from16 v2, p0

    .line 242
    .line 243
    move-object v3, v9

    .line 244
    move-object/from16 v4, p1

    .line 245
    .line 246
    move-object v5, v12

    .line 247
    move/from16 v6, p3

    .line 248
    .line 249
    move-object v7, v11

    .line 250
    move-object v8, v12

    .line 251
    invoke-direct/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .line 256
    .line 257
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :goto_2
    const/4 v1, 0x3

    .line 267
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_7

    .line 272
    .line 273
    const-string v1, "Failed to decrypt session bundle!"

    .line 274
    .line 275
    invoke-static {v6, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .line 277
    .line 278
    :cond_7
    invoke-static {v8, v9, v4}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 283
    .line 284
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    const-string v2, "User "

    .line 289
    .line 290
    const-string v4, " trying to finish session for "

    .line 291
    .line 292
    const-string v5, " without cross user permission"

    .line 293
    .line 294
    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    const-string/jumbo v1, "sessionBundle is empty"

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0
.end method

.method public final getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 6
    .line 7
    invoke-virtual {v0, v6, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const-string v1, "AccountManagerService"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "getAccount: accountType "

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", response "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", features "

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", caller\'s uid "

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ", pid "

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_0
    if-eqz p1, :cond_3

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    move-object v0, p0

    .line 101
    move-object v1, v2

    .line 102
    move-object v2, p2

    .line 103
    move v3, v6

    .line 104
    move-object v4, p4

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$18;

    .line 119
    .line 120
    invoke-direct {v3, p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    .line 124
    .line 125
    const/4 v8, 0x1

    .line 126
    move-object v0, p1

    .line 127
    move-object v1, p0

    .line 128
    move-object v4, p2

    .line 129
    move-object v5, p3

    .line 130
    move-object v7, p4

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_0
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string p1, "accountType is null"

    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    const-string/jumbo p1, "response is null"

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x1000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    iget v2, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-eq v3, v4, :cond_2

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    if-ne v3, v4, :cond_1

    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-object v1
.end method

.method public final getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "account cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "packageName cannot be null"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo p1, "uid "

    .line 38
    .line 39
    .line 40
    const-string p2, " cannot get secrets for accounts of type: "

    .line 41
    .line 42
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p1, Ljava/lang/SecurityException;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v4, "android:accounts:key_legacy_visible"

    .line 61
    .line 62
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-static {p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :cond_2
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x2

    .line 82
    return p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    :try_start_1
    const-string v4, "android:accounts:key_legacy_not_visible"

    .line 86
    .line 87
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    invoke-static {p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return p0

    .line 103
    :cond_4
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x4

    .line 107
    return p0

    .line 108
    :cond_5
    :try_start_2
    iget v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 109
    .line 110
    invoke-static {v0, v4, p2}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(IILjava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x3

    .line 120
    return p0

    .line 121
    :cond_6
    :try_start_3
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    return p0

    .line 133
    :goto_1
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 6
    .line 7
    invoke-virtual {v0, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    move-object v0, v4

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move-object v3, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    .line 3
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 5
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    const-string v1, " with packageName="

    .line 7
    invoke-static {v0, p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 9
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 10
    :cond_3
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 11
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 14
    throw p0
.end method

.method public final getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 8

    .line 24
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string p0, "AccountManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getAccountsAndVisibilityForPackage#Package not found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 32
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 33
    invoke-virtual {p0, v6, p4, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 34
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 35
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 37
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 38
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 39
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p4, v0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v7, -0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p3

    .line 17
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)[Landroid/accounts/Account;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p3, "Could not get accounts for user "

    .line 26
    .line 27
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "AccountManagerService"

    .line 38
    .line 39
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    new-array p0, p0, [Landroid/accounts/Account;

    .line 44
    .line 45
    return-object p0
.end method

.method public final getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)[Landroid/accounts/Account;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    if-eq p2, v1, :cond_1

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "User "

    .line 31
    .line 32
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p3, " trying to get account for "

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_0
    const-string v1, "AccountManagerService"

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    const-string/jumbo v3, "getAccounts: accountType "

    .line 68
    .line 69
    .line 70
    const-string v4, ", caller\'s uid "

    .line 71
    .line 72
    invoke-static {v3, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, ", pid "

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v3, -0x1

    .line 112
    if-eq p5, v3, :cond_3

    .line 113
    .line 114
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    check-cast v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move-object p3, p4

    .line 132
    move p5, v0

    .line 133
    :cond_4
    :goto_1
    const/4 p4, 0x1

    .line 134
    invoke-virtual {p0, p5, p2, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    move-object v0, p4

    .line 139
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_5

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    move-object p4, p1

    .line 167
    :cond_6
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    move p2, p5

    .line 176
    move p5, p6

    .line 177
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    .line 178
    .line 179
    .line 180
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 182
    .line 183
    .line 184
    return-object p0

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_7
    :goto_2
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 191
    .line 192
    return-object p0
.end method

.method public final getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 12
    .line 13
    move-object/from16 v9, p4

    .line 14
    .line 15
    invoke-virtual {v1, v8, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "AccountManagerService"

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v3, "getAccounts: accountType "

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ", response "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ", features "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ", caller\'s uid "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ", pid "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_0
    if-eqz v7, :cond_5

    .line 86
    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const-string v10, "accounts"

    .line 105
    .line 106
    if-nez v3, :cond_1

    .line 107
    .line 108
    new-instance v0, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .line 112
    .line 113
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 114
    .line 115
    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-interface {p1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    move-object v2, v0

    .line 124
    const-string v0, "Cannot respond to caller do to exception."

    .line 125
    .line 126
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v6, :cond_3

    .line 139
    .line 140
    array-length v1, v6

    .line 141
    if-nez v1, :cond_2

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    move-object v1, v10

    .line 148
    move-object v2, p0

    .line 149
    move-object v4, p1

    .line 150
    move-object/from16 v5, p2

    .line 151
    .line 152
    move-object/from16 v6, p3

    .line 153
    .line 154
    move v7, v8

    .line 155
    move-object/from16 v8, p4

    .line 156
    .line 157
    move v9, v13

    .line 158
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 171
    move-object v1, p0

    .line 172
    move-object v2, v3

    .line 173
    move-object/from16 v3, p2

    .line 174
    .line 175
    move v4, v8

    .line 176
    move-object/from16 v5, p4

    .line 177
    .line 178
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v1, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v1}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :goto_2
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    const-string v1, "accountType is null"

    .line 204
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    const-string/jumbo v1, "response is null"

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0
.end method

.method public final getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/16 v1, 0x3e8

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v1, p0

    .line 49
    move-object v2, p1

    .line 50
    move-object v4, p2

    .line 51
    move-object v5, p3

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)[Landroid/accounts/Account;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    const/4 v7, 0x1

    .line 58
    move-object v1, p0

    .line 59
    move-object v2, p1

    .line 60
    move-object v4, p2

    .line 61
    move-object v5, p3

    .line 62
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)[Landroid/accounts/Account;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p3, "Couldn\'t determine the packageUid for "

    .line 71
    .line 72
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "AccountManagerService"

    .line 86
    .line 87
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 91
    .line 92
    return-object p0
.end method

.method public final getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v2, p0

    .line 20
    move-object v5, p1

    .line 21
    move-object v6, p3

    .line 22
    move v7, p2

    .line 23
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)[Landroid/accounts/Account;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string/jumbo p1, "getAccountsForPackage() called from unauthorized uid "

    .line 31
    .line 32
    .line 33
    const-string p3, " with uid="

    .line 34
    .line 35
    invoke-static {v0, p2, p1, p3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    .line 10
    aget v4, p1, v3

    .line 11
    .line 12
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const-string v9, "android"

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v5, p0

    .line 28
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    array-length v6, v5

    .line 33
    move v7, v2

    .line 34
    :goto_1
    if-ge v7, v6, :cond_1

    .line 35
    .line 36
    aget-object v8, v5, v7

    .line 37
    .line 38
    new-instance v9, Landroid/accounts/AccountAndUser;

    .line 39
    .line 40
    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    new-array p0, p0, [Landroid/accounts/AccountAndUser;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, [Landroid/accounts/AccountAndUser;

    .line 63
    .line 64
    return-object p0
.end method

.method public final getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const-string v1, "Method should not be called with cacheLock"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->queryAccountsFromDb(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)[Landroid/accounts/Account;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    array-length v0, p2

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, [Landroid/accounts/Account;

    .line 46
    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    if-nez p2, :cond_2

    .line 49
    .line 50
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    array-length v0, p2

    .line 54
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    move-object v2, p2

    .line 59
    check-cast v2, [Landroid/accounts/Account;

    .line 60
    .line 61
    move-object v0, p0

    .line 62
    move-object v1, p1

    .line 63
    move v3, p3

    .line 64
    move-object v4, p4

    .line 65
    move v5, p5

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->queryAccountsFromDb(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)[Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    array-length v0, p2

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_4
    move-object v2, p2

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-object p2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p2

    .line 99
    :try_start_2
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v1, 0x0

    .line 110
    move v2, v1

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, [Landroid/accounts/Account;

    .line 122
    .line 123
    array-length v3, v3

    .line 124
    add-int/2addr v2, v3

    .line 125
    goto :goto_0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    if-nez v2, :cond_7

    .line 129
    .line 130
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 131
    .line 132
    monitor-exit p2

    .line 133
    return-object p0

    .line 134
    :cond_7
    new-array v0, v2, [Landroid/accounts/Account;

    .line 135
    .line 136
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move v3, v1

    .line 147
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, [Landroid/accounts/Account;

    .line 158
    .line 159
    array-length v5, v4

    .line 160
    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    .line 162
    .line 163
    array-length v4, v4

    .line 164
    add-int/2addr v3, v4

    .line 165
    goto :goto_1

    .line 166
    :cond_8
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    move-object v2, v0

    .line 168
    :goto_2
    move-object v0, p0

    .line 169
    move-object v1, p1

    .line 170
    move v3, p3

    .line 171
    move-object v4, p4

    .line 172
    move v5, p5

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    throw p0
.end method

.method public final getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v4, v1

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move v5, p2

    .line 26
    move-object v6, p3

    .line 27
    move v7, p5

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    new-array p5, p4, [Landroid/accounts/Account;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v2, v1

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v2, v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/accounts/Account;

    .line 61
    .line 62
    aput-object v3, p5, v2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSyncDeCeAccountsExecuted:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    if-nez p4, :cond_3

    .line 72
    .line 73
    const/16 p4, 0x3e8

    .line 74
    .line 75
    if-eq p2, p4, :cond_3

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService;->mSyncDeCeAccountsExecuted:Z

    .line 78
    .line 79
    const-string p2, "Return empty accounts list after sync db. , caller : "

    .line 80
    .line 81
    const-string p4, ", userId : "

    .line 82
    .line 83
    invoke-static {p2, p3, p4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget p3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p3, ", userUnlocked : "

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 98
    .line 99
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p4, ", isCacheEmpty : "

    .line 107
    .line 108
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 p2, 0x1

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 127
    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 149
    .line 150
    new-instance p3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo p4, "dumpAuthenticatorCache : "

    .line 153
    .line 154
    .line 155
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p0, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    return-object p5
.end method

.method public final getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Could not get accounts for user "

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "AccountManagerService"

    .line 23
    .line 24
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [Landroid/accounts/Account;

    .line 29
    .line 30
    return-object p0
.end method

.method public final getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 23
    .line 24
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 25
    .line 26
    aput v4, v2, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move/from16 v11, p4

    .line 10
    .line 11
    move-object/from16 v8, p6

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v8, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    const-string v2, "AccountManagerService"

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v6, "getAuthToken: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, ", response "

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v6, ", authTokenType "

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v6, ", notifyOnAuthFailure "

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, ", expectActivityLaunch "

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move/from16 v6, p5

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v7, ", caller\'s uid "

    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v7, ", pid "

    .line 84
    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move/from16 v6, p5

    .line 104
    .line 105
    :goto_0
    if-eqz v4, :cond_1

    .line 106
    .line 107
    move v7, v1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v7, 0x0

    .line 110
    :goto_1
    const-string/jumbo v12, "response cannot be null"

    .line 111
    .line 112
    .line 113
    invoke-static {v7, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 v7, 0x7

    .line 117
    if-nez v9, :cond_2

    .line 118
    .line 119
    :try_start_0
    const-string/jumbo v0, "getAuthToken called with null account"

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const-string v0, "account is null"

    .line 126
    .line 127
    invoke-interface {v4, v7, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    if-nez v10, :cond_3

    .line 134
    .line 135
    const-string/jumbo v0, "getAuthToken called with null authTokenType"

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    const-string v0, "authTokenType is null"

    .line 142
    .line 143
    invoke-interface {v4, v7, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :goto_2
    const-string v1, "Failed to report error back to the client."

    .line 148
    .line 149
    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 158
    .line 159
    .line 160
    move-result-wide v12

    .line 161
    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 166
    .line 167
    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v5}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget v3, v15, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 174
    .line 175
    invoke-virtual {v14, v5, v3}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 179
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    if-eqz v3, :cond_4

    .line 183
    .line 184
    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    .line 187
    .line 188
    iget-boolean v3, v3, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 189
    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    move/from16 v18, v1

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    const/16 v18, 0x0

    .line 196
    .line 197
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-nez v18, :cond_6

    .line 202
    .line 203
    invoke-virtual {v0, v9, v10, v14, v7}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_5

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_5
    const/4 v12, 0x0

    .line 211
    goto :goto_5

    .line 212
    :cond_6
    :goto_4
    move v12, v1

    .line 213
    :goto_5
    const-string v3, "androidPackageName"

    .line 214
    .line 215
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 220
    .line 221
    .line 222
    move-result-wide v19

    .line 223
    :try_start_2
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    .line 231
    .line 232
    if-eqz v13, :cond_b

    .line 233
    .line 234
    if-eqz v3, :cond_b

    .line 235
    .line 236
    invoke-static {v3, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_b

    .line 241
    .line 242
    const-string/jumbo v3, "callerUid"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v3, "callerPid"

    .line 249
    .line 250
    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    invoke-virtual {v8, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    if-eqz v11, :cond_7

    .line 259
    .line 260
    const-string/jumbo v3, "notifyOnAuthFailure"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 267
    .line 268
    .line 269
    move-result-wide v19

    .line 270
    :try_start_3
    invoke-virtual {v0, v7, v13}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(ILjava/lang/String;)[B

    .line 271
    .line 272
    .line 273
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    const-string v1, "accountType"

    .line 275
    .line 276
    const-string v3, "authAccount"

    .line 277
    .line 278
    const-string v5, "authtoken"

    .line 279
    .line 280
    if-nez v18, :cond_8

    .line 281
    .line 282
    if-eqz v12, :cond_8

    .line 283
    .line 284
    :try_start_4
    invoke-static {v9, v15, v10}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-eqz v0, :cond_8

    .line 289
    .line 290
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v13, v2}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Landroid/os/Bundle;

    .line 296
    .line 297
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v4, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    .line 315
    .line 316
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :cond_8
    if-eqz v18, :cond_a

    .line 324
    .line 325
    :try_start_5
    invoke-static {v15, v9, v10, v13, v7}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_a

    .line 330
    .line 331
    iget-object v6, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v13, v6}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const/4 v6, 0x2

    .line 337
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-eqz v6, :cond_9

    .line 342
    .line 343
    const-string/jumbo v6, "getAuthToken: cache hit ofr custom token authenticator."

    .line 344
    .line 345
    .line 346
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    :cond_9
    new-instance v2, Landroid/os/Bundle;

    .line 350
    .line 351
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v6, v0, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v5, "android.accounts.expiry"

    .line 360
    .line 361
    iget-wide v6, v0, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    .line 362
    .line 363
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v4, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 377
    .line 378
    .line 379
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :cond_a
    :try_start_6
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$8;

    .line 384
    .line 385
    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 386
    .line 387
    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 388
    .line 389
    move-object v1, v0

    .line 390
    move-object/from16 v2, p0

    .line 391
    .line 392
    move-object/from16 v16, v3

    .line 393
    .line 394
    move-object v3, v15

    .line 395
    move-object/from16 v4, p1

    .line 396
    .line 397
    move/from16 v6, p5

    .line 398
    .line 399
    move-object/from16 v17, v7

    .line 400
    .line 401
    move-object/from16 v7, v16

    .line 402
    .line 403
    move-object/from16 v8, p6

    .line 404
    .line 405
    move-object/from16 v9, p2

    .line 406
    .line 407
    move-object/from16 v10, p3

    .line 408
    .line 409
    move/from16 v11, p4

    .line 410
    .line 411
    move-object/from16 v21, v15

    .line 412
    .line 413
    move/from16 v15, v18

    .line 414
    .line 415
    move-object/from16 v16, v17

    .line 416
    .line 417
    move-object/from16 v17, v21

    .line 418
    .line 419
    invoke-direct/range {v1 .. v17}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 423
    .line 424
    .line 425
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :goto_6
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :cond_b
    const-string v0, "Uid "

    .line 434
    .line 435
    const-string v1, " is attempting to illegally masquerade as package "

    .line 436
    .line 437
    const-string v2, "!"

    .line 438
    .line 439
    invoke-static {v14, v0, v1, v13, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/SecurityException;

    .line 444
    .line 445
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v1

    .line 449
    :catchall_1
    move-exception v0

    .line 450
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :catchall_2
    move-exception v0

    .line 455
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    .line 457
    .line 458
    throw v0
.end method

.method public final getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    const-string v3, "accountType cannot be null"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_1
    const-string v1, "authTokenType cannot be null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;

    .line 49
    .line 50
    move-object v3, v0

    .line 51
    move-object v4, p0

    .line 52
    move-object v6, p1

    .line 53
    move-object v7, p2

    .line 54
    move-object v8, p2

    .line 55
    move-object v9, p3

    .line 56
    invoke-direct/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 72
    .line 73
    const-string/jumbo p1, "can only call from system"

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "getAuthenticatorTypes: for user id "

    .line 15
    .line 16
    .line 17
    const-string v3, " caller\'s uid "

    .line 18
    .line 19
    const-string v4, ", pid "

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    :cond_1
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const-string v1, "User "

    .line 77
    .line 78
    const-string v2, " tying to get authenticator types for "

    .line 79
    .line 80
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(II)[Landroid/accounts/AuthenticatorDescription;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final getAuthenticatorTypesInternal(II)[Landroid/accounts/AuthenticatorDescription;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/RegisteredServicesCache;->updateServices(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 36
    .line 37
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 40
    .line 41
    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p2, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(IILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    new-array p0, p0, [Landroid/accounts/AuthenticatorDescription;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, [Landroid/accounts/AuthenticatorDescription;

    .line 68
    .line 69
    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    aget-object v1, p1, v0

    .line 17
    .line 18
    array-length v2, p1

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    array-length v2, p1

    .line 24
    const v3, 0x7fffffff

    .line 25
    .line 26
    .line 27
    move v4, v0

    .line 28
    :goto_0
    if-ge v4, v2, :cond_3

    .line 29
    .line 30
    aget-object v5, p1, v4

    .line 31
    .line 32
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    if-ge v6, v3, :cond_2

    .line 43
    .line 44
    move-object v1, v5

    .line 45
    move v3, v6

    .line 46
    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return-object v1
.end method

.method public final getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "account cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo p0, "uid %s cannot get secrets for account %s"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/SecurityException;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :try_start_5
    throw p0

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    :catchall_2
    move-exception p0

    .line 82
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "getPassword: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", caller\'s uid "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", pid "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 92
    .line 93
    const-string/jumbo p1, "uid "

    .line 94
    .line 95
    .line 96
    const-string v1, " cannot get secrets for accounts of type: "

    .line 97
    .line 98
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance p1, Ljava/lang/SecurityException;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string p1, "account is null"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "getPreviousName: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", caller\'s uid "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", pid "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    const-string v0, "account cannot be null"

    .line 53
    .line 54
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    const/4 v4, 0x2

    .line 18
    if-ge v3, v4, :cond_1

    .line 19
    .line 20
    aget-object v4, v2, v3

    .line 21
    .line 22
    iget-object v5, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 23
    .line 24
    check-cast v5, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    return-object v1

    .line 78
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-array v0, v0, [Landroid/accounts/Account;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit p1

    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getTypesForCaller(IIZ)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 46
    .line 47
    invoke-virtual {p2, v2, p1}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(II)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    :cond_1
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 56
    .line 57
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-object v0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    const-string v2, "android.hardware.type.automotive"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const-string v1, "AccountManagerService"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Removing user "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " due to exception ("

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ") reading its account database"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne p1, v1, :cond_0

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    const-string v1, "AccountManagerService"

    .line 58
    .line 59
    const-string v2, "Switching to system user first"

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception v1

    .line 74
    const-string v2, "AccountManagerService"

    .line 75
    .line 76
    const-string v3, "Could not switch to 0: "

    .line 77
    .line 78
    invoke-static {v3, v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_1

    .line 90
    .line 91
    const-string p0, "AccountManagerService"

    .line 92
    .line 93
    const-string/jumbo v1, "could not remove user "

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    throw v0

    .line 100
    :cond_2
    throw v0

    .line 101
    :catch_2
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    new-instance v0, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 113
    .line 114
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V

    .line 121
    .line 122
    .line 123
    const-string v0, "AccountManagerService"

    .line 124
    .line 125
    const-string v1, "Account Backup Controller is registered"

    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 131
    .line 132
    iget v1, v0, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;->mRebootCntByAccounts:I

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    add-int/2addr v1, v2

    .line 136
    iput v1, v0, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;->mRebootCntByAccounts:I

    .line 137
    .line 138
    const-string/jumbo v3, "reboot_cnt_by_accounts"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 145
    .line 146
    iget v1, v0, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;->mRebootCntByAccounts:I

    .line 147
    .line 148
    const/4 v2, 0x3

    .line 149
    if-lt v1, v2, :cond_4

    .line 150
    .line 151
    const-string v0, "AccountManagerService"

    .line 152
    .line 153
    const-string v1, "Can\'t restore Accounts DB. Remove files and Recreate UserAccounts"

    .line 154
    .line 155
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Ljava/io/File;

    .line 168
    .line 169
    const-string v2, "accounts_ce.db"

    .line 170
    .line 171
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Ljava/io/File;

    .line 185
    .line 186
    const-string v2, "accounts_de.db"

    .line 187
    .line 188
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 198
    .line 199
    monitor-enter v0

    .line 200
    :try_start_2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 203
    .line 204
    .line 205
    monitor-exit v0

    .line 206
    goto :goto_1

    .line 207
    :catchall_0
    move-exception p0

    .line 208
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    throw p0

    .line 210
    :cond_4
    :try_start_3
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v2, Ljava/io/File;

    .line 215
    .line 216
    const-string v3, "accounts_ce.db"

    .line 217
    .line 218
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v3, Ljava/io/File;

    .line 226
    .line 227
    const-string v4, "accounts_de.db"

    .line 228
    .line 229
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;->getBackupAccountsCeFile(I)Ljava/io/File;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;->getBackupAccountsDeFile(I)Ljava/io/File;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-eqz v1, :cond_5

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    if-eqz v0, :cond_5

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_5

    .line 255
    .line 256
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 260
    .line 261
    .line 262
    const/16 v0, 0x1b0

    .line 263
    .line 264
    const/4 v1, -0x1

    .line 265
    invoke-static {v2, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 269
    .line 270
    .line 271
    const-string v0, "AccountManagerService"

    .line 272
    .line 273
    const-string v1, "Success to restore DB"

    .line 274
    .line 275
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :catch_3
    move-exception v0

    .line 280
    const-string v1, "Exception occurs while restoring. error : "

    .line 281
    .line 282
    const-string v2, "AccountBackupController"

    .line 283
    .line 284
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_5
    const-string v0, "AccountManagerService"

    .line 288
    .line 289
    const-string v1, "Fail to restore DB"

    .line 290
    .line 291
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0
.end method

.method public final getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 9

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Ljava/io/File;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v5, Ljava/io/File;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "accounts_de.db"

    .line 45
    .line 46
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 57
    .line 58
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {v5, v6, p1, v2, v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 72
    .line 73
    .line 74
    move v4, v3

    .line 75
    move-object v2, v5

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_0
    const/4 v4, 0x0

    .line 80
    :goto_0
    iget-object v5, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 81
    .line 82
    iget-object v5, v5, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 83
    .line 84
    iget-boolean v5, v5, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    .line 85
    .line 86
    if-nez v5, :cond_1

    .line 87
    .line 88
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 89
    .line 90
    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    const-string v5, "AccountManagerService"

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " is unlocked - opening CE database"

    .line 107
    .line 108
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object v5, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 122
    .line 123
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    new-instance v6, Ljava/io/File;

    .line 125
    .line 126
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance v7, Ljava/io/File;

    .line 132
    .line 133
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v8, "accounts_ce.db"

    .line 138
    .line 139
    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 150
    .line 151
    invoke-virtual {p1, v6}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 152
    .line 153
    .line 154
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_1

    .line 162
    :catchall_2
    move-exception p0

    .line 163
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 164
    :try_start_6
    throw p0

    .line 165
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 166
    :try_start_7
    throw p0

    .line 167
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 168
    .line 169
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 170
    .line 171
    .line 172
    :cond_2
    monitor-exit v1

    .line 173
    return-object v2

    .line 174
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    throw p0
.end method

.method public final getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AccountManagerService"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    filled-new-array {p1, p2, v2, v3}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string/jumbo v3, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    const-string v2, "account cannot be null"

    .line 41
    .line 42
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "key cannot be null"

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p1, "User "

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " data is locked. callingUid "

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    return-object v4

    .line 96
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 105
    .line 106
    .line 107
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-nez v2, :cond_2

    .line 109
    .line 110
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :cond_2
    :try_start_1
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_3
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 128
    .line 129
    const-string/jumbo p1, "uid "

    .line 130
    .line 131
    .line 132
    const-string p2, " cannot get user data for accounts of type: "

    .line 133
    .line 134
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance p1, Ljava/lang/SecurityException;

    .line 139
    .line 140
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    return-object p0
.end method

.method public final grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v5, v3, v5

    .line 30
    .line 31
    if-ltz v5, :cond_1

    .line 32
    .line 33
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v6, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "accounts_id"

    .line 51
    .line 52
    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "auth_token_type"

    .line 56
    .line 57
    invoke-virtual {v6, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string/jumbo v7, "uid"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v3, "grants"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :goto_0
    invoke-static {p3, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 88
    .line 89
    .line 90
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 111
    .line 112
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-direct {v2, v0, p1, p3, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    return-void

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    goto :goto_3

    .line 125
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    throw p0

    .line 127
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_4
    const-string p0, "AccountManagerService"

    .line 130
    .line 131
    const-string/jumbo p1, "grantAppPermission: called with invalid arguments"

    .line 132
    .line 133
    .line 134
    new-instance p2, Ljava/lang/Exception;

    .line 135
    .line 136
    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, p2

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    aget-object v0, p2, v2

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v3, 0x4

    .line 30
    if-ne v0, v3, :cond_2

    .line 31
    .line 32
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-class v2, Landroid/accounts/ChooseAccountActivity;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "accounts"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    new-instance p2, Landroid/accounts/AccountManagerResponse;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "accountManagerResponse"

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string p1, "androidPackageName"

    .line 57
    .line 58
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    :goto_1
    array-length p0, p2

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    new-instance p0, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    aget-object p3, p2, v2

    .line 84
    .line 85
    iget-object p3, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "authAccount"

    .line 88
    .line 89
    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    aget-object p2, p2, v2

    .line 93
    .line 94
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 95
    .line 96
    const-string p3, "accountType"

    .line 97
    .line 98
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 13
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const v0, 0x7fffffff

    .line 6
    const-string/jumbo v1, "user must be concrete"

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "hasAccountAccess#Package not found "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can be called only by system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0, p5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p5, 0x2

    .line 11
    const-string v1, "AccountManagerService"

    .line 12
    .line 13
    invoke-static {v1, p5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    new-instance p5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "hasFeatures: "

    .line 22
    .line 23
    .line 24
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", response "

    .line 31
    .line 32
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", features "

    .line 39
    .line 40
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, ", caller\'s uid "

    .line 48
    .line 49
    const-string v4, ", userId "

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v4, p5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", pid "

    .line 58
    .line 59
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    invoke-static {v1, p5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    const/4 p5, 0x0

    .line 77
    const/4 v2, 0x1

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    move v3, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v3, p5

    .line 83
    :goto_0
    const-string v4, "account cannot be null"

    .line 84
    .line 85
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    move v3, v2

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move v3, p5

    .line 93
    :goto_1
    const-string/jumbo v4, "response cannot be null"

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    if-eqz p3, :cond_3

    .line 100
    .line 101
    move v3, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move v3, p5

    .line 104
    :goto_2
    const-string/jumbo v4, "features cannot be null"

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eq p4, v3, :cond_5

    .line 115
    .line 116
    const/16 v3, 0x3e8

    .line 117
    .line 118
    if-eq v0, v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p2, "User "

    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p2, " trying to check account features for "

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_5
    :goto_3
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 164
    .line 165
    if-nez v3, :cond_6

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    invoke-virtual {p0, v0, p4, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p5

    .line 172
    check-cast p5, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p5

    .line 178
    :goto_4
    if-eqz p5, :cond_7

    .line 179
    .line 180
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    new-instance p4, Lcom/android/server/accounts/AccountManagerService$12;

    .line 189
    .line 190
    move-object v2, p4

    .line 191
    move-object v3, p0

    .line 192
    move-object v5, p1

    .line 193
    move-object v6, p2

    .line 194
    move-object v7, p3

    .line 195
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p4}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :catchall_0
    move-exception p0

    .line 206
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_7
    const-string/jumbo p0, "caller uid "

    .line 211
    .line 212
    .line 213
    const-string p1, " cannot access "

    .line 214
    .line 215
    const-string p2, " accounts"

    .line 216
    .line 217
    invoke-static {v0, p0, p1, v3, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string p1, "  "

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    new-instance p1, Ljava/lang/SecurityException;

    .line 231
    .line 232
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1
.end method

.method public final installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    const-string v4, "android"

    .line 15
    .line 16
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 17
    .line 18
    iget v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    .line 19
    .line 20
    move-object v3, p3

    .line 21
    move-object v7, p2

    .line 22
    move v8, p4

    .line 23
    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "accountType cannot be null"

    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v1, "authToken cannot be null"

    .line 11
    .line 12
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "AccountManagerService"

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v1, "AccountManagerService"

    .line 25
    .line 26
    const-string/jumbo v2, "invalidateAuthToken: accountType "

    .line 27
    .line 28
    .line 29
    const-string v3, ", caller\'s uid "

    .line 30
    .line 31
    const-string v4, ", pid "

    .line 32
    .line 33
    invoke-static {v0, v2, p1, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 66
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    .line 79
    .line 80
    :try_start_3
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :try_start_4
    check-cast v3, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroid/util/Pair;

    .line 105
    .line 106
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, Landroid/accounts/Account;

    .line 109
    .line 110
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v5, Ljava/lang/String;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static {p0, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 126
    .line 127
    new-instance v3, Landroid/util/Pair;

    .line 128
    .line 129
    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 137
    .line 138
    if-eqz p0, :cond_2

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 141
    .line 142
    .line 143
    :cond_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_2

    .line 151
    :goto_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :try_start_7
    throw p0

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 161
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 162
    :catchall_3
    move-exception p0

    .line 163
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final isAccountManagedByCaller(IILjava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, [Landroid/accounts/Account;

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-string p1, "Accounts cache exists. There is no need to use db"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 57
    .line 58
    :cond_2
    :goto_0
    return v0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "isCredentialsUpdateSuggested: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", response "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", pid "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz p1, :cond_3

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$15;

    .line 83
    .line 84
    iget-object v7, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v8, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    move-object v4, p0

    .line 90
    move-object v6, p1

    .line 91
    move-object v9, p2

    .line 92
    move-object v10, p3

    .line 93
    invoke-direct/range {v3 .. v10}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string/jumbo p1, "status token is empty"

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p1, "account is null"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string/jumbo p1, "response is null"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public final isCrossUser(II)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq p2, v0, :cond_3

    .line 32
    .line 33
    const/16 p2, 0x3e8

    .line 34
    .line 35
    if-eq p1, p2, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_3
    return v1
.end method

.method public final isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v2, 0x111006d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "allow_primary_gaia_account_removal_for_tests"

    .line 32
    .line 33
    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v2, 0x10402dd

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v7, "android"

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    const/16 v6, 0x3e8

    .line 76
    .line 77
    move-object v3, p0

    .line 78
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    array-length v0, p0

    .line 83
    if-lez v0, :cond_4

    .line 84
    .line 85
    aget-object p0, p0, v1

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    :cond_4
    :goto_0
    return v1
.end method

.method public final isLocalUnlockedUser(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public final varargs isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    array-length v5, p3

    .line 17
    move v6, v2

    .line 18
    :goto_0
    if-ge v6, v5, :cond_2

    .line 19
    .line 20
    aget-object v7, p3, v6

    .line 21
    .line 22
    invoke-interface {v4, v7, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-nez v8, :cond_1

    .line 27
    .line 28
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, -0x1

    .line 33
    if-eq v7, v8, :cond_0

    .line 34
    .line 35
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 36
    .line 37
    invoke-virtual {v8, v7, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :goto_3
    return v2
.end method

.method public final isSystemUid(I)Z
    .locals 10

    .line 1
    const-string v0, "No known packages with uid "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const-string v4, "AccountManagerService"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    :try_start_1
    array-length p1, v3

    .line 19
    move v0, v5

    .line 20
    :goto_0
    if-ge v0, p1, :cond_2

    .line 21
    .line 22
    aget-object v6, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    :try_start_2
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    invoke-virtual {v7, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    and-int/2addr v6, v7

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return v7

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v7

    .line 47
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v9, "Could not find package ["

    .line 53
    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, "]"

    .line 61
    .line 62
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v4, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return v5

    .line 94
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 11

    .line 1
    move-object/from16 v7, p5

    .line 2
    .line 3
    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 4
    .line 5
    iget-wide v2, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    cmp-long v0, v2, v4

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "SELECT COUNT(*) FROM debug_table"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    long-to-int v2, v8

    .line 27
    const/16 v6, 0x40

    .line 28
    .line 29
    if-ge v2, v6, :cond_0

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v2, "SELECT primary_key FROM debug_table ORDER BY time,primary_key LIMIT 1"

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Failed to open debug table"

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "AccountsDb"

    .line 56
    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-wide v2, v4

    .line 61
    :goto_0
    iput-wide v2, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 62
    .line 63
    iget-wide v0, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 64
    .line 65
    :goto_1
    move-wide v9, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    iget-wide v2, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 68
    .line 69
    const-wide/16 v8, 0x1

    .line 70
    .line 71
    add-long/2addr v2, v8

    .line 72
    const-wide/16 v8, 0x40

    .line 73
    .line 74
    rem-long/2addr v2, v8

    .line 75
    iput-wide v2, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 76
    .line 77
    iget-wide v0, v1, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_2
    cmp-long v0, v9, v4

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    .line 85
    .line 86
    move-object v1, v0

    .line 87
    move-object v2, p0

    .line 88
    move-object v3, p1

    .line 89
    move-object v4, p2

    .line 90
    move-wide v5, p3

    .line 91
    move-object/from16 v7, p5

    .line 92
    .line 93
    move/from16 v8, p6

    .line 94
    .line 95
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    .line 96
    .line 97
    .line 98
    move-object v1, p0

    .line 99
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public final newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    if-eqz p6, :cond_0

    .line 11
    .line 12
    const/high16 p6, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    .line 19
    .line 20
    move-result p6

    .line 21
    invoke-virtual {p0, p6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p3, p1, p0, p5}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p2, ""

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p0, "account"

    .line 55
    .line 56
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p0, "authTokenType"

    .line 60
    .line 61
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string/jumbo p0, "response"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string/jumbo p0, "uid"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public final notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "notifying package="

    .line 2
    .line 3
    .line 4
    const-string v1, " for userId="

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", sending broadcast of android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AccountManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const/high16 p1, 0x40000000    # 2.0f

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    new-instance p1, Landroid/os/UserHandle;

    .line 47
    .line 48
    iget p2, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 49
    .line 50
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onAccountAccessed(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v4, v1

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ge v5, v4, :cond_2

    .line 35
    .line 36
    aget-object v6, v1, v5

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {p0, v6, v7, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    const-string/jumbo v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-virtual {p0, v6, v7, v0, v8}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "onServiceChanged: ignore removed user "

    .line 14
    .line 15
    .line 16
    const-string p1, "AccountManagerService"

    .line 17
    .line 18
    invoke-static {p2, p0, p1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "AccountManagerService"

    .line 16
    .line 17
    const-string p2, "Account Manager Crash"

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    throw p0
.end method

.method public final onUnlockUser(I)V
    .locals 3

    .line 1
    const-string v0, "AccountManagerService"

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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "AccountManagerService"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "onUserUnlocked "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-ge p1, v2, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 44
    .line 45
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method public onUserUnlocked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "android.intent.extra.user_handle"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AccountManagerService"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "peekAuthToken: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", authTokenType "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", caller\'s uid "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", pid "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v2, "account cannot be null"

    .line 61
    .line 62
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v2, "authTokenType cannot be null"

    .line 66
    .line 67
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p1, "Authtoken not available - user "

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, " data is locked. callingUid "

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    return-object p0

    .line 115
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_2
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 137
    .line 138
    const-string/jumbo p1, "uid "

    .line 139
    .line 140
    .line 141
    const-string p2, " cannot peek the authtokens associated with accounts of type: "

    .line 142
    .line 143
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance p1, Ljava/lang/SecurityException;

    .line 148
    .line 149
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method public final permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 16

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
    move/from16 v4, p3

    .line 8
    .line 9
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    const/16 v7, 0x3e8

    .line 16
    .line 17
    if-ne v0, v7, :cond_1

    .line 18
    .line 19
    const-string v0, "AccountManagerService"

    .line 20
    .line 21
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "AccountManagerService"

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Access to "

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " granted calling uid is system"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    return v6

    .line 52
    :cond_1
    const-string v0, "No packages for callingUid "

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    :try_start_0
    iget-object v10, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string v11, "AccountManagerService"

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    if-nez v10, :cond_3

    .line 68
    .line 69
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :cond_3
    :try_start_2
    array-length v13, v10

    .line 92
    move v14, v12

    .line 93
    :goto_0
    if-ge v14, v13, :cond_2

    .line 94
    .line 95
    aget-object v0, v10, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    :try_start_3
    iget-object v15, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    invoke-virtual {v15, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    and-int/lit8 v0, v0, 0x8

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    const-string v0, "AccountManagerService"

    .line 117
    .line 118
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    const-string v0, "AccountManagerService"

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "Access to "

    .line 129
    .line 130
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, " granted calling uid "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, " privileged"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_4
    return v6

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v12, "isPrivileged#Package not found "

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    .line 183
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 184
    .line 185
    const/4 v12, 0x0

    .line 186
    goto :goto_0

    .line 187
    :goto_1
    if-eqz v2, :cond_7

    .line 188
    .line 189
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 190
    .line 191
    move/from16 v8, p4

    .line 192
    .line 193
    invoke-virtual {v1, v4, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    const-string v0, "AccountManagerService"

    .line 200
    .line 201
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    const-string v0, "AccountManagerService"

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v3, "Access to "

    .line 212
    .line 213
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v2, " granted calling uid "

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v2, " manages the account"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_6
    return v6

    .line 240
    :cond_7
    if-eqz v2, :cond_d

    .line 241
    .line 242
    const-string/jumbo v0, "no credentials permission for usage of "

    .line 243
    .line 244
    .line 245
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-ne v8, v7, :cond_8

    .line 250
    .line 251
    :goto_2
    move v1, v6

    .line 252
    goto/16 :goto_5

    .line 253
    .line 254
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    invoke-virtual {v1, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget-object v7, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 263
    .line 264
    monitor-enter v7

    .line 265
    :try_start_5
    iget-object v8, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 266
    .line 267
    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 268
    if-eqz v3, :cond_9

    .line 269
    .line 270
    :try_start_6
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 271
    .line 272
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    iget-object v10, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 283
    .line 284
    iget-object v11, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 285
    .line 286
    filled-new-array {v9, v3, v10, v11}, [Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    const-string v10, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    .line 291
    .line 292
    invoke-static {v1, v10, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v9

    .line 296
    goto :goto_3

    .line 297
    :catchall_1
    move-exception v0

    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :cond_9
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    iget-object v10, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 313
    .line 314
    iget-object v11, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 315
    .line 316
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    const-string v10, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    .line 321
    .line 322
    invoke-static {v1, v10, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 323
    .line 324
    .line 325
    move-result-wide v9

    .line 326
    :goto_3
    const-wide/16 v11, 0x0

    .line 327
    .line 328
    cmp-long v1, v9, v11

    .line 329
    .line 330
    if-lez v1, :cond_a

    .line 331
    .line 332
    move v1, v6

    .line 333
    goto :goto_4

    .line 334
    :cond_a
    const/4 v1, 0x0

    .line 335
    :goto_4
    if-nez v1, :cond_b

    .line 336
    .line 337
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-eqz v9, :cond_b

    .line 342
    .line 343
    const-string v1, "AccountManagerService"

    .line 344
    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v0, ", "

    .line 358
    .line 359
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v0, " by uid "

    .line 366
    .line 367
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v0, " but ignoring since device is in test harness."

    .line 374
    .line 375
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :catchall_2
    move-exception v0

    .line 390
    goto :goto_7

    .line 391
    :cond_b
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 392
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 393
    :goto_5
    if-eqz v1, :cond_d

    .line 394
    .line 395
    const-string v0, "AccountManagerService"

    .line 396
    .line 397
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_c

    .line 402
    .line 403
    const-string v0, "AccountManagerService"

    .line 404
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v3, "Access to "

    .line 408
    .line 409
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v2, " granted calling uid "

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v2, " user granted access"

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    :cond_c
    return v6

    .line 436
    :goto_6
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 437
    :try_start_b
    throw v0

    .line 438
    :goto_7
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 439
    throw v0

    .line 440
    :cond_d
    const-string v0, "AccountManagerService"

    .line 441
    .line 442
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_e

    .line 447
    .line 448
    const-string v0, "AccountManagerService"

    .line 449
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v3, "Access to "

    .line 453
    .line 454
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v2, " not granted for uid "

    .line 461
    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    :cond_e
    const/4 v1, 0x0

    .line 476
    return v1

    .line 477
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    .line 479
    .line 480
    throw v0
.end method

.method public final purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7

    .line 1
    const-string v0, "Could not delete grants for user = "

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v4, "AccountManagerService"

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v6, "deleting grants for UID "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, " because its package is no longer installed"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 75
    .line 76
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    filled-new-array {v3}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-string/jumbo v5, "grants"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v6, "uid=?"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    :try_start_4
    const-string p0, "AccountManagerService"

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    return-void

    .line 129
    :goto_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    :try_start_7
    throw p0

    .line 131
    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 132
    throw p0
.end method

.method public final queryAccountsFromDb(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)[Landroid/accounts/Account;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    invoke-direct {v3, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v2

    .line 25
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const-string p1, "Accounts cache and db are mismatched. Recompute accounts cache"

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    new-array p0, p0, [Landroid/accounts/Account;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, [Landroid/accounts/Account;

    .line 74
    .line 75
    :goto_0
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public final readPasswordInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-string p0, "AccountManagerService"

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Password is not available - user "

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p2, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " data is locked"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    iget-object p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object p2, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 47
    .line 48
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2, v1, p1}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    return-object p1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :try_start_4
    throw p1

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    throw p1
.end method

.method public final registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 6
    invoke-static {p1, p2, p0}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 8
    throw p0
.end method

.method public final removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 10

    .line 1
    const-string v0, "User cannot remove the first "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    const-string v1, "AccountManagerService"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "AccountManagerService"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v3, "removeAccount: "

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", response "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", caller\'s uid "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", pid "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ", for user id "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x1

    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    move v3, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v3, v1

    .line 79
    :goto_0
    const-string v4, "account cannot be null"

    .line 80
    .line 81
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    move v1, v2

    .line 87
    :cond_2
    const-string/jumbo v3, "response cannot be null"

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v7, p4}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_c

    .line 98
    .line 99
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p0, v7, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    iget-object p0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 129
    .line 130
    const-string/jumbo p1, "uid "

    .line 131
    .line 132
    .line 133
    const-string p2, " cannot remove accounts of type: "

    .line 134
    .line 135
    invoke-static {v7, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance p1, Ljava/lang/SecurityException;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {p0, p4, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_5

    .line 150
    .line 151
    :try_start_0
    const-string p0, "User cannot modify accounts"

    .line 152
    .line 153
    const/16 p2, 0x64

    .line 154
    .line 155
    invoke-interface {p1, p2, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    :catch_0
    return-void

    .line 159
    :cond_5
    :try_start_1
    const-string/jumbo v1, "device_account_policy"

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {v1, v3, v4, v2, p4}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    .line 184
    .line 185
    const-string v2, "Security policy blocks this account removal"

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :catch_1
    :cond_7
    :goto_2
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p0, p4, v7, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    const/16 v2, 0x65

    .line 198
    .line 199
    if-nez v1, :cond_8

    .line 200
    .line 201
    :try_start_2
    const-string p0, "User cannot modify accounts of this type (policy)."

    .line 202
    .line 203
    invoke-interface {p1, v2, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catch_2
    move-exception p0

    .line 208
    const-string p1, "AccountManagerService"

    .line 209
    .line 210
    const-string p2, "RemoteException while removing account"

    .line 211
    .line 212
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    :goto_3
    return-void

    .line 216
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_9

    .line 221
    .line 222
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string p2, " account on the device."

    .line 233
    .line 234
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-interface {p1, v2, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_3
    move-exception p0

    .line 246
    const-string p1, "AccountManagerService"

    .line 247
    .line 248
    const-string p2, "RemoteException while removing account"

    .line 249
    .line 250
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .line 252
    .line 253
    :goto_4
    return-void

    .line 254
    :cond_9
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 255
    .line 256
    .line 257
    move-result-wide v8

    .line 258
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 259
    .line 260
    .line 261
    move-result-object p4

    .line 262
    invoke-static {p2, p4}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p0, v0, p4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 270
    .line 271
    monitor-enter v0

    .line 272
    :try_start_4
    iget-object v1, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_b

    .line 287
    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroid/util/Pair;

    .line 293
    .line 294
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v3, Landroid/util/Pair;

    .line 297
    .line 298
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 299
    .line 300
    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_a

    .line 305
    .line 306
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 307
    .line 308
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 313
    .line 314
    invoke-virtual {p0, v2, p4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :catchall_0
    move-exception p0

    .line 319
    goto :goto_6

    .line 320
    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 322
    .line 323
    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    const-string v2, "action_called_account_remove"

    .line 328
    .line 329
    const-string v3, "accounts"

    .line 330
    .line 331
    move-object v1, p0

    .line 332
    move-object v6, p4

    .line 333
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 334
    .line 335
    .line 336
    :try_start_5
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$7;

    .line 337
    .line 338
    move-object v0, v6

    .line 339
    move-object v1, p0

    .line 340
    move-object v2, p4

    .line 341
    move-object v3, p1

    .line 342
    move-object v4, p2

    .line 343
    move v5, p3

    .line 344
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    .line 349
    .line 350
    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :catchall_1
    move-exception p0

    .line 355
    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 356
    .line 357
    .line 358
    throw p0

    .line 359
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 360
    throw p0

    .line 361
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 362
    .line 363
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    const-string p2, "User "

    .line 368
    .line 369
    const-string p3, " tying remove account for "

    .line 370
    .line 371
    invoke-static {p1, p4, p2, p3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p0
.end method

.method public final removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    const-string v0, "AccountManagerService"

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "removeAccountExplicitly: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", caller\'s uid "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", pid "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    const-string p0, "account is null"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_1
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, v7, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Cannot remove the first "

    .line 86
    .line 87
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " account on the device."

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    const-string v1, "action_called_account_remove"

    .line 123
    .line 124
    const-string v2, "accounts"

    .line 125
    .line 126
    move-object v0, p0

    .line 127
    move-object v5, v8

    .line 128
    move v6, v7

    .line 129
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    :try_start_0
    invoke-virtual {p0, v8, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 137
    .line 138
    .line 139
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    return p0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_3
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 150
    .line 151
    const-string/jumbo p1, "uid "

    .line 152
    .line 153
    .line 154
    const-string v0, " cannot explicitly remove accounts of type: "

    .line 155
    .line 156
    invoke-static {v7, p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    new-instance p1, Ljava/lang/SecurityException;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    return-void
.end method

.method public final removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 3
    iget v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    const-string v5, " is still locked. CE data will be removed later"

    .line 5
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 7
    :try_start_0
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 8
    :try_start_1
    invoke-virtual {v0, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v3

    .line 10
    iget-object v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v9}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v13, v4, v6

    if-ltz v13, :cond_1

    .line 12
    iget-object v13, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v13, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v13

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    const/4 v13, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 13
    iget-object v15, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v15, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v14

    cmp-long v6, v14, v6

    if-ltz v6, :cond_2

    .line 14
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v14, v15}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)V

    .line 15
    :cond_2
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v13, :cond_8

    .line 17
    invoke-static {v9, v8}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 18
    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v14, 0x1

    if-eq v7, v14, :cond_4

    .line 21
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    .line 22
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_1

    .line 23
    :cond_5
    const-string v2, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callingUid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " removed account"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    iget-object v6, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v7, "removeAccount"

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 26
    iget v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    const-string/jumbo v7, "removeAccount"

    invoke-virtual {v0, v9, v3, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 27
    const-string v1, "action_account_remove"

    :goto_4
    move-object v2, v1

    goto :goto_5

    .line 28
    :cond_7
    const-string v1, "action_account_remove_de"

    goto :goto_4

    .line 29
    :goto_5
    const-string v3, "accounts"

    .line 30
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 31
    :cond_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 34
    :try_start_5
    iget v14, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 39
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v14, v2, :cond_9

    .line 40
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 41
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 43
    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, v9}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    .line 44
    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 45
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 46
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 47
    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    const-string/jumbo v6, "name=? AND type=?"

    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 48
    const-string v2, "action_account_remove"

    const-string/jumbo v3, "shared_accounts"

    move-object/from16 v1, p0

    move-object v6, v7

    move/from16 v16, v14

    move-object v14, v7

    move/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 49
    invoke-virtual {v0, v14, v9, v10}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_9
    move/from16 v16, v14

    :goto_7
    move/from16 v14, v16

    goto :goto_6

    .line 50
    :cond_a
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v13, :cond_d

    .line 51
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    monitor-enter v1

    .line 52
    :try_start_6
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 53
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 55
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 56
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v5, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v9, v3, v8}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 57
    :cond_c
    monitor-exit v1

    goto :goto_a

    :goto_9
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 58
    :cond_d
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 59
    :try_start_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "AccountManagerService"

    if-eqz v13, :cond_e

    .line 60
    const-string v0, "Removing account %s succeeded"

    goto :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_f

    .line 61
    :cond_e
    const-string v0, "Removing account %s failed"

    .line 62
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 63
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    iget v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    const/4 v15, 0x5

    const/16 v16, 0x4

    move/from16 v17, v13

    move/from16 v22, v0

    .line 64
    invoke-static/range {v15 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 68
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "AccountManagerService"

    if-eqz v13, :cond_f

    .line 69
    const-string v0, "Removing account %s succeeded"

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_e

    .line 70
    :cond_f
    const-string v0, "Removing account %s failed"

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    iget v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    const/4 v15, 0x5

    const/16 v16, 0x4

    move/from16 v17, v13

    move/from16 v22, v0

    .line 72
    invoke-static/range {v15 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 75
    const-class v3, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v3

    .line 76
    :try_start_9
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v0, :cond_11

    .line 77
    iget v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 78
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    if-nez v3, :cond_10

    goto :goto_d

    :cond_10
    const/16 v4, 0x46

    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 80
    iput v1, v3, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    .line 81
    iput v1, v3, Landroid/os/Message;->arg2:I

    .line 82
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    :goto_d
    return v13

    :catchall_6
    move-exception v0

    .line 84
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    .line 85
    :goto_e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw v0

    .line 87
    :goto_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw v0

    .line 89
    :goto_10
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_13

    .line 91
    :goto_11
    :try_start_b
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 92
    throw v0

    .line 93
    :goto_12
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0

    .line 94
    :goto_13
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0
.end method

.method public final renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "callingUid="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    const-string v3, "AccountManagerService"

    .line 10
    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v4, "renameAccount: "

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " -> "

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", caller\'s uid "

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, ", pid "

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    if-eqz p2, :cond_4

    .line 64
    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/16 v4, 0xc8

    .line 72
    .line 73
    if-gt v2, v4, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo p0, "renameAccount failed - account name longer than 200"

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p1, "account name longer than 200"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", userId="

    .line 119
    .line 120
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 124
    .line 125
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, " performing rename account"

    .line 129
    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Landroid/accounts/Account;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-instance p2, Landroid/os/Bundle;

    .line 145
    .line 146
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string p3, "authAccount"

    .line 150
    .line 151
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string p3, "accountType"

    .line 157
    .line 158
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string p3, "accountAccessId"

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    .line 172
    :try_start_1
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    goto :goto_2

    .line 178
    :catch_0
    move-exception p0

    .line 179
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :goto_2
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_3
    iget-object p0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 195
    .line 196
    const-string/jumbo p1, "uid "

    .line 197
    .line 198
    .line 199
    const-string p2, " cannot rename accounts of type: "

    .line 200
    .line 201
    invoke-static {v1, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    new-instance p1, Ljava/lang/SecurityException;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 212
    .line 213
    const-string p1, "account is null"

    .line 214
    .line 215
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0
.end method

.method public final renameAccountInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 12

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Landroid/util/Pair;

    .line 36
    .line 37
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v3, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 52
    .line 53
    invoke-virtual {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_1
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 74
    .line 75
    .line 76
    new-instance v3, Landroid/accounts/Account;

    .line 77
    .line 78
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v3, p3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    .line 82
    .line 83
    :try_start_3
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    cmp-long v4, v4, v6

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    if-ltz v4, :cond_2

    .line 95
    .line 96
    const-string p0, "AccountManagerService"

    .line 97
    .line 98
    const-string/jumbo p1, "renameAccount failed - account with new name already exists"

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 102
    .line 103
    .line 104
    :try_start_4
    iget-object p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 107
    .line 108
    .line 109
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    return-object v5

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :catchall_2
    move-exception p0

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :catchall_3
    move-exception p0

    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_2
    :try_start_6
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 122
    .line 123
    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    cmp-long v4, v8, v6

    .line 128
    .line 129
    if-ltz v4, :cond_7

    .line 130
    .line 131
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-instance v6, Landroid/content/ContentValues;

    .line 140
    .line 141
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v7, "name"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    filled-new-array {v7}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const-string/jumbo v10, "ceDb.accounts"

    .line 159
    .line 160
    .line 161
    const-string v11, "_id=?"

    .line 162
    .line 163
    invoke-virtual {v4, v10, v6, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 167
    .line 168
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 171
    .line 172
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    new-instance v7, Landroid/content/ContentValues;

    .line 177
    .line 178
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string/jumbo v10, "name"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v10, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo v10, "previous_name"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    filled-new-array {v6}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    const-string v8, "accounts"

    .line 202
    .line 203
    const-string v9, "_id=?"

    .line 204
    .line 205
    invoke-virtual {v4, v8, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-lez v4, :cond_6

    .line 210
    .line 211
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 214
    .line 215
    .line 216
    :try_start_7
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 219
    .line 220
    .line 221
    invoke-static {v3, p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/Account;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 226
    .line 227
    check-cast v4, Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Ljava/util/Map;

    .line 234
    .line 235
    iget-object v5, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 236
    .line 237
    check-cast v5, Ljava/util/HashMap;

    .line 238
    .line 239
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Ljava/util/Map;

    .line 244
    .line 245
    iget-object v6, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 246
    .line 247
    check-cast v6, Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Ljava/util/Map;

    .line 254
    .line 255
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 256
    .line 257
    .line 258
    iget-object v7, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 259
    .line 260
    check-cast v7, Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 266
    .line 267
    check-cast v4, Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 273
    .line 274
    check-cast v4, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-object v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 280
    .line 281
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 282
    .line 283
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    iget v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    if-eqz v5, :cond_4

    .line 302
    .line 303
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_4

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v5}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-eqz v6, :cond_4

    .line 326
    .line 327
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 332
    .line 333
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-eqz v7, :cond_3

    .line 338
    .line 339
    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 340
    .line 341
    if-ne v7, v4, :cond_3

    .line 342
    .line 343
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 344
    .line 345
    invoke-virtual {p0, p1, p3, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 350
    .line 351
    .line 352
    iget p3, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 353
    .line 354
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 355
    .line 356
    const-string/jumbo v5, "renameAccount"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    check-cast v2, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object p3

    .line 368
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_5

    .line 373
    .line 374
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Ljava/lang/String;

    .line 379
    .line 380
    iget v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 381
    .line 382
    const-string/jumbo v5, "renameAccount"

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_5
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 390
    .line 391
    .line 392
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 393
    .line 394
    .line 395
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 396
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 397
    return-object v3

    .line 398
    :cond_6
    :try_start_9
    const-string p0, "AccountManagerService"

    .line 399
    .line 400
    const-string/jumbo p1, "renameAccount failed"

    .line 401
    .line 402
    .line 403
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 404
    .line 405
    .line 406
    :try_start_a
    iget-object p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 409
    .line 410
    .line 411
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 412
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 413
    return-object v5

    .line 414
    :cond_7
    :try_start_c
    const-string p0, "AccountManagerService"

    .line 415
    .line 416
    const-string/jumbo p1, "renameAccount failed - old account does not exist"

    .line 417
    .line 418
    .line 419
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 420
    .line 421
    .line 422
    :try_start_d
    iget-object p0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 423
    .line 424
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 425
    .line 426
    .line 427
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 428
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 429
    return-object v5

    .line 430
    :goto_3
    :try_start_f
    iget-object p1, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 433
    .line 434
    .line 435
    throw p0

    .line 436
    :goto_4
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 437
    :try_start_10
    throw p0

    .line 438
    :goto_5
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 439
    throw p0

    .line 440
    :goto_6
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 441
    throw p0
.end method

.method public final renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "name"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 33
    .line 34
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v5, "shared_accounts"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v6, "name=? AND type=?"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v1, "action_account_rename"

    .line 55
    .line 56
    const-string/jumbo v2, "shared_accounts"

    .line 57
    .line 58
    .line 59
    move-object v0, p0

    .line 60
    move-object v5, p3

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Landroid/accounts/Account;

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public final resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 1
    const-string v0, "AccountManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "packageName cannot be null"

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    iget v4, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 16
    .line 17
    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 21
    :try_start_2
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x3e8

    .line 25
    .line 26
    invoke-static {v3, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    const/4 v5, 0x0

    .line 42
    iget v6, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    :cond_1
    move v1, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    :try_start_3
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 53
    .line 54
    invoke-virtual {v9, v6}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 58
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 62
    .line 63
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 68
    .line 69
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_1

    .line 78
    .line 79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 84
    .line 85
    iget-object v10, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v10, Landroid/accounts/AuthenticatorDescription;

    .line 88
    .line 89
    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    iget v9, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 98
    .line 99
    if-ne v9, v3, :cond_4

    .line 100
    .line 101
    move v1, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v7, v9, v3}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(II)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_3

    .line 108
    .line 109
    move v1, v2

    .line 110
    :goto_0
    if-ne v1, v4, :cond_5

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_6
    const-string v7, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 129
    .line 130
    filled-new-array {v7}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {p0, p3, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_7

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_7
    :try_start_4
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 150
    .line 151
    .line 152
    move-result-wide v9
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 154
    .line 155
    invoke-virtual {v3, p3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :try_start_6
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 165
    .line 166
    const/16 v3, 0x1a

    .line 167
    .line 168
    if-ge v0, v3, :cond_8

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    move v2, v5

    .line 172
    goto :goto_2

    .line 173
    :catch_0
    move-exception v3

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v3

    .line 176
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 177
    .line 178
    .line 179
    throw v3
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 180
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string/jumbo v10, "isPreOApplication#Package not found "

    .line 183
    .line 184
    .line 185
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_2
    if-nez v1, :cond_10

    .line 203
    .line 204
    if-eqz v2, :cond_a

    .line 205
    .line 206
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 207
    .line 208
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p0, p3, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_10

    .line 217
    .line 218
    :cond_a
    const-string v0, "android.permission.READ_CONTACTS"

    .line 219
    .line 220
    filled-new-array {v0}, [Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p0, p3, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p3

    .line 228
    if-eqz p3, :cond_e

    .line 229
    .line 230
    iget-object p3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 231
    .line 232
    if-nez p3, :cond_b

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 236
    .line 237
    .line 238
    move-result-wide v0

    .line 239
    :try_start_7
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 240
    .line 241
    invoke-virtual {v2, v6}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_d

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 263
    .line 264
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 267
    .line 268
    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_c

    .line 275
    .line 276
    iget-object p3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p3, Landroid/accounts/AuthenticatorDescription;

    .line 279
    .line 280
    iget-object p3, p3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 281
    .line 282
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 283
    .line 284
    filled-new-array {v0}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {p0, p3, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    :cond_d
    :goto_3
    if-nez v5, :cond_10

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :catchall_1
    move-exception p0

    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    .line 298
    .line 299
    throw p0

    .line 300
    :cond_e
    :goto_4
    if-eqz v8, :cond_f

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_f
    const-string p0, "android:accounts:key_legacy_not_visible"

    .line 304
    .line 305
    invoke-static {p1, p2, p0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_12

    .line 310
    .line 311
    const/4 v4, 0x4

    .line 312
    goto :goto_6

    .line 313
    :cond_10
    :goto_5
    const-string p0, "android:accounts:key_legacy_visible"

    .line 314
    .line 315
    invoke-static {p1, p2, p0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-nez p0, :cond_11

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_11
    move v4, p0

    .line 323
    :cond_12
    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :catchall_2
    move-exception p0

    .line 329
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    .line 331
    .line 332
    throw p0

    .line 333
    :catch_1
    move-exception p0

    .line 334
    goto :goto_7

    .line 335
    :catchall_3
    move-exception p0

    .line 336
    :try_start_8
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 337
    .line 338
    .line 339
    throw p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 340
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string/jumbo p2, "resolveAccountVisibility#Package not found "

    .line 343
    .line 344
    .line 345
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    const/4 p0, 0x3

    .line 363
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0
.end method

.method public final saveAccountEventRecord(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAccountHistory:Lcom/android/internal/util/RingBuffer;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    invoke-static {p2, p1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v5, v1, v3

    .line 32
    .line 33
    if-gez v5, :cond_1

    .line 34
    .line 35
    :try_start_2
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 38
    .line 39
    .line 40
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    return v0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :try_start_3
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 45
    .line 46
    iget-object v5, v5, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    filled-new-array {v6, p3}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string/jumbo v7, "ceDb.authtokens"

    .line 61
    .line 62
    .line 63
    const-string v8, "accounts_id=? AND type=?"

    .line 64
    .line 65
    invoke-virtual {v5, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 69
    .line 70
    iget-object v5, v5, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Landroid/content/ContentValues;

    .line 77
    .line 78
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "accounts_id"

    .line 86
    .line 87
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v1, "type"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "authtoken"

    .line 97
    .line 98
    invoke-virtual {v6, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v2, "ceDb.authtokens"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v2, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    cmp-long v1, v1, v3

    .line 109
    .line 110
    if-ltz v1, :cond_2

    .line 111
    .line 112
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    .line 116
    .line 117
    :try_start_4
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    :try_start_5
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    const/4 p0, 0x1

    .line 131
    return p0

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 134
    :try_start_8
    throw p1

    .line 135
    :catchall_2
    move-exception p2

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 140
    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return v0

    .line 144
    :goto_0
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 147
    .line 148
    .line 149
    throw p2

    .line 150
    :goto_1
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 151
    throw p1

    .line 152
    :cond_3
    :goto_2
    return v0
.end method

.method public final sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "the account with type="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, " removed while useCase="

    .line 12
    .line 13
    const-string v3, " for userId="

    .line 14
    .line 15
    invoke-static {v0, v1, v2, p4, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p4, ", sending broadcast of android.accounts.action.ACCOUNT_REMOVED"

    .line 22
    .line 23
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    const-string v0, "AccountManagerService"

    .line 31
    .line 32
    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance p4, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v0, "android.accounts.action.ACCOUNT_REMOVED"

    .line 38
    .line 39
    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x1000000

    .line 43
    .line 44
    invoke-virtual {p4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string p2, "authAccount"

    .line 51
    .line 52
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p4, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const-string p2, "accountType"

    .line 58
    .line 59
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    new-instance p1, Landroid/os/UserHandle;

    .line 67
    .line 68
    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "the accountType= "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p2, ""

    .line 12
    .line 13
    :cond_0
    const-string v1, " changed with useCase="

    .line 14
    .line 15
    const-string v2, " for userId="

    .line 16
    .line 17
    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, ", sending broadcast of "

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object p2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const-string v0, "AccountManagerService"

    .line 42
    .line 43
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    new-instance p3, Landroid/os/UserHandle;

    .line 49
    .line 50
    invoke-direct {p3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x4

    .line 51
    if-eq v1, v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public final setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10

    .line 1
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 8
    const-string/jumbo p1, "uid "

    const-string p2, " cannot get secrets for accounts of type: "

    .line 9
    invoke-static {v7, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v8

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 13
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 15
    throw p0
.end method

.method public final setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 22
    const-string v6, "Notifying visibility changed for package="

    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 23
    :try_start_0
    iget-object v8, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz p4, :cond_3

    .line 24
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 25
    invoke-virtual {v0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    .line 26
    invoke-virtual {v0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v13

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 27
    :cond_0
    iget v12, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    invoke-static {v5, v12, v2}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(IILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 28
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v9

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 29
    :cond_1
    :try_start_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 31
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v11, :cond_2

    if-eq v14, v10, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x1000000

    .line 35
    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v10, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 38
    invoke-virtual {v15, v14, v9, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 39
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 40
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 42
    invoke-static {v5, v10, v2}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(IILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 43
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v9

    .line 44
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    :cond_5
    :goto_0
    if-eqz p4, :cond_6

    .line 46
    iget-object v10, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 47
    invoke-virtual {v10, v1, v2}, Lcom/android/server/accounts/AccountsDb;->findAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 48
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v3, :cond_6

    move v10, v9

    goto :goto_1

    :cond_6
    move/from16 v10, p4

    .line 49
    :goto_1
    invoke-static {v3, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 50
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v9

    :cond_7
    if-eqz v10, :cond_11

    .line 51
    :try_start_7
    const-string v10, "AccountManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newVisibility="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 55
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x2

    if-eq v6, v11, :cond_a

    if-ne v6, v12, :cond_9

    goto :goto_3

    :cond_9
    move v6, v9

    goto :goto_4

    :cond_a
    :goto_3
    move v6, v11

    :goto_4
    if-eq v10, v11, :cond_c

    if-ne v10, v12, :cond_b

    goto :goto_5

    :cond_b
    move v10, v9

    goto :goto_6

    :cond_c
    :goto_5
    move v10, v11

    :goto_6
    if-eq v6, v10, :cond_8

    .line 56
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_2

    .line 57
    :cond_d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v11, :cond_e

    if-ne v5, v6, :cond_f

    goto :goto_7

    .line 59
    :cond_f
    iget v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    const-string/jumbo v9, "setAccountVisibility"

    invoke-virtual {v0, v1, v3, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_10
    iget v2, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v3, "setAccountVisibility"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_11
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return v11

    .line 62
    :goto_8
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    .line 63
    :goto_9
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public final setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "setAuthToken: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", authTokenType "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", caller\'s uid "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", pid "

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v1, "account cannot be null"

    .line 61
    .line 62
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v1, "authTokenType cannot be null"

    .line 66
    .line 67
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_1
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 103
    .line 104
    const-string/jumbo p1, "uid "

    .line 105
    .line 106
    .line 107
    const-string p2, " cannot set auth tokens associated with accounts of type: "

    .line 108
    .line 109
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Ljava/lang/SecurityException;

    .line 114
    .line 115
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "setAuthToken: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", caller\'s uid "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", pid "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    const-string v1, "account cannot be null"

    .line 53
    .line 54
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_1
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 90
    .line 91
    const-string/jumbo p1, "uid "

    .line 92
    .line 93
    .line 94
    const-string p2, " cannot set secrets for accounts of type: "

    .line 95
    .line 96
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    new-instance p1, Ljava/lang/SecurityException;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final setPasswordInternal(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    const-string/jumbo v12, "callingUid="

    .line 12
    .line 13
    .line 14
    const-string/jumbo v13, "callingUid="

    .line 15
    .line 16
    .line 17
    if-nez v10, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v14, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v14

    .line 23
    :try_start_0
    iget-object v15, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 26
    :try_start_1
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_2
    iget-object v2, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 32
    .line 33
    invoke-virtual {v2, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long v2, v4, v2

    .line 40
    .line 41
    if-ltz v2, :cond_4

    .line 42
    .line 43
    iget-object v2, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Landroid/content/ContentValues;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v6, "password"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    filled-new-array {v6}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string/jumbo v7, "ceDb.accounts"

    .line 71
    .line 72
    .line 73
    const-string v1, "_id=?"

    .line 74
    .line 75
    invoke-virtual {v2, v7, v3, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    filled-new-array {v2}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string/jumbo v3, "ceDb.authtokens"

    .line 95
    .line 96
    .line 97
    const-string v6, "accounts_id=?"

    .line 98
    .line 99
    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 103
    .line 104
    check-cast v1, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 120
    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .line 130
    .line 131
    const/16 v16, 0x1

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    const-string v0, "action_set_password"

    .line 143
    .line 144
    :goto_0
    move-object v2, v0

    .line 145
    goto :goto_3

    .line 146
    :goto_1
    move/from16 v3, v16

    .line 147
    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    :goto_2
    const-string v0, "action_clear_password"

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :goto_3
    const-string v3, "accounts"

    .line 156
    .line 157
    move-object/from16 v1, p0

    .line 158
    .line 159
    move-object/from16 v6, p3

    .line 160
    .line 161
    move/from16 v7, p1

    .line 162
    .line 163
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .line 165
    .line 166
    move/from16 v3, v16

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    const/4 v3, 0x0

    .line 171
    goto :goto_8

    .line 172
    :cond_4
    const/4 v3, 0x0

    .line 173
    :goto_4
    :try_start_4
    iget-object v0, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 176
    .line 177
    .line 178
    if-eqz v3, :cond_5

    .line 179
    .line 180
    invoke-virtual {v8, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 181
    .line 182
    .line 183
    const-string v0, "AccountManagerService"

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, " changed password"

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget v0, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 206
    .line 207
    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 208
    .line 209
    const-string/jumbo v2, "setPassword"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_2
    move-exception v0

    .line 217
    goto/16 :goto_b

    .line 218
    .line 219
    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 220
    .line 221
    .line 222
    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    const-string v5, "AccountManagerService"

    .line 228
    .line 229
    if-eqz v3, :cond_6

    .line 230
    .line 231
    const-string v0, "Updating account %s succeeded"

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catchall_3
    move-exception v0

    .line 235
    goto :goto_7

    .line 236
    :cond_6
    const-string v0, "Updating account %s failed"

    .line 237
    .line 238
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    const-string v7, ""

    .line 251
    .line 252
    iget v8, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 253
    .line 254
    const/4 v1, 0x5

    .line 255
    const/4 v2, 0x4

    .line 256
    invoke-static/range {v1 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 257
    .line 258
    .line 259
    :try_start_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    .line 261
    .line 262
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 263
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 264
    return-void

    .line 265
    :catchall_4
    move-exception v0

    .line 266
    goto :goto_c

    .line 267
    :goto_7
    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :goto_8
    iget-object v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 274
    .line 275
    .line 276
    if-eqz v3, :cond_7

    .line 277
    .line 278
    invoke-virtual {v8, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "AccountManagerService"

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v4, " changed password"

    .line 292
    .line 293
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    iget v1, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 304
    .line 305
    iget-object v2, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 306
    .line 307
    const-string/jumbo v4, "setPassword"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 314
    .line 315
    .line 316
    move-result-wide v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 317
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    const-string v5, "AccountManagerService"

    .line 322
    .line 323
    if-eqz v3, :cond_8

    .line 324
    .line 325
    const-string v1, "Updating account %s succeeded"

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :catchall_5
    move-exception v0

    .line 329
    goto :goto_a

    .line 330
    :cond_8
    const-string v1, "Updating account %s failed"

    .line 331
    .line 332
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    const-string v7, ""

    .line 345
    .line 346
    iget v8, v11, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 347
    .line 348
    const/4 v1, 0x5

    .line 349
    const/4 v2, 0x4

    .line 350
    invoke-static/range {v1 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 351
    .line 352
    .line 353
    :try_start_a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :goto_a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :goto_b
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 362
    :try_start_b
    throw v0

    .line 363
    :goto_c
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 364
    throw v0
.end method

.method public final setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AccountManagerService"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "setUserData: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", key "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ", caller\'s uid "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", pid "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz p2, :cond_4

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(IILjava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p1, p0}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 107
    .line 108
    const-string/jumbo p1, "uid "

    .line 109
    .line 110
    .line 111
    const-string p2, " cannot set user data for accounts of type: "

    .line 112
    .line 113
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance p1, Ljava/lang/SecurityException;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string p1, "account is null"

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string/jumbo p1, "key is null"

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public final showCantAddAccount(II)V
    .locals 5

    .line 1
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    const/high16 v1, 0x10000000

    .line 10
    .line 11
    const-string v2, "android.accounts.extra.ERROR_CODE"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-class v4, Landroid/accounts/CantAddAccountActivity;

    .line 20
    .line 21
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v3, 0x64

    .line 32
    .line 33
    if-ne p1, v3, :cond_1

    .line 34
    .line 35
    const-string/jumbo v3, "no_modify_accounts"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v3, 0x65

    .line 44
    .line 45
    if-ne p1, v3, :cond_2

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, p2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-nez v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-class v4, Landroid/accounts/CantAddAccountActivity;

    .line 61
    .line 62
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    new-instance p1, Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 5

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    const/4 v3, 0x1

    .line 23
    sub-int/2addr v2, v3

    .line 24
    :goto_0
    if-ltz v2, :cond_1

    .line 25
    .line 26
    aget-object v4, p0, v2

    .line 27
    .line 28
    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string p1, "Only system can check for accounts across users"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v1, p6

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    const-string v3, "AccountManagerService"

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v5, "startAddAccountSession: accountType "

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, ", response "

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v5, ", authTokenType "

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-object/from16 v9, p3

    .line 47
    .line 48
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, ", requiredFeatures "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, ", expectActivityLaunch "

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move/from16 v10, p5

    .line 69
    .line 70
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ", caller\'s uid "

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, ", pid "

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move-object/from16 v9, p3

    .line 106
    .line 107
    move/from16 v10, p5

    .line 108
    .line 109
    :goto_0
    const/4 v3, 0x0

    .line 110
    if-eqz v8, :cond_1

    .line 111
    .line 112
    move v4, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    move v4, v3

    .line 115
    :goto_1
    const-string/jumbo v5, "response cannot be null"

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz v12, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v2, v3

    .line 125
    :goto_2
    const-string v3, "accountType cannot be null"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_3

    .line 143
    .line 144
    const/16 v1, 0x64

    .line 145
    .line 146
    :try_start_0
    const-string v3, "User is not allowed to add an account!"

    .line 147
    .line 148
    invoke-interface {v8, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    :catch_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_3
    invoke-virtual {v0, v2, v7, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(IILjava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_4

    .line 160
    .line 161
    const/16 v1, 0x65

    .line 162
    .line 163
    :try_start_1
    const-string v3, "User cannot modify accounts of this type (policy)."

    .line 164
    .line 165
    invoke-interface {v8, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    :catch_1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v1, :cond_5

    .line 177
    .line 178
    new-instance v1, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    :cond_5
    move-object v11, v1

    .line 184
    const-string/jumbo v1, "callerUid"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string/jumbo v1, "callerPid"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    const-string v1, "androidPackageName"

    .line 197
    .line 198
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    const-string v1, "android.permission.GET_PASSWORD"

    .line 203
    .line 204
    filled-new-array {v1}, [Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v13, v7, v1}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 213
    .line 214
    .line 215
    move-result-wide v15

    .line 216
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 217
    .line 218
    .line 219
    move-result-object v17

    .line 220
    const-string v2, "action_called_start_account_add"

    .line 221
    .line 222
    const-string v3, "accounts"

    .line 223
    .line 224
    const-wide/16 v4, -0x1

    .line 225
    .line 226
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object/from16 v6, v17

    .line 229
    .line 230
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 231
    .line 232
    .line 233
    new-instance v18, Lcom/android/server/accounts/AccountManagerService$10;

    .line 234
    .line 235
    move-object/from16 v1, v18

    .line 236
    .line 237
    move-object/from16 v2, p0

    .line 238
    .line 239
    move-object/from16 v3, v17

    .line 240
    .line 241
    move-object/from16 v4, p1

    .line 242
    .line 243
    move-object/from16 v5, p2

    .line 244
    .line 245
    move/from16 v6, p5

    .line 246
    .line 247
    move v7, v14

    .line 248
    move-object/from16 v8, p3

    .line 249
    .line 250
    move-object/from16 v9, p4

    .line 251
    .line 252
    move-object v10, v11

    .line 253
    move-object v11, v13

    .line 254
    move-object/from16 v12, p2

    .line 255
    .line 256
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    .line 261
    .line 262
    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :catchall_0
    move-exception v0

    .line 267
    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    throw v0
.end method

.method public final startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v4, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    move-object/from16 v11, p5

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v11, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    const-string v1, "AccountManagerService"

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v3, "startUpdateCredentialsSession: "

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ", response "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ", authTokenType "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-object/from16 v10, p3

    .line 46
    .line 47
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, ", expectActivityLaunch "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move/from16 v6, p4

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ", caller\'s uid "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, ", pid "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move-object/from16 v10, p3

    .line 93
    .line 94
    move/from16 v6, p4

    .line 95
    .line 96
    :goto_0
    if-eqz v4, :cond_2

    .line 97
    .line 98
    if-eqz v9, :cond_1

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const-string v3, "androidPackageName"

    .line 109
    .line 110
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v5, "android.permission.GET_PASSWORD"

    .line 115
    .line 116
    filled-new-array {v5}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {p0, v3, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v14, Lcom/android/server/accounts/AccountManagerService$14;

    .line 133
    .line 134
    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v7, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 137
    .line 138
    move-object v1, v14

    .line 139
    move-object v2, p0

    .line 140
    move-object/from16 v4, p1

    .line 141
    .line 142
    move/from16 v6, p4

    .line 143
    .line 144
    move-object/from16 v9, p2

    .line 145
    .line 146
    move-object/from16 v10, p3

    .line 147
    .line 148
    move-object/from16 v11, p5

    .line 149
    .line 150
    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v1, "account is null"

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string/jumbo v1, "response is null"

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0
.end method

.method public final syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "mUsers lock must be held"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SELECT name,type FROM ceDb.accounts WHERE NOT EXISTS  (SELECT _id FROM accounts WHERE _id=ceDb.accounts._id )"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-instance v4, Landroid/accounts/Account;

    .line 54
    .line 55
    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " accounts were previously deleted while user "

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, " was locked. Removing accounts from CE tables"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "AccountManagerService"

    .line 106
    .line 107
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    const-string v5, "action_sync_de_ce_accounts"

    .line 115
    .line 116
    const-string v6, "accounts"

    .line 117
    .line 118
    const-wide/16 v7, -0x1

    .line 119
    .line 120
    move-object v4, p0

    .line 121
    move-object v9, p1

    .line 122
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 123
    .line 124
    .line 125
    iput-boolean v3, p0, Lcom/android/server/accounts/AccountManagerService;->mSyncDeCeAccountsExecuted:Z

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/accounts/Account;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v4, "Sync accounts db. Remove : "

    .line 146
    .line 147
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v4, "/"

    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v4, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, ", isCacheEmpty : "

    .line 166
    .line 167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isAccountsCacheEmpty(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 182
    .line 183
    .line 184
    const/16 v2, 0x3e8

    .line 185
    .line 186
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_1
    return-void

    .line 191
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    .line 193
    .line 194
    throw p0
.end method

.method public final unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 6
    invoke-static {p1, p2, p0}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 8
    throw p0
.end method

.method public final updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-ne v0, v1, :cond_5

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_3

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long v4, v2, v4

    .line 54
    .line 55
    if-ltz v4, :cond_2

    .line 56
    .line 57
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 58
    .line 59
    int-to-long v5, p3

    .line 60
    iget-object v4, v4, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    filled-new-array {v2, p2, v3}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string/jumbo v3, "grants"

    .line 79
    .line 80
    .line 81
    const-string v5, "accounts_id=? AND auth_token_type=? AND uid=?"

    .line 82
    .line 83
    invoke-virtual {v4, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :goto_0
    :try_start_3
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 97
    .line 98
    .line 99
    invoke-static {p3, p1, p4, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p2, p4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 104
    .line 105
    .line 106
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    if-eqz p4, :cond_4

    .line 119
    .line 120
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    check-cast p4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 127
    .line 128
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    invoke-direct {v1, p4, p1, p3, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    goto :goto_4

    .line 140
    :catchall_2
    move-exception p0

    .line 141
    goto :goto_3

    .line 142
    :goto_2
    :try_start_5
    iget-object p1, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 149
    :try_start_6
    throw p0

    .line 150
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    throw p0

    .line 152
    :cond_3
    :goto_5
    const-string p0, "AccountManagerService"

    .line 153
    .line 154
    const-string/jumbo p1, "revokeAppPermission: called with invalid arguments"

    .line 155
    .line 156
    .line 157
    new-instance p2, Ljava/lang/Exception;

    .line 158
    .line 159
    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_6
    return-void

    .line 166
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 167
    .line 168
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 169
    .line 170
    .line 171
    throw p0
.end method

.method public final updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v8, p2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    move-object/from16 v10, p5

    .line 6
    .line 7
    invoke-static {v10, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    const-string v1, "AccountManagerService"

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v3, "updateCredentials: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ", response "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ", authTokenType "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-object/from16 v9, p3

    .line 44
    .line 45
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ", expectActivityLaunch "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move/from16 v6, p4

    .line 54
    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ", caller\'s uid "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ", pid "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-object/from16 v9, p3

    .line 91
    .line 92
    move/from16 v6, p4

    .line 93
    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    if-eqz v8, :cond_1

    .line 97
    .line 98
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    move-object v2, p0

    .line 107
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v13, Lcom/android/server/accounts/AccountManagerService$15;

    .line 112
    .line 113
    iget-object v5, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v7, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 116
    .line 117
    move-object v1, v13

    .line 118
    move-object v2, p0

    .line 119
    move-object v4, p1

    .line 120
    move/from16 v6, p4

    .line 121
    .line 122
    move-object/from16 v8, p2

    .line 123
    .line 124
    move-object/from16 v9, p3

    .line 125
    .line 126
    move-object/from16 v10, p5

    .line 127
    .line 128
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    const-string v1, "account is null"

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string/jumbo v1, "response is null"

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method

.method public final updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v2, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 45
    .line 46
    filled-new-array {v3, p1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v3, "accounts"

    .line 51
    .line 52
    const-string/jumbo v4, "name=? AND type=?"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3, v2, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-lez p0, :cond_0

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    return p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    throw p0

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    throw p0
.end method

.method public final validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-string v0, "AccountManagerService"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "AccountManagerService"

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "validateAccountsInternal "

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " isCeDatabaseAttached="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 37
    .line 38
    iget-boolean v2, v2, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " userLocked="

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    iget v3, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v1, "validateAccountsInternal "

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " isCeDatabaseAttached="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 87
    .line 88
    iget-boolean v1, v1, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, " userUnLocked="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 99
    .line 100
    iget v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v10, 0x1

    .line 114
    invoke-virtual {v8, v0, v10}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    iput-boolean v10, v8, Lcom/android/server/accounts/AccountManagerService;->mUseAccountDb:Z

    .line 118
    .line 119
    if-eqz p2, :cond_1

    .line 120
    .line 121
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 122
    .line 123
    iget v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->invalidateCache(I)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 129
    .line 130
    iget v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 137
    .line 138
    invoke-virtual {v8, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    iget-object v12, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v12

    .line 145
    :try_start_0
    iget-object v13, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 148
    :try_start_1
    iget-object v14, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 149
    .line 150
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const/4 v3, 0x0

    .line 169
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_a

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/Integer;

    .line 202
    .line 203
    if-eqz v6, :cond_2

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-ne v4, v7, :cond_2

    .line 210
    .line 211
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :catchall_0
    move-exception v0

    .line 217
    goto/16 :goto_12

    .line 218
    .line 219
    :cond_2
    const/16 v7, 0x2000

    .line 220
    .line 221
    if-nez v3, :cond_4

    .line 222
    .line 223
    iget v3, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 224
    .line 225
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 226
    .line 227
    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-direct {v3, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_4

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 255
    .line 256
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .line 258
    if-eqz v7, :cond_3

    .line 259
    .line 260
    iget v10, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 261
    .line 262
    const/high16 v17, 0x800000

    .line 263
    .line 264
    and-int v10, v10, v17

    .line 265
    .line 266
    if-eqz v10, :cond_3

    .line 267
    .line 268
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 269
    .line 270
    const/4 v10, 0x1

    .line 271
    invoke-virtual {v3, v7, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 272
    .line 273
    .line 274
    :cond_3
    const/4 v10, 0x1

    .line 275
    goto :goto_1

    .line 276
    :cond_4
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_8

    .line 281
    .line 282
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v14, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 289
    .line 290
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 291
    .line 292
    const/16 v7, 0x2000

    .line 293
    .line 294
    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-eqz v6, :cond_6

    .line 307
    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 313
    .line 314
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 315
    .line 316
    if-eqz v6, :cond_5

    .line 317
    .line 318
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 319
    .line 320
    if-ne v7, v4, :cond_5

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_6
    const/4 v6, 0x0

    .line 324
    :goto_2
    if-nez v6, :cond_7

    .line 325
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v6, "Authenticator packageInfo is null : "

    .line 332
    .line 333
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v5, "/"

    .line 340
    .line 341
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    :goto_3
    const/4 v4, 0x1

    .line 352
    goto :goto_4

    .line 353
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v4, "ObsoleteAuthType packageInfo : "

    .line 359
    .line 360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v4, "/"

    .line 369
    .line 370
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 374
    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_3

    .line 383
    :goto_4
    invoke-virtual {v8, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_8
    if-eqz v6, :cond_9

    .line 388
    .line 389
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eq v2, v4, :cond_9

    .line 394
    .line 395
    const-string v2, "AccountManagerService"

    .line 396
    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v7, "authenticator no longer exist for type "

    .line 403
    .line 404
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v14, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_9
    :goto_5
    const/4 v10, 0x1

    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_b

    .line 439
    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, Ljava/util/Map$Entry;

    .line 445
    .line 446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Ljava/lang/String;

    .line 451
    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/Integer;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    invoke-virtual {v14, v1, v2}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(ILjava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_b
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    .line 467
    .line 468
    .line 469
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :try_start_2
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 473
    .line 474
    .line 475
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 476
    .line 477
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 478
    .line 479
    .line 480
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 490
    const/4 v1, 0x0

    .line 491
    :goto_7
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_14

    .line 496
    .line 497
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Ljava/util/Map$Entry;

    .line 502
    .line 503
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Ljava/lang/Long;

    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 510
    .line 511
    .line 512
    move-result-wide v4

    .line 513
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Landroid/accounts/Account;

    .line 518
    .line 519
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_12

    .line 526
    .line 527
    const-string v2, "AccountManagerService"

    .line 528
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    const-string/jumbo v6, "deleting account "

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v6, " because type "

    .line 548
    .line 549
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v6, "\'s registered authenticator no longer exist."

    .line 558
    .line 559
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v0, v9}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 570
    .line 571
    .line 572
    move-result-object v17

    .line 573
    invoke-virtual {v8, v0, v9}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v18

    .line 577
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 578
    .line 579
    .line 580
    :try_start_4
    invoke-virtual {v14, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    .line 581
    .line 582
    .line 583
    if-eqz v11, :cond_c

    .line 584
    .line 585
    invoke-virtual {v14, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)V

    .line 586
    .line 587
    .line 588
    goto :goto_8

    .line 589
    :catchall_1
    move-exception v0

    .line 590
    goto/16 :goto_b

    .line 591
    .line 592
    :cond_c
    :goto_8
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 593
    .line 594
    .line 595
    :try_start_5
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 596
    .line 597
    .line 598
    :try_start_6
    const-string v1, "AccountManagerService"

    .line 599
    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    const-string/jumbo v3, "validateAccountsInternal#Deleted UserId="

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    iget v3, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 612
    .line 613
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v3, ", AccountId="

    .line 617
    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    const-string v2, "action_authenticator_remove"

    .line 632
    .line 633
    const-string v3, "accounts"

    .line 634
    .line 635
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    .line 636
    .line 637
    .line 638
    move-result v19

    .line 639
    move-object/from16 v1, p0

    .line 640
    .line 641
    move-object/from16 v6, p1

    .line 642
    .line 643
    move-object v10, v7

    .line 644
    move/from16 v7, v19

    .line 645
    .line 646
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 647
    .line 648
    .line 649
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 650
    .line 651
    check-cast v1, Ljava/util/HashMap;

    .line 652
    .line 653
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 657
    .line 658
    check-cast v1, Ljava/util/HashMap;

    .line 659
    .line 660
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 664
    .line 665
    iget-object v1, v1, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 666
    .line 667
    iget-object v1, v1, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 668
    .line 669
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    check-cast v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 674
    .line 675
    if-eqz v1, :cond_d

    .line 676
    .line 677
    invoke-virtual {v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 678
    .line 679
    .line 680
    :cond_d
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 681
    .line 682
    check-cast v1, Ljava/util/HashMap;

    .line 683
    .line 684
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    check-cast v17, Ljava/util/HashMap;

    .line 688
    .line 689
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    :cond_e
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_10

    .line 702
    .line 703
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    check-cast v2, Ljava/util/Map$Entry;

    .line 708
    .line 709
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    check-cast v3, Ljava/lang/Integer;

    .line 714
    .line 715
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    const/4 v4, 0x1

    .line 720
    if-eq v3, v4, :cond_f

    .line 721
    .line 722
    const/4 v4, 0x2

    .line 723
    if-ne v3, v4, :cond_e

    .line 724
    .line 725
    :cond_f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    check-cast v2, Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v8, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 732
    .line 733
    .line 734
    goto :goto_9

    .line 735
    :catchall_2
    move-exception v0

    .line 736
    move-object v1, v0

    .line 737
    const/4 v10, 0x1

    .line 738
    goto/16 :goto_10

    .line 739
    .line 740
    :cond_10
    :try_start_7
    check-cast v18, Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    if-eqz v2, :cond_11

    .line 751
    .line 752
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    check-cast v2, Ljava/lang/String;

    .line 757
    .line 758
    iget v3, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 759
    .line 760
    const-string/jumbo v4, "validateAccounts"

    .line 761
    .line 762
    .line 763
    invoke-virtual {v8, v0, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 764
    .line 765
    .line 766
    goto :goto_a

    .line 767
    :catch_0
    move-exception v0

    .line 768
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .line 772
    .line 773
    const-string v2, "Fail to send account remove broadcast "

    .line 774
    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    const/4 v1, 0x1

    .line 786
    invoke-virtual {v8, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 787
    .line 788
    .line 789
    :cond_11
    const/4 v1, 0x1

    .line 790
    goto :goto_c

    .line 791
    :catchall_3
    move-exception v0

    .line 792
    move v10, v1

    .line 793
    move-object v1, v0

    .line 794
    goto/16 :goto_10

    .line 795
    .line 796
    :goto_b
    :try_start_9
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 797
    .line 798
    .line 799
    throw v0

    .line 800
    :cond_12
    move-object v10, v7

    .line 801
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    check-cast v2, Ljava/util/ArrayList;

    .line 808
    .line 809
    if-nez v2, :cond_13

    .line 810
    .line 811
    new-instance v2, Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .line 815
    .line 816
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    :cond_13
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 822
    .line 823
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    :goto_c
    move-object v7, v10

    .line 827
    goto/16 :goto_7

    .line 828
    .line 829
    :cond_14
    move-object v10, v7

    .line 830
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    if-eqz v2, :cond_16

    .line 843
    .line 844
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    check-cast v2, Ljava/util/Map$Entry;

    .line 849
    .line 850
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    check-cast v3, Ljava/lang/String;

    .line 855
    .line 856
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    check-cast v2, Ljava/util/ArrayList;

    .line 861
    .line 862
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    new-array v5, v4, [Landroid/accounts/Account;

    .line 867
    .line 868
    const/4 v6, 0x0

    .line 869
    :goto_e
    if-ge v6, v4, :cond_15

    .line 870
    .line 871
    new-instance v7, Landroid/accounts/Account;

    .line 872
    .line 873
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v10

    .line 877
    check-cast v10, Ljava/lang/String;

    .line 878
    .line 879
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 880
    .line 881
    .line 882
    move-result-object v11

    .line 883
    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v11

    .line 887
    invoke-direct {v7, v10, v3, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    aput-object v7, v5, v6

    .line 891
    .line 892
    add-int/lit8 v6, v6, 0x1

    .line 893
    .line 894
    goto :goto_e

    .line 895
    :cond_15
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 896
    .line 897
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    goto :goto_d

    .line 901
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .line 905
    .line 906
    const-string v2, "Accounts cache is created: user "

    .line 907
    .line 908
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    iget v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 912
    .line 913
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    const/4 v2, 0x1

    .line 921
    invoke-virtual {v8, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 922
    .line 923
    .line 924
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 925
    .line 926
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    check-cast v0, Ljava/util/HashMap;

    .line 931
    .line 932
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 933
    .line 934
    .line 935
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 936
    .line 937
    .line 938
    if-eqz v1, :cond_17

    .line 939
    .line 940
    :try_start_a
    iget v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 941
    .line 942
    const-string v1, "ambiguous"

    .line 943
    .line 944
    const-string/jumbo v2, "validateAccounts"

    .line 945
    .line 946
    .line 947
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 948
    .line 949
    .line 950
    goto :goto_f

    .line 951
    :catch_1
    move-exception v0

    .line 952
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .line 956
    .line 957
    const-string v2, "Fail to send account remove broadcast "

    .line 958
    .line 959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    const/4 v1, 0x1

    .line 970
    invoke-virtual {v8, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 971
    .line 972
    .line 973
    :cond_17
    :goto_f
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 974
    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 975
    return-void

    .line 976
    :catchall_4
    move-exception v0

    .line 977
    goto :goto_13

    .line 978
    :catchall_5
    move-exception v0

    .line 979
    move-object v1, v0

    .line 980
    const/4 v10, 0x0

    .line 981
    :goto_10
    if-eqz v10, :cond_18

    .line 982
    .line 983
    :try_start_d
    iget v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 984
    .line 985
    const-string v2, "ambiguous"

    .line 986
    .line 987
    const-string/jumbo v3, "validateAccounts"

    .line 988
    .line 989
    .line 990
    invoke-virtual {v8, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 991
    .line 992
    .line 993
    goto :goto_11

    .line 994
    :catch_2
    move-exception v0

    .line 995
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-string v3, "Fail to send account remove broadcast "

    .line 1001
    .line 1002
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    const/4 v2, 0x1

    .line 1013
    invoke-virtual {v8, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->saveAccountEventRecord(Ljava/lang/String;Z)V

    .line 1014
    .line 1015
    .line 1016
    :cond_18
    :goto_11
    throw v1

    .line 1017
    :goto_12
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1018
    :try_start_f
    throw v0

    .line 1019
    :goto_13
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1020
    throw v0
.end method
