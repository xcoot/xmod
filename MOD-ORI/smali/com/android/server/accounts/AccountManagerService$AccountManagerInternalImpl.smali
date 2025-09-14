.class public final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final backupAccountAccessPermissions(I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    move-object v9, p2

    .line 4
    move v10, p3

    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    if-nez v8, :cond_0

    .line 8
    .line 9
    const-string v0, "AccountManagerService"

    .line 10
    .line 11
    const-string v1, "account cannot be null"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez v9, :cond_1

    .line 18
    .line 19
    const-string v0, "AccountManagerService"

    .line 20
    .line 21
    const-string/jumbo v1, "packageName cannot be null"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    if-gez v10, :cond_2

    .line 29
    .line 30
    const-string v0, "AccountManagerService"

    .line 31
    .line 32
    const-string/jumbo v1, "user id must be concrete"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    if-nez v1, :cond_3

    .line 40
    .line 41
    const-string v0, "AccountManagerService"

    .line 42
    .line 43
    const-string/jumbo v1, "callback cannot be null"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 51
    .line 52
    invoke-virtual {v2, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x3

    .line 65
    if-ne v2, v3, :cond_4

    .line 66
    .line 67
    const-string v0, "AccountManagerService"

    .line 68
    .line 69
    const-string/jumbo v1, "requestAccountAccess: account is hidden"

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 77
    .line 78
    new-instance v3, Landroid/os/UserHandle;

    .line 79
    .line 80
    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    new-instance v0, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v2, "booleanResult"

    .line 95
    .line 96
    .line 97
    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 110
    .line 111
    iget-object v4, v4, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    invoke-virtual {v4, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .line 119
    .line 120
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance v5, Landroid/accounts/AccountAuthenticatorResponse;

    .line 126
    .line 127
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$17;

    .line 128
    .line 129
    invoke-direct {v3, v2, v11, p1, v1}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;ILandroid/accounts/Account;Landroid/os/RemoteCallback;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, v3}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v6, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 136
    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    move-object v1, v2

    .line 140
    move-object v2, p1

    .line 141
    move-object v3, p2

    .line 142
    move v4, v11

    .line 143
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 150
    .line 151
    monitor-enter v1

    .line 152
    :try_start_3
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 161
    .line 162
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {p2, v11, v1}, Lcom/android/internal/notification/SystemNotificationChannels;->createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    move-object v1, v2

    .line 174
    move-object v2, p1

    .line 175
    move-object v5, p2

    .line 176
    move v6, p3

    .line 177
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    throw v0

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .line 187
    .line 188
    throw v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 189
    :catch_0
    const-string v0, "AccountManagerService"

    .line 190
    .line 191
    const-string v1, "Unknown package "

    .line 192
    .line 193
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final restoreAccountAccessPermissions([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
