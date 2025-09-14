.class public final Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$callerPkgSigDigest:[B

.field public final synthetic val$callerUid:I

.field public final synthetic val$customTokens:Z

.field public final synthetic val$loginOptions:Landroid/os/Bundle;

.field public final synthetic val$notifyOnAuthFailure:Z

.field public final synthetic val$permissionGranted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4
    .line 5
    move-object v2, p7

    .line 6
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    .line 7
    .line 8
    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 10
    .line 11
    move-object v2, p9

    .line 12
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 13
    .line 14
    move v2, p10

    .line 15
    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    .line 16
    .line 17
    move/from16 v2, p11

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    .line 20
    .line 21
    move-object/from16 v2, p12

    .line 22
    .line 23
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    .line 24
    .line 25
    move/from16 v2, p13

    .line 26
    .line 27
    iput v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    .line 28
    .line 29
    move/from16 v2, p14

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    .line 32
    .line 33
    move-object/from16 v2, p15

    .line 34
    .line 35
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    .line 36
    .line 37
    move-object/from16 v2, p16

    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    move-object p7, p0

    .line 45
    move-object p8, p1

    .line 46
    move-object p9, p2

    .line 47
    move-object p10, p3

    .line 48
    move-object/from16 p11, p4

    .line 49
    .line 50
    move/from16 p12, p5

    .line 51
    .line 52
    move/from16 p13, v3

    .line 53
    .line 54
    move-object/from16 p14, p6

    .line 55
    .line 56
    move/from16 p15, v4

    .line 57
    .line 58
    move/from16 p16, v2

    .line 59
    .line 60
    invoke-direct/range {p7 .. p16}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    const-string v1, "authTokenLabelKey"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 18
    .line 19
    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    .line 20
    .line 21
    new-instance v6, Landroid/accounts/AccountAuthenticatorResponse;

    .line 22
    .line 23
    invoke-direct {v6, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 24
    .line 25
    .line 26
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 35
    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "intent"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string v0, "authtoken"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v0, 0x5

    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    const-string v1, "authAccount"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "accountType"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    const-string/jumbo p1, "incorrect account type"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    new-instance v4, Landroid/accounts/Account;

    .line 101
    .line 102
    invoke-direct {v4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    .line 106
    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    const-string v1, "android.accounts.expiry"

    .line 119
    .line 120
    const-wide/16 v4, 0x0

    .line 121
    .line 122
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    cmp-long v1, v7, v1

    .line 135
    .line 136
    if-lez v1, :cond_6

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    .line 147
    .line 148
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    if-eqz v9, :cond_6

    .line 156
    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    if-nez v6, :cond_4

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-static {v4, v2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-virtual {v1, v10, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 167
    .line 168
    .line 169
    iget-object v10, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 170
    .line 171
    monitor-enter v10

    .line 172
    :try_start_0
    iget-object v1, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 173
    .line 174
    move-object v2, v4

    .line 175
    move-object v4, v9

    .line 176
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 177
    .line 178
    .line 179
    monitor-exit v10

    .line 180
    goto :goto_1

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    throw p0

    .line 184
    :cond_5
    :goto_0
    const-string/jumbo p1, "the type and name should not be empty"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_6
    :goto_1
    const-string/jumbo v1, "intent"

    .line 192
    .line 193
    .line 194
    const-class v2, Landroid/content/Intent;

    .line 195
    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    move-object v6, v1

    .line 201
    check-cast v6, Landroid/content/Intent;

    .line 202
    .line 203
    if-eqz v6, :cond_8

    .line 204
    .line 205
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    .line 206
    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    .line 210
    .line 211
    if-nez v1, :cond_8

    .line 212
    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_7

    .line 222
    .line 223
    const-string/jumbo p1, "invalid intent in bundle returned"

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_7
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 231
    .line 232
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 233
    .line 234
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 235
    .line 236
    const-string v0, "authFailedMessage"

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    const-string v7, "android"

    .line 243
    .line 244
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 245
    .line 246
    iget v8, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 247
    .line 248
    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 29
    .line 30
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p0}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", getAuthToken, "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", authTokenType "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ", loginOptions "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, ", notifyOnAuthFailure "

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean p0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
