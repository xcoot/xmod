.class public final Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "LDAPAccountPolicyService"

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 11
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    .line 19
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    new-instance v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    .line 24
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 27
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x2

    .line 34
    move-object v2, p1

    .line 35
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 38
    const-string/jumbo p0, "success to add receiver"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "Regist BroadCast failed : "

    .line 48
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "createLDAPAccount : Error :: Email app is not installed on user "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v1

    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    if-nez p2, :cond_0

    .line 17
    const-string p1, "LDAPAccountPolicyService"

    .line 19
    const-string/jumbo p2, "createLDAPAccount() : failed. ldap is not vaild."

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_1

    .line 30
    :cond_0
    :try_start_1
    const-string/jumbo v3, "com.samsung.android.email.provider"

    .line 33
    invoke-static {v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    const-wide/16 v3, -0x1

    .line 39
    const/4 v5, -0x8

    .line 40
    if-nez v2, :cond_1

    .line 42
    invoke-virtual {p0, v1, v5, v3, v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 45
    const-string p1, "LDAPAccountPolicyService"

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :cond_1
    :try_start_2
    iget-boolean v0, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 66
    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x1

    .line 69
    iput v0, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 71
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    move-result-wide v6

    .line 75
    const-string/jumbo v0, "com.samsung.android.email.provider"

    .line 78
    const-string v2, "LDAPAccountPolicyService"

    .line 80
    const-string/jumbo v8, "createLDAPAccount_new()"

    .line 83
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    iget-object v2, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword$1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 91
    move-result-wide v8

    .line 92
    new-instance p1, Landroid/content/Intent;

    .line 94
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

    .line 97
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 103
    iget-wide v10, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    .line 105
    invoke-virtual {p1, v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

    .line 111
    iget-object v10, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"

    .line 119
    invoke-virtual {p1, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

    .line 125
    iget v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    .line 127
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

    .line 133
    iget-boolean v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 135
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 141
    const-string/jumbo v8, "ldap"

    .line 144
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

    .line 150
    iget-boolean v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    .line 152
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

    .line 158
    iget-object v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 160
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

    .line 166
    iget-object v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    .line 174
    iget p2, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 176
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object p2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 184
    new-instance v0, Landroid/os/UserHandle;

    .line 186
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 189
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 192
    invoke-virtual {p2, p1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 195
    const-string p1, "LDAPAccountPolicyService"

    .line 197
    const-string/jumbo p2, "createLDAPAccount_new() : successfully sent intent to Email app. "

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 208
    :catchall_1
    move-exception p1

    .line 209
    goto :goto_0

    .line 210
    :catch_0
    move-exception p1

    .line 211
    :try_start_5
    const-string p2, "LDAPAccountPolicyService"

    .line 213
    const-string/jumbo v0, "createLDAPAccount_new() : unexpected Exception occurs. "

    .line 216
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    invoke-virtual {p0, v1, v5, v3, v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 225
    const-string p1, "LDAPAccountPolicyService"

    .line 227
    const-string/jumbo p2, "createLDAPAccount() : failed with unknown error."

    .line 230
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    monitor-exit p0

    .line 234
    return-void

    .line 235
    :goto_0
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 239
    :goto_1
    monitor-exit p0

    .line 240
    throw p1
.end method

.method public final declared-synchronized deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "deleteLDAPAccount() : id = "

    .line 4
    const-string/jumbo v1, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string p1, "LDAPAccountPolicyService"

    .line 21
    const-string/jumbo p2, "deleteLDAPAccount() : ldapId is invalid"

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 32
    :cond_0
    :try_start_1
    const-string/jumbo v4, "device_account_policy"

    .line 35
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 41
    if-eqz v4, :cond_1

    .line 43
    const-string/jumbo v5, "com.samsung.android.ldap"

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v7, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v7, "@"

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v2, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_1

    .line 76
    const-string p1, "LDAPAccountPolicyService"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    .line 94
    return v3

    .line 95
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 98
    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p2, p3, v4, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    .line 104
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception p1

    .line 112
    :try_start_5
    const-string v4, "LDAPAccountPolicyService"

    .line 114
    const-string/jumbo v5, "deleteLDAPAccount() : Failed, Exception occurs. "

    .line 117
    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    goto :goto_0

    .line 121
    :goto_1
    :try_start_6
    const-string p1, "LDAPAccountPolicyService"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    const-string p2, ", ret = "

    .line 133
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    monitor-exit p0

    .line 147
    return v3

    .line 148
    :goto_2
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    :goto_3
    monitor-exit p0

    .line 153
    throw p1
.end method

.method public final enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_LDAP"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    const-string/jumbo v0, "getAllLDAPAccounts() "

    .line 4
    const-string v1, "LDAPAccountPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v2

    .line 17
    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 47
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_5

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move-object v0, p1

    .line 62
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    goto :goto_3

    .line 66
    :goto_2
    :try_start_1
    const-string/jumbo p1, "getAllLDAPAccounts() : Failed, Exception occurs. "

    .line 69
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_1

    .line 73
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo p1, "getAllLDAPAccounts() ret = "

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    if-eqz v0, :cond_3

    .line 83
    const/4 p1, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_3
    const/4 p1, 0x0

    .line 86
    :goto_4
    invoke-static {v1, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 89
    return-object v0

    .line 90
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0
.end method

.method public final getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x1

    .line 7
    cmp-long v0, p2, v0

    .line 9
    const-string v1, "LDAPAccountPolicyService"

    .line 11
    const/4 v2, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 14
    const-string/jumbo p0, "getLDAPAccount() : ldapId is invalid, id = "

    .line 17
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 20
    return-object v2

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v3

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    .line 34
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    const-string/jumbo p1, "getLDAPAccount() : Failed, Exception occurs. "

    .line 45
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const-string/jumbo p0, "getLDAPAccount() id = "

    .line 52
    const-string p1, ", ret ="

    .line 54
    invoke-static {p0, p2, p3, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p0

    .line 58
    if-nez v2, :cond_1

    .line 60
    const/4 p1, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_2
    invoke-static {v1, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 66
    return-object v2

    .line 67
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    .locals 3

    .line 1
    const-string v0, "LDAPAccountPolicyService"

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

    .line 8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    .line 14
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    .line 20
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 23
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide p1

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 35
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 37
    const-string/jumbo p4, "com.samsung.android.knox.permission.KNOX_LDAP"

    .line 40
    invoke-virtual {p0, v1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 43
    const-string/jumbo p0, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent 2. "

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_1
    const-string/jumbo p3, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent 2. "

    .line 59
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :goto_1
    return-void

    .line 64
    :goto_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final setAccountEmailPassword$1(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 4

    .line 1
    const-string v0, "E#"

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 5
    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 22
    filled-new-array {v2}, [Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 36
    move-result-object p0

    .line 37
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 39
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 42
    move-result-wide p0

    .line 43
    const-wide/16 v1, -0x1

    .line 45
    if-nez p2, :cond_1

    .line 47
    return-wide v1

    .line 48
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-wide p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string p1, "LDAPAccountPolicyService"

    .line 67
    const-string/jumbo p2, "setAccountEmailPassword() failed"

    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-wide v1
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    const-string p0, "LDAPAccountPolicyService"

    .line 3
    const-string/jumbo v0, "systemReady()... "

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method
