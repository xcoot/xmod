.class public final Lcom/android/server/enterprise/email/EmailPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mUserRemovedReceiver:Lcom/android/server/enterprise/email/EmailPolicy$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 7
    new-instance v2, Lcom/android/server/enterprise/email/EmailPolicy$1;

    .line 9
    invoke-direct {v2, p0}, Lcom/android/server/enterprise/email/EmailPolicy$1;-><init>(Lcom/android/server/enterprise/email/EmailPolicy;)V

    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 14
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    const-string p0, "android.intent.action.USER_REMOVED"

    .line 23
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 26
    move-result-object v4

    .line 27
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x2

    .line 32
    move-object v1, p1

    .line 33
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public static getSecureAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/16 v0, 0x40

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    const-string v2, "*****"

    .line 19
    if-ne v0, v1, :cond_1

    .line 21
    return-object v2

    .line 22
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final allowAccountAddition(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "EmailPolicyService"

    .line 4
    const-string v2, "allowAccountAddition: "

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    int-to-byte p2, p2

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    new-array v3, v3, [B

    .line 14
    aput-byte p2, v3, v0

    .line 16
    new-instance p2, Landroid/content/ContentValues;

    .line 18
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 21
    const-string/jumbo v4, "policyName"

    .line 24
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 26
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 28
    const-string/jumbo v5, "com.samsung.android.email.provider"

    .line 31
    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "accountObject"

    .line 36
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 43
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 45
    const-string v4, "ADMIN_REF"

    .line 47
    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 50
    move-result v0

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "Exception in allowAccountAddition"

    .line 70
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_0
    return v0
.end method

.method public final allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v6, "EmailPolicyService"

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iget-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 26
    if-eqz v2, :cond_0

    .line 28
    :try_start_0
    const-string/jumbo p0, "eas_account_policy"

    .line 31
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 44
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "Failed talking with exchange account policy"

    .line 49
    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 55
    iget-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 57
    const-string v5, "EmailAllowSettingChange"

    .line 59
    move-object v0, p0

    .line 60
    move v3, p2

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "allowEmailSettingsChange() : "

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    const-string p1, "allowEmailSettingsChange() = "

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, " , allow = "

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string p1, " , accId = "

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {p0, p3, p4, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 108
    return v1
.end method

.method public final allowPopImapEmail(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "EmailPolicyService"

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object p1

    .line 8
    int-to-byte v2, p2

    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    new-array v3, v3, [B

    .line 12
    aput-byte v2, v3, v0

    .line 14
    new-instance v2, Landroid/content/ContentValues;

    .line 16
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    const-string/jumbo v4, "policyName"

    .line 22
    const-string v5, "allowPopImapEmail"

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v4, "accountObject"

    .line 29
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 38
    const-string v4, "ADMIN_REF"

    .line 40
    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "allowPopImapEmail() : failed."

    .line 48
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    const-string p1, "allowPopImapEmail() : "

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    const-string p1, "allowPopImapEmail() = "

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    const-string p1, " , allowed = "

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v0
.end method

.method public final enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    const-string v1, "EmailAllowForward"

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(IILjava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v0, "getAllowEmailForwarding() : "

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "EmailPolicyService"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "getAllowEmailForwarding() = "

    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " , emailAddress = "

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return p0
.end method

.method public final getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    const-string v1, "EmailAllowHTML"

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(IILjava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v0, "getAllowHTMLEmail() : "

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "EmailPolicyService"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "getAllowHTMLEmail() = "

    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " , emailAddress = "

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return p0
.end method

.method public final getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getPolicyState(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "EmailAllowForward"

    .line 3
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "EmailAllowHTML"

    .line 13
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "EmailAllowNotificationChange"

    .line 22
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string v0, "EmailAllowSettingChange"

    .line 31
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/4 v1, 0x0

    .line 39
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v2, "getDefaultValueState() : ret = "

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ", policy = "

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v2, "EmailPolicyService"

    .line 64
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    xor-int/lit8 v0, v1, 0x1

    .line 69
    const-string/jumbo v3, "getPolicyState() : Invalid entry"

    .line 72
    if-eqz p3, :cond_a

    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_a

    .line 80
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_4
    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_5

    .line 94
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v1

    .line 98
    :cond_5
    filled-new-array {p4}, [Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    new-instance v4, Landroid/content/ContentValues;

    .line 104
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 107
    const-string/jumbo v5, "containerID"

    .line 110
    const-string v6, "EmailAddress"

    .line 112
    invoke-static {p1, v4, v5, v6, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v5

    .line 119
    const-string/jumbo v6, "userID"

    .line 122
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 127
    const-string v5, "EmailSettingsTable"

    .line 129
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 132
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_6

    .line 141
    return v1

    .line 142
    :cond_6
    const-string/jumbo v3, "getPolicyState() : keep going check result. "

    .line 145
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object p0

    .line 152
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_9

    .line 158
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Landroid/content/ContentValues;

    .line 164
    invoke-virtual {v3, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    if-eqz v3, :cond_7

    .line 170
    if-eqz v0, :cond_8

    .line 172
    const-string v4, "1"

    .line 174
    goto :goto_1

    .line 175
    :cond_8
    const-string v4, "0"

    .line 177
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_7

    .line 183
    const-string/jumbo p0, "getPolicyState() ret = "

    .line 186
    const-string v1, " , containerId = "

    .line 188
    const-string v3, " , emailAddress = "

    .line 190
    invoke-static {p1, p0, v1, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 193
    move-result-object p0

    .line 194
    invoke-static {p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string p1, " , policy = "

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string p1, " , userId = "

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p0, p2, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 217
    return v0

    .line 218
    :cond_9
    const-string/jumbo p0, "getPolicyState() : ret = "

    .line 221
    invoke-static {p0, v2, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    return v1

    .line 225
    :catch_0
    move-exception p0

    .line 226
    const-string/jumbo p1, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    .line 229
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    return v1

    .line 233
    :cond_a
    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1
.end method

.method public final isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "EmailPolicyService"

    .line 4
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 9
    move-result p1

    .line 10
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-static {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string v4, "#SelectClause#"

    .line 21
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v2, "policyName"

    .line 27
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 29
    const-string/jumbo v4, "com.samsung.android.email.provider"

    .line 32
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    const-string v2, "ADMIN_REF"

    .line 39
    const-string v4, "accountObject"

    .line 41
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    const-string/jumbo v2, "isAccountAdditionAllowed:  resultList not null"

    .line 48
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    check-cast p0, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 60
    move v3, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v4

    .line 65
    if-ge v3, v4, :cond_1

    .line 67
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, [B

    .line 73
    aget-byte v4, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    if-nez v4, :cond_0

    .line 77
    move v0, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    add-int/2addr v3, v0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string/jumbo v2, "isAccountAdditionAllowed() : Exception in isAccountAdditionAllowed"

    .line 85
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v2, "isAccountAdditionAllowed() : "

    .line 93
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v2, "isAccountAdditionAllowed() = "

    .line 111
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v2, " , userId = "

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0
.end method

.method public final isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p2, p3, v1, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "EmailPolicyService"

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_1

    .line 20
    iget-boolean v4, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 22
    if-eqz v4, :cond_0

    .line 24
    :try_start_0
    const-string/jumbo p0, "eas_account_policy"

    .line 27
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 40
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "Failed talking with exchange account policy"

    .line 45
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    move-result p1

    .line 53
    iget-object v1, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 55
    const-string v3, "EmailAllowNotificationChange"

    .line 57
    invoke-virtual {p0, v0, p1, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(IILjava/lang/String;Ljava/lang/String;)Z

    .line 60
    move-result v3

    .line 61
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo p1, "isEmailNotificationsEnabled() : "

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo p1, "isEmailNotificationsEnabled() = "

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string p1, " , accId = "

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v3
.end method

.method public final isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p2, p3, v1, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "EmailPolicyService"

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_1

    .line 20
    iget-boolean v4, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 22
    if-eqz v4, :cond_0

    .line 24
    :try_start_0
    const-string/jumbo p0, "eas_account_policy"

    .line 27
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 40
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "Failed talking with exchange account policy"

    .line 45
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    move-result p1

    .line 53
    iget-object v1, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 55
    const-string v3, "EmailAllowSettingChange"

    .line 57
    invoke-virtual {p0, v0, p1, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(IILjava/lang/String;Ljava/lang/String;)Z

    .line 60
    move-result v3

    .line 61
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo p1, "isEmailSettingsChangeAllowed() : "

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo p1, "isEmailSettingsChangeAllowed() = "

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string p1, " , accId = "

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v3
.end method

.method public final isPopImapEmailAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string v0, "EmailPolicyService"

    .line 3
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v1, "#SelectClause#"

    .line 21
    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo p1, "policyName"

    .line 27
    const-string v1, "allowPopImapEmail"

    .line 29
    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string p1, "ADMIN_REF"

    .line 36
    const-string v1, "accountObject"

    .line 38
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result p1

    .line 48
    if-lez p1, :cond_1

    .line 50
    const/4 p1, 0x0

    .line 51
    move v1, p1

    .line 52
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 56
    if-ge v1, v3, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, [B

    .line 64
    aget-byte v3, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    if-nez v3, :cond_0

    .line 68
    move v2, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    const-string p1, "Exception in isPopImapEmailAllowed"

    .line 76
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_1
    :goto_1
    const-string/jumbo p0, "isPopImapEmailAllowed() : "

    .line 82
    invoke-static {p0, v0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return v2
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
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 13
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putPolicyState(Ljava/lang/String;IZILjava/lang/String;)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "putPolicyState: Invalid entry"

    .line 4
    const-string v1, "EmailPolicyService"

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v2

    .line 26
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .line 28
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const-string v2, "adminUid"

    .line 33
    const-string/jumbo v3, "containerID"

    .line 36
    invoke-static {p2, v0, v2, p4, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    const-string v4, "EmailAddress"

    .line 41
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p3, :cond_2

    .line 46
    const-string v5, "1"

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v5, "0"

    .line 51
    :goto_0
    invoke-virtual {v0, p5, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v5, Landroid/content/ContentValues;

    .line 56
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 59
    invoke-static {p2, v5, v2, p4, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-virtual {v5, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    const-string v2, "EmailSettingsTable"

    .line 69
    invoke-virtual {p0, v2, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 72
    move-result p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v2, "putPolicyState() : ret = "

    .line 78
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v2, "putPolicyState() ret = "

    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " , admin = "

    .line 104
    const-string v3, " , containerId = "

    .line 106
    invoke-static {p2, p4, v2, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 109
    const-string p2, " , emailAddress = "

    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p1}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, " , state = "

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    const-string p1, " , policy = "

    .line 131
    invoke-static {v0, p1, p5, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return p0

    .line 135
    :cond_3
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v2
.end method

.method public final setAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v5, "EmailAllowForward"

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p2

    .line 13
    move v3, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v0, "setAllowEmailForwarding() : "

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "EmailPolicyService"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "setAllowEmailForwarding() = "

    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " , emailAddress = "

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p2, " , allow = "

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return p0
.end method

.method public final setAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v5, "EmailAllowHTML"

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p2

    .line 13
    move v3, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v0, "setAllowHTMLEmail() : "

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "EmailPolicyService"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "setAllowHTMLEmail() = "

    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " , emailAddress = "

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p2, " , allow = "

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return p0
.end method

.method public final setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v6, "EmailPolicyService"

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM$11()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iget-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 26
    if-eqz v2, :cond_0

    .line 28
    :try_start_0
    const-string/jumbo v0, "eas_account_policy"

    .line 31
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0, p1, p3, p4, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 44
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    const-string v0, "Failed talking with exchange account policy"

    .line 49
    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 55
    iget-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 57
    const-string v5, "EmailAllowNotificationChange"

    .line 59
    move-object v0, p0

    .line 60
    move v3, p2

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v0, "setEmailNotificationsState() : "

    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v0, "setEmailNotificationsState() = "

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " , enable = "

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    const-string p2, " , accId = "

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1, p3, p4, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 110
    if-eqz v1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 114
    const-string/jumbo p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    .line 117
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 124
    :cond_2
    return v1
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 13
    return-void
.end method
