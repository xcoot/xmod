.class public final Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final mDeviceId:Ljava/util/HashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mExchangeServiceDisabled:Z

.field public final mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

.field public mRestartExtendDelay:Z

.field public preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "ExchangeAccountPolicy"

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;-><init>()V

    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 10
    iput-boolean v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 12
    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 15
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    new-instance v3, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 20
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    .line 23
    iput-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 27
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    invoke-direct {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    :try_start_0
    new-instance v7, Landroid/content/IntentFilter;

    .line 36
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    new-instance v5, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    .line 41
    invoke-direct {v5, v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 44
    const-string/jumbo v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    .line 47
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 53
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 58
    const-string/jumbo v8, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x2

    .line 63
    move-object v4, p1

    .line 64
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo p1, "success to add receiver"

    .line 70
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    const-string v3, "Regist BroadCast failed : "

    .line 77
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Landroid/content/ComponentName;

    .line 88
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 90
    const-string/jumbo v3, "com.samsung.android.email.provider"

    .line 93
    const-string/jumbo v4, "com.samsung.android.email.provider.exchange.ExchangeService"

    .line 96
    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 104
    move-result v3

    .line 105
    const/4 v4, 0x2

    .line 106
    if-ne v3, v4, :cond_0

    .line 108
    const-string v3, "Enabling EAS ExchangeService"

    .line 110
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    goto :goto_1

    .line 117
    :catch_1
    move-exception p0

    .line 118
    const-string p1, "Constructor failed : "

    .line 120
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_0
    :goto_1
    return-void
.end method

.method public static getDefaultValueState$1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "ReqSigSmime"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v0, "ReqEncryptSmime"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const-string v0, "ForceSmimeCert"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-string v0, "AllowSettingChange"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_3

    .line 38
    :goto_0
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const-string v0, "AllowNotificationChange"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string v0, "ForceSmimeCertForEncryption"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    const-string v0, "ForceSmimeCertForSigning"

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_6

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    const-string v0, "AttachmentEnable"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_7

    .line 75
    goto :goto_0

    .line 76
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v2, "getDefaultValueState() : policy = "

    .line 81
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string p0, " ret = "

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    const-string v0, "ExchangeAccountPolicy"

    .line 101
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1
.end method

.method public static isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-string/jumbo v1, "email_policy"

    .line 5
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 18
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "ExchangeAccountPolicy"

    .line 23
    const-string/jumbo v1, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    .line 26
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public final addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p13

    .line 1
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string v4, "addNewAccount() EX : sent intent to Email app : "

    const-string v5, "addNewAccount() EX : "

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    .line 2
    const-string v6, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    const-string v14, "ExchangeAccountPolicy"

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v13}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 4
    iget v6, v13, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v4

    .line 12
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v3

    .line 13
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p1, v3

    .line 14
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v18, -0x1

    if-eqz v11, :cond_4

    .line 15
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    if-nez v8, :cond_0

    goto/16 :goto_3

    .line 16
    :cond_0
    const-string/jumbo v7, "com.samsung.android.email.provider"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v20

    move-object/from16 p2, v11

    const-string/jumbo v11, "com.samsung.android.focus"

    if-nez v20, :cond_1

    invoke-static {v6, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 17
    const-string v0, "addNewAccount() EX : Error :: Email and Focus are not installed on user "

    .line 18
    invoke-static {v6, v0, v14}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v18

    :cond_1
    const/4 v6, 0x1

    if-ne v6, v1, :cond_2

    if-ne v6, v2, :cond_2

    .line 19
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v18

    :cond_2
    const/16 v20, 0x1

    .line 20
    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v21, "eas"

    move-object/from16 v22, v6

    move-object v6, v13

    move-object/from16 v23, v7

    move-object v7, v4

    move-object/from16 p3, v8

    move-object/from16 v24, v9

    move-object v9, v10

    move-object v1, v10

    move-object/from16 v10, v21

    move-object/from16 v2, p2

    move-object/from16 v25, v11

    move/from16 v11, v20

    move-object/from16 v26, v12

    move-object/from16 v12, v22

    invoke-static/range {v6 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 21
    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v18

    .line 22
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 23
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p1

    .line 24
    invoke-virtual {v0, v13, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v5, p31

    .line 25
    invoke-virtual {v0, v13, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .line 26
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v5, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v9, "eas"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    move-object/from16 v8, p3

    invoke-virtual {v5, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v5, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    move/from16 v3, p15

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    move/from16 v3, p16

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    move/from16 v3, p17

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    move/from16 v3, p20

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move/from16 v3, p21

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move/from16 v3, p22

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move/from16 v3, p7

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move/from16 v3, p23

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move/from16 v3, p24

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move/from16 v3, p6

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra."

    move/from16 v3, p25

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move/from16 v3, p26

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move/from16 v3, p27

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move/from16 v3, p28

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move/from16 v3, p29

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    move-object/from16 v3, v26

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v3, v24

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    move-object v3, v2

    move/from16 v2, p13

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    move/from16 v2, p12

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move/from16 v2, p8

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v2, p30

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v5, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v1, v23

    .line 57
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v4, v17

    invoke-virtual {v1, v5, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v1, v25

    .line 59
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    const-string v1, "addNewAccount() EX : failed. "

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :goto_1
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    .line 65
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw v0

    .line 67
    :cond_4
    :goto_3
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v18
.end method

.method public final addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 8
    const-string v3, "addNewAccount() NEW : "

    .line 10
    const-string v4, "addNewAccount_new : sent intent to Email app : "

    .line 12
    const-string v5, "addNewAccount : alias has added, alias = "

    .line 14
    const-string v6, "addNewAccount : Error :: certificate storage name "

    .line 16
    const-string v7, "addNewAccount() New : "

    .line 18
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 21
    move-result-object v15

    .line 22
    invoke-static {v15}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 25
    move-result v14

    .line 26
    iget v13, v15, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    const-wide/16 v16, -0x1

    .line 30
    const-string v12, "ExchangeAccountPolicy"

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string v0, "addNewAccount_new : Error :: Invalid Account."

    .line 36
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-wide v16

    .line 40
    :cond_0
    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 42
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 47
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v11

    .line 51
    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    .line 53
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v10

    .line 57
    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    .line 59
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v8

    .line 63
    iget-object v9, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    .line 65
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v9, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 70
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v9, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    .line 75
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v9

    .line 79
    move/from16 p1, v14

    .line 81
    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 83
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v14

    .line 87
    move-object/from16 v18, v3

    .line 89
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    .line 91
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    move-object/from16 v19, v4

    .line 97
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    .line 99
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 104
    move-object/from16 v20, v2

    .line 106
    xor-int/lit8 v2, v4, 0x1

    .line 108
    if-eqz v11, :cond_1

    .line 110
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    .line 113
    move-result v21

    .line 114
    if-eqz v21, :cond_1

    .line 116
    if-eqz v10, :cond_1

    .line 118
    if-eqz v8, :cond_1

    .line 120
    if-nez v9, :cond_2

    .line 122
    :cond_1
    move-object v5, v12

    .line 123
    goto/16 :goto_7

    .line 125
    :cond_2
    const-string/jumbo v8, "com.samsung.android.email.provider"

    .line 128
    invoke-static {v13, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    .line 131
    move-result v21

    .line 132
    move-object/from16 v22, v5

    .line 134
    const-string/jumbo v5, "com.samsung.android.focus"

    .line 137
    if-nez v21, :cond_3

    .line 139
    invoke-static {v13, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    .line 142
    move-result v21

    .line 143
    if-nez v21, :cond_3

    .line 145
    const-string v0, "addNewAccount() EX : Error :: Email and focus are not installed on user "

    .line 147
    invoke-static {v13, v0, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-wide v16

    .line 151
    :cond_3
    move/from16 v21, v13

    .line 153
    const/4 v13, 0x1

    .line 154
    if-ne v13, v4, :cond_4

    .line 156
    if-ne v13, v2, :cond_4

    .line 158
    const-string v0, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .line 160
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-wide v16

    .line 164
    :cond_4
    const/4 v2, 0x1

    .line 165
    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 167
    const-string/jumbo v23, "eas"

    .line 170
    move-object/from16 v24, v8

    .line 172
    move-object v8, v15

    .line 173
    move-object/from16 v25, v9

    .line 175
    move-object v9, v14

    .line 176
    move-object v14, v10

    .line 177
    move-object/from16 v10, v25

    .line 179
    move-object/from16 v26, v11

    .line 181
    move-object v11, v14

    .line 182
    move-object/from16 v27, v5

    .line 184
    move-object v5, v12

    .line 185
    move-object/from16 v12, v23

    .line 187
    move-object/from16 v23, v6

    .line 189
    move v0, v13

    .line 190
    move/from16 v6, v21

    .line 192
    move v13, v2

    .line 193
    move/from16 v2, p1

    .line 195
    move-object/from16 v28, v14

    .line 197
    move-object v14, v4

    .line 198
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    .line 201
    move-result-wide v8

    .line 202
    const-wide/16 v10, 0x0

    .line 204
    cmp-long v4, v8, v10

    .line 206
    if-lez v4, :cond_5

    .line 208
    const-string v0, "addNewAccount : Error :: Account already exists."

    .line 210
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-wide v16

    .line 214
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 217
    move-result-wide v8

    .line 218
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v4

    .line 230
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 235
    if-eqz v4, :cond_7

    .line 237
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 239
    if-eqz v4, :cond_7

    .line 241
    const-string v4, "addNewAccount_new : SMIME Certificate at creation time"

    .line 243
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 248
    sget v7, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 250
    const/16 v12, 0x11

    .line 252
    if-lt v7, v12, :cond_6

    .line 254
    iget v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    .line 256
    if-lt v7, v0, :cond_6

    .line 258
    const/4 v12, 0x3

    .line 259
    if-gt v7, v12, :cond_6

    .line 261
    move v4, v7

    .line 262
    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    goto/16 :goto_6

    .line 266
    :catch_0
    move-exception v0

    .line 267
    goto/16 :goto_4

    .line 269
    :cond_6
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v6, "#"

    .line 279
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move-object/from16 v6, v26

    .line 284
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object v7

    .line 291
    new-instance v12, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 293
    iget-object v13, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 295
    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 297
    invoke-direct {v12, v15, v13, v14, v4}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    invoke-static {v7, v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 303
    :goto_1
    move v4, v0

    .line 304
    move-object/from16 v0, p0

    .line 306
    goto :goto_2

    .line 307
    :cond_7
    move-object/from16 v6, v26

    .line 309
    goto :goto_1

    .line 310
    :goto_2
    invoke-virtual {v0, v15, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 313
    move-result-wide v12

    .line 314
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v15, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 319
    move-result-wide v14

    .line 320
    new-instance v3, Landroid/content/Intent;

    .line 322
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    .line 325
    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 331
    invoke-virtual {v3, v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 337
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 343
    const-string/jumbo v10, "eas"

    .line 346
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 352
    move-object/from16 v10, v28

    .line 354
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    .line 360
    move-object/from16 v10, v25

    .line 362
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 368
    invoke-virtual {v3, v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 371
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    .line 374
    iget-boolean v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    .line 376
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    .line 382
    iget-boolean v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    .line 384
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    .line 390
    iget-boolean v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    .line 392
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    .line 398
    iget-object v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 400
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    .line 406
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    .line 408
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    .line 414
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    .line 416
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    .line 422
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    .line 424
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    .line 430
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    .line 432
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    .line 438
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    .line 440
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    .line 446
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    .line 448
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    .line 454
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    .line 456
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra."

    .line 462
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    .line 464
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    .line 470
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    .line 472
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    .line 478
    iget-boolean v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    .line 480
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    .line 486
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    .line 488
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    .line 494
    iget v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    .line 496
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    .line 502
    iget-object v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 504
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    .line 510
    iget-object v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 512
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    .line 518
    iget-boolean v10, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 520
    xor-int/2addr v4, v10

    .line 521
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    .line 527
    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 529
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    .line 535
    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    .line 537
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    .line 543
    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    .line 545
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 548
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    .line 551
    invoke-virtual {v3, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 554
    move-object/from16 v4, v24

    .line 556
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 561
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 564
    move-result v4

    .line 565
    if-nez v4, :cond_9

    .line 567
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 569
    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 571
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 574
    if-nez v7, :cond_8

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    .line 578
    move-object/from16 v2, v23

    .line 580
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    iget-object v1, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, " does not exist!"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    move-result-object v0

    .line 597
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    return-wide v16

    .line 604
    :cond_8
    :try_start_1
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    .line 607
    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    move-object/from16 v1, v22

    .line 612
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    move-result-object v1

    .line 616
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_9
    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 621
    new-instance v4, Landroid/os/UserHandle;

    .line 623
    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 626
    move-object/from16 v7, v20

    .line 628
    invoke-virtual {v1, v3, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 631
    move-object/from16 v1, v27

    .line 633
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 638
    new-instance v1, Landroid/os/UserHandle;

    .line 640
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 643
    invoke-virtual {v0, v3, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    .line 648
    move-object/from16 v1, v19

    .line 650
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    move-result-object v0

    .line 660
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    const-wide/16 v1, 0x0

    .line 668
    goto :goto_5

    .line 669
    :goto_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 671
    move-object/from16 v2, v18

    .line 673
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    move-result-object v0

    .line 683
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    goto :goto_3

    .line 687
    :goto_5
    return-wide v1

    .line 688
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    throw v0

    .line 692
    :goto_7
    const-string v0, "addNewAccount_new : Error :: Invalid input parameters."

    .line 694
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-wide v16
.end method

.method public final adminSatisfiesForceSMIMECertificateRules(IIZJ)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    const-string v2, "ExchangeAccountTable"

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    const-string v5, "AccountId"

    .line 10
    const-string v6, "adminUid"

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz p3, :cond_2

    .line 16
    filled-new-array {v6}, [Ljava/lang/String;

    .line 19
    move-result-object v9

    .line 20
    new-instance v10, Landroid/content/ContentValues;

    .line 22
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 25
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    move-result v11

    .line 29
    invoke-static {v7, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 32
    move-result-object v11

    .line 33
    const-string v12, "#SelectClause#"

    .line 35
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v11

    .line 42
    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    if-ne v1, v4, :cond_0

    .line 47
    const-string v1, "(ForceSmimeCertForSigning=1 OR ForceSmimeCert=1)"

    .line 49
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-ne v1, v3, :cond_1

    .line 55
    const-string v1, "(ForceSmimeCertForEncryption=1 OR ForceSmimeCert=1)"

    .line 57
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "((ForceSmimeCertForEncryption=1 AND ForceSmimeCertForSigning=1) OR (ForceSmimeCert=1))"

    .line 63
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 80
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/content/ContentValues;

    .line 86
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v0

    .line 94
    move/from16 v9, p1

    .line 96
    if-eq v0, v9, :cond_4

    .line 98
    goto/16 :goto_2

    .line 100
    :cond_2
    move/from16 v9, p1

    .line 102
    const-string v10, "ForceSmimeCert"

    .line 104
    const-string v11, "ForceSmimeCertForEncryption"

    .line 106
    const-string v12, "ForceSmimeCertForSigning"

    .line 108
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    .line 111
    move-result-object v13

    .line 112
    new-instance v14, Landroid/content/ContentValues;

    .line 114
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 117
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v14, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 133
    invoke-virtual {v0, v2, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_9

    .line 145
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/content/ContentValues;

    .line 151
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 162
    move-result-object v0

    .line 163
    if-ne v1, v4, :cond_5

    .line 165
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 170
    move-result v0

    .line 171
    if-eq v0, v8, :cond_4

    .line 173
    :cond_3
    if-eqz v2, :cond_9

    .line 175
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 178
    move-result v0

    .line 179
    if-ne v0, v8, :cond_9

    .line 181
    :cond_4
    :goto_1
    move v7, v8

    .line 182
    goto :goto_2

    .line 183
    :cond_5
    if-ne v1, v3, :cond_7

    .line 185
    if-eqz v5, :cond_6

    .line 187
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 190
    move-result v0

    .line 191
    if-eq v0, v8, :cond_4

    .line 193
    :cond_6
    if-eqz v2, :cond_9

    .line 195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 198
    move-result v0

    .line 199
    if-ne v0, v8, :cond_9

    .line 201
    goto :goto_1

    .line 202
    :cond_7
    if-eqz v5, :cond_8

    .line 204
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 207
    move-result v1

    .line 208
    if-ne v1, v8, :cond_8

    .line 210
    if-eqz v0, :cond_8

    .line 212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 215
    move-result v0

    .line 216
    if-eq v0, v8, :cond_4

    .line 218
    :cond_8
    if-eqz v2, :cond_9

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 223
    move-result v0

    .line 224
    if-ne v0, v8, :cond_9

    .line 226
    goto :goto_1

    .line 227
    :cond_9
    :goto_2
    return v7
.end method

.method public final allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "allowEmailSettingsChange() : "

    .line 7
    const-string v1, "ExchangeAccountPolicy"

    .line 9
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 22
    const-string p0, "allowEmailSettingsChange() : No exist accId : "

    .line 24
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    const-string v7, "AllowSettingChange"

    .line 31
    move-object v2, p0

    .line 32
    move-wide v5, p2

    .line 33
    move v8, p4

    .line 34
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 37
    move-result p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "allowEmailSettingsChange() : = "

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, " , accId  ="

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string p2, " , allow  ="

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return p0
.end method

.method public final allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "allowInComingAttachments() : "

    .line 7
    const-string v1, "ExchangeAccountPolicy"

    .line 9
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 22
    const-string p0, "allowInComingAttachments_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    const-string v7, "AttachmentEnable"

    .line 31
    move-object v2, p0

    .line 32
    move-wide v5, p3

    .line 33
    move v8, p2

    .line 34
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 37
    move-result p0

    .line 38
    const-string p1, "allowInComingAttachments() : = "

    .line 40
    const-string v0, " , enable  ="

    .line 42
    const-string v2, " , accId  ="

    .line 44
    invoke-static {p1, p0, v0, p2, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 51
    return p0
.end method

.method public final createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move-object/from16 v4, p3

    .line 9
    move-object/from16 v5, p4

    .line 11
    move-object/from16 v14, p5

    .line 13
    move-object/from16 v18, p6

    .line 15
    const-string v2, "ExchangeAccountPolicy"

    .line 17
    const-string v6, "addNewAccount() EX 1"

    .line 19
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/16 v17, 0x1

    .line 24
    const/16 v19, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, -0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const-string v10, "2.5"

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v15, 0x1

    .line 37
    const/16 v16, 0x0

    .line 39
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0
.end method

.method public final deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "deleteAccount() : accId = "

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object p1

    .line 8
    const-string/jumbo v1, "deleteAccount() :"

    .line 11
    const-string v2, "ExchangeAccountPolicy"

    .line 13
    invoke-static {v1, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p2, p3, v1, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 25
    const-string/jumbo p0, "deleteAccount_new() : Not valid accId : "

    .line 28
    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    return v3

    .line 32
    :cond_0
    iget-object v4, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 34
    iget-object v1, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 36
    if-eqz v4, :cond_3

    .line 38
    if-nez v1, :cond_1

    .line 40
    goto/16 :goto_2

    .line 42
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 44
    const-string/jumbo v5, "device_account_policy"

    .line 47
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 53
    if-eqz v5, :cond_2

    .line 55
    const-string/jumbo v6, "com.samsung.android.email"

    .line 58
    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 64
    const-string/jumbo p0, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    .line 67
    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    return v3

    .line 71
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 74
    move-result p1

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    move-result-wide v5

    .line 79
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, " , userId = "

    .line 89
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Landroid/content/Intent;

    .line 104
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    .line 107
    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 113
    invoke-virtual {v0, v7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 119
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 125
    const-string/jumbo p3, "eas"

    .line 128
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 134
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo p2, "com.samsung.android.email.provider"

    .line 140
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 145
    new-instance p2, Landroid/os/UserHandle;

    .line 147
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 153
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    const/4 v3, 0x1

    .line 160
    goto :goto_0

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception p0

    .line 164
    :try_start_1
    const-string/jumbo p1, "deleteAccount() : failed. "

    .line 167
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    :goto_0
    return v3

    .line 174
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    throw p0

    .line 178
    :cond_3
    :goto_2
    const-string/jumbo p0, "deleteAccount() : no Inforamtion for accId = "

    .line 181
    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 184
    return v3
.end method

.method public final enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    iget v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 29
    if-eq v1, v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 39
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v3, "setPackageNameForUid :   "

    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 51
    const-string v4, "SettingsUtils"

    .line 53
    invoke-static {v2, v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "Calling UID changed : "

    .line 62
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " callingUid "

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    const-string v0, "ExchangeAccountPolicy"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-object p1
.end method

.method public final getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    .line 3
    const-string v1, "C#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object p0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 14
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 31
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string/jumbo p1, "getAccountCertificatePassword() failed"

    .line 52
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 p0, 0x0

    .line 56
    :goto_0
    const-string/jumbo p1, "getAccountCertificatePassword() success"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object p0
.end method

.method public final getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "getAccountDetails() : "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " ,  userID = "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "ExchangeAccountPolicy"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    :goto_0
    return-object p0
.end method

.method public final getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    .line 3
    const-string v1, "E#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 14
    filled-new-array {v4}, [Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v4

    .line 22
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    move-result-object p1

    .line 29
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p0

    .line 37
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const/4 p1, 0x0

    .line 44
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    const-string/jumbo p3, "com.samsung.android.focus"

    .line 59
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    if-eqz p0, :cond_0

    .line 65
    :try_start_1
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    .line 67
    move-object p3, p0

    .line 68
    check-cast p3, Ljava/util/HashMap;

    .line 70
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Ljava/lang/String;

    .line 76
    check-cast p0, Ljava/util/HashMap;

    .line 78
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    move-object p1, p3

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    :try_start_2
    const-string p0, "SettingsUtils"

    .line 85
    const-string/jumbo p2, "getSecurityPasswordFocus() failed"

    .line 88
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    move-object p1, p0

    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-exception p0

    .line 99
    const-string/jumbo p2, "getAccountEmailPassword() failed"

    .line 102
    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_0
    const-string/jumbo p0, "getAccountEmailPassword() success"

    .line 108
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object p1
.end method

.method public final getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo p1, "getAccountId() : "

    .line 8
    const-string v7, "ExchangeAccountPolicy"

    .line 10
    invoke-static {p1, p3, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v5, 0x1

    .line 14
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 16
    const-string/jumbo v4, "eas"

    .line 19
    move-object v1, p2

    .line 20
    move-object v2, p3

    .line 21
    move-object v3, p4

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    .line 25
    move-result-wide p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v1, "getAccountId() : = "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " ,  easDomain = "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p2, ", easUser = "

    .line 47
    const-string v1, ", activeSyncHost = "

    .line 49
    invoke-static {v0, p2, p3, v1, p4}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {v7, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-wide p0
.end method

.method public final getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "getAllEASAccounts() : userId = "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ExchangeAccountPolicy"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 36
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_1

    .line 50
    array-length v5, v3

    .line 51
    move v6, v4

    .line 52
    :goto_0
    if-ge v6, v5, :cond_1

    .line 54
    aget-wide v7, v3, v6

    .line 56
    invoke-static {v7, v8, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 59
    move-result-object v7

    .line 60
    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result p0

    .line 72
    const/4 p1, 0x0

    .line 73
    if-lez p0, :cond_2

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 78
    move-result p0

    .line 79
    new-array p0, p0, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v2

    .line 85
    move v3, v4

    .line 86
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 98
    add-int/lit8 v6, v3, 0x1

    .line 100
    aput-object v5, p0, v3

    .line 102
    move v3, v6

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object p0, p1

    .line 105
    :cond_3
    if-eqz p0, :cond_5

    .line 107
    array-length v1, p0

    .line 108
    :goto_2
    if-ge v4, v1, :cond_6

    .line 110
    aget-object v2, p0, v4

    .line 112
    if-eqz v2, :cond_4

    .line 114
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const-string/jumbo p0, "getAllEASAccounts_new( ): fail to get list."

    .line 127
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 133
    move-result p0

    .line 134
    if-lez p0, :cond_7

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result p0

    .line 140
    new-array p0, p0, [Lcom/samsung/android/knox/accounts/Account;

    .line 142
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 146
    move-object p1, p0

    .line 147
    check-cast p1, [Lcom/samsung/android/knox/accounts/Account;

    .line 149
    :cond_7
    return-object p1
.end method

.method public final getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 14

    .line 1
    const-string/jumbo v0, "getDeviceId() : sendBroadcast "

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 11
    move-result p1

    .line 12
    const-string v1, "ExchangeAccountPolicy"

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v3, "getDeviceId() : userID = "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v1, "com.samsung.android.email.provider"

    .line 35
    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_0

    .line 42
    const-string p0, "ExchangeAccountPolicy"

    .line 44
    const-string/jumbo p1, "getDeviceId() failed : Email App is not installed. : com.samsung.android.email.provider"

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v3

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 71
    const-string p0, "ExchangeAccountPolicy"

    .line 73
    const-string/jumbo p1, "getDeviceId() failed : Email App is disabled. : com.samsung.android.email.provider"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v3

    .line 80
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Ljava/lang/String;

    .line 102
    return-object p0

    .line 103
    :cond_2
    new-instance v2, Ljava/lang/Object;

    .line 105
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 108
    monitor-enter v2

    .line 109
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 112
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    :try_start_1
    new-instance v12, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-direct {v12, v5, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 119
    const-string/jumbo v13, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

    .line 122
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

    .line 125
    new-instance v8, Landroid/content/IntentFilter;

    .line 127
    invoke-direct {v8, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v5, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    .line 133
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 138
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 140
    const/4 v11, 0x2

    .line 141
    const/4 v9, 0x0

    .line 142
    const/4 v10, 0x0

    .line 143
    move-object v6, v12

    .line 144
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 147
    new-instance v5, Landroid/content/Intent;

    .line 149
    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 155
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 160
    new-instance v7, Landroid/os/UserHandle;

    .line 162
    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 165
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 168
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 171
    const-string v5, "ExchangeAccountPolicy"

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    if-eqz p1, :cond_3

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v0

    .line 184
    goto :goto_0

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    goto :goto_8

    .line 187
    :catch_0
    move-exception p0

    .line 188
    goto :goto_6

    .line 189
    :cond_3
    const-string v0, ""

    .line 191
    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_4

    .line 211
    const-string v0, "ExchangeAccountPolicy"

    .line 213
    const-string/jumbo v1, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-wide/16 v0, 0x1388

    .line 221
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    goto :goto_1

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    goto :goto_5

    .line 227
    :catch_1
    move-exception v0

    .line 228
    goto :goto_3

    .line 229
    :cond_4
    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 231
    :goto_2
    invoke-virtual {p0, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    goto :goto_4

    .line 235
    :goto_3
    :try_start_4
    const-string v1, "ExchangeAccountPolicy"

    .line 237
    const-string/jumbo v5, "getDeviceId() Inturrupted."

    .line 240
    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    goto :goto_2

    .line 246
    :goto_4
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 249
    goto :goto_7

    .line 250
    :catchall_2
    move-exception p0

    .line 251
    goto :goto_9

    .line 252
    :goto_5
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {p0, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    :goto_6
    :try_start_8
    const-string v0, "ExchangeAccountPolicy"

    .line 260
    const-string/jumbo v1, "getDeviceId() : failed. "

    .line 263
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 266
    goto :goto_4

    .line 267
    :goto_7
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 268
    sget-object p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-result-object p0

    .line 278
    check-cast p0, Ljava/lang/String;

    .line 280
    return-object p0

    .line 281
    :goto_8
    :try_start_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    throw p0

    .line 285
    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 286
    throw p0
.end method

.method public final getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "ForceSmimeCertForEncryption"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "ForceSmimeCertForSigning"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "IncomingAttachmentSize"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "MaxCalendarAgeFilter"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "MaxEmailAgeFilter"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "MaxEmailBodyTruncationSize"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "MaxEmailHTMLBodyTruncationSize"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getPolicyState(IIJLjava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    .line 3
    invoke-static {p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState$1(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    filled-new-array {p5}, [Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 16
    const-string/jumbo v4, "containerID"

    .line 19
    const-string/jumbo v5, "userID"

    .line 22
    invoke-static {p1, v3, v4, p2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "AccountId"

    .line 31
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    const-string v4, "ExchangeAccountTable"

    .line 38
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 41
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    move-object v2, p0

    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    move-result v3

    .line 49
    const-string v4, ", container id = "

    .line 51
    const-string v5, ", user id = "

    .line 53
    if-eqz v3, :cond_0

    .line 55
    const-string/jumbo p0, "getPolicyState() : results is default value(null), accId = "

    .line 58
    invoke-static {p2, p0, p3, p4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v3, "getPolicyState() : results = "

    .line 81
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string p0, ", accId = "

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState$1(Ljava/lang/String;)Z

    .line 117
    move-result p0

    .line 118
    xor-int/lit8 p1, p0, 0x1

    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object p2

    .line 124
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_3

    .line 130
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object p3

    .line 134
    check-cast p3, Landroid/content/ContentValues;

    .line 136
    invoke-virtual {p3, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p4

    .line 140
    if-eqz p4, :cond_1

    .line 142
    invoke-virtual {p3, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p3

    .line 146
    if-eqz p1, :cond_2

    .line 148
    const-string p4, "1"

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    const-string p4, "0"

    .line 153
    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result p3

    .line 157
    if-eqz p3, :cond_1

    .line 159
    const-string/jumbo p0, "getPolicyState: restricted. "

    .line 162
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return p1

    .line 166
    :cond_3
    const-string/jumbo p1, "getPolicyState: no restrictData. "

    .line 169
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return p0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    const-string/jumbo p1, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    .line 177
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return v1
.end method

.method public final getPolicyStateasInteger(IIJLjava/lang/String;)I
    .locals 6

    .line 1
    const-string/jumbo v0, "getPolicyStateasInteger() : results = "

    .line 4
    const-string v1, "IncomingAttachmentSize"

    .line 6
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "MaxCalendarAgeFilter"

    .line 15
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "MaxEmailAgeFilter"

    .line 24
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "MaxEmailBodyTruncationSize"

    .line 33
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    .line 42
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    const-string/jumbo v1, "getDefaultValueStateInteger() : policy = "

    .line 48
    const-string v2, " ret = 0"

    .line 50
    const-string v3, "ExchangeAccountPolicy"

    .line 52
    invoke-static {v1, p5, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    filled-new-array {p5}, [Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Landroid/content/ContentValues;

    .line 61
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string/jumbo v4, "containerID"

    .line 67
    const-string/jumbo v5, "userID"

    .line 70
    invoke-static {p1, v2, v4, p2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object v4

    .line 77
    const-string v5, "AccountId"

    .line 79
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const/4 v4, 0x0

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    const-string v5, "ExchangeAccountTable"

    .line 87
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 90
    move-result-object p0

    .line 91
    move-object v1, p0

    .line 92
    check-cast v1, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 100
    return v4

    .line 101
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string p0, ", accId = "

    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const-string p0, ", user id = "

    .line 119
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string p0, ", container id = "

    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p0

    .line 144
    const p1, 0x7fffffff

    .line 147
    move p2, p1

    .line 148
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result p3

    .line 152
    if-eqz p3, :cond_6

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object p3

    .line 158
    check-cast p3, Landroid/content/ContentValues;

    .line 160
    invoke-virtual {p3, p5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 163
    move-result-object p3

    .line 164
    if-eqz p3, :cond_5

    .line 166
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result p4

    .line 170
    if-lez p4, :cond_5

    .line 172
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 175
    move-result p4

    .line 176
    if-ge p4, p2, :cond_5

    .line 178
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 181
    move-result p2

    .line 182
    goto :goto_1

    .line 183
    :cond_6
    if-eq p2, p1, :cond_7

    .line 185
    move v4, p2

    .line 186
    :cond_7
    const-string/jumbo p0, "getPolicyStateasInteger() : result = "

    .line 189
    invoke-static {v4, p0, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    return v4

    .line 193
    :catch_0
    move-exception p0

    .line 194
    const-string/jumbo p1, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    .line 197
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return v4
.end method

.method public final getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    const-string v5, "ReqEncryptSmime"

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v2

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    const-string v5, "ReqSigSmime"

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v2

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "ExchangeAccountPolicy"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string/jumbo p0, "getSMIMECertificateAlias() : No exist accId : "

    .line 13
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 16
    return-object v2

    .line 17
    :cond_0
    if-nez p4, :cond_1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    if-ne p4, v0, :cond_2

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :goto_0
    const-string/jumbo p1, "getSMIMECertificateAlias() : failed. "

    .line 42
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_2
    const-string/jumbo p0, "getSMIMECertificateAlias() : accId = "

    .line 48
    const-string p1, ", type = "

    .line 50
    invoke-static {p4, p0, p2, p3, p1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object p0

    .line 54
    const-string p1, ", ret = "

    .line 56
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v2
.end method

.method public final isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "AllowNotificationChange"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "AllowSettingChange"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result v2

    .line 7
    const-string v5, "AttachmentEnable"

    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p2, v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
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
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    const-string v1, "AccountId"

    .line 7
    const-string v2, "ForceSmimeCert"

    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Landroid/content/ContentValues;

    .line 15
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 22
    const-string v5, "adminUid"

    .line 24
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    const-string v5, "ExchangeAccountTable"

    .line 31
    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    const-string v4, "ExchangeAccountPolicy"

    .line 47
    if-eqz v3, :cond_1

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/content/ContentValues;

    .line 55
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v5

    .line 63
    if-lez v5, :cond_0

    .line 65
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 74
    move-result-wide v5

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v7, "sendReleaseSMIMECertificate() : accId = "

    .line 80
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, ", containerId = 0, userId = "

    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v3, Landroid/content/Intent;

    .line 103
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

    .line 106
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 112
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 118
    move-result-wide v4

    .line 119
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 121
    new-instance v7, Landroid/os/UserHandle;

    .line 123
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 126
    const-string/jumbo v8, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 129
    invoke-virtual {v6, v3, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0

    .line 141
    :cond_1
    const-string/jumbo p0, "onPreAdminRemoval() : "

    .line 144
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public final putPolicyState(IIJLjava/lang/String;Z)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    const-string v1, "adminUid"

    .line 3
    const-string/jumbo v2, "containerID"

    .line 4
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p6, :cond_0

    .line 6
    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v0, p5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static {p1, v3, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , state  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final putPolicyState(IILjava/lang/String;IJ)Z
    .locals 5

    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    const-string v1, "adminUid"

    .line 22
    const-string/jumbo v2, "containerID"

    .line 23
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 27
    invoke-static {p1, v3, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , value  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "removePendingAccount() : fail to remove pending EAS Account. "

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 11
    move-result p1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v2, "removePendingAccount() : "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "ExchangeAccountPolicy"

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v3

    .line 36
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 38
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    .line 41
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 47
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 53
    const-string/jumbo v5, "eas"

    .line 56
    invoke-virtual {v1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 62
    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    .line 68
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    .line 74
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    sget-object p2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 79
    const-string/jumbo p2, "com.samsung.android.email.provider"

    .line 82
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 87
    new-instance p2, Landroid/os/UserHandle;

    .line 89
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 92
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 95
    invoke-virtual {p0, v1, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception p0

    .line 105
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    goto :goto_0

    .line 121
    :goto_1
    return-void

    .line 122
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

.method public final resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .locals 9

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5
    new-instance v1, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string/jumbo v4, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 15
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 18
    const-string v6, ", userId = "

    .line 20
    const-string v7, ", containerId = "

    .line 22
    const-string v8, "ExchangeAccountPolicy"

    .line 24
    if-ne p5, v2, :cond_0

    .line 26
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    const-string v2, "ForceSmimeCertForEncryption"

    .line 30
    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    if-nez p6, :cond_1

    .line 35
    const-string/jumbo p5, "sendReleaseSMIMECertificateForEncryption() : accId = "

    .line 38
    invoke-static {v0, p5, p2, p3, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p5

    .line 42
    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p5

    .line 52
    invoke-static {v8, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p5, Landroid/content/Intent;

    .line 57
    const-string/jumbo p6, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 60
    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p5, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    move-result-wide v5

    .line 70
    :try_start_0
    iget-object p6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/UserHandle;

    .line 74
    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 77
    invoke-virtual {p6, p5, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0

    .line 89
    :cond_0
    const/4 v2, 0x3

    .line 90
    if-ne p5, v2, :cond_3

    .line 92
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    const-string v2, "ForceSmimeCertForSigning"

    .line 96
    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    if-nez p6, :cond_1

    .line 101
    const-string/jumbo p5, "sendReleaseSMIMECertificateForSigning() : accId = "

    .line 104
    invoke-static {v0, p5, p2, p3, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object p5

    .line 108
    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p5

    .line 118
    invoke-static {v8, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance p5, Landroid/content/Intent;

    .line 123
    const-string/jumbo p6, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 126
    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p5, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 135
    move-result-wide v5

    .line 136
    :try_start_1
    iget-object p6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Landroid/os/UserHandle;

    .line 140
    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 143
    invoke-virtual {p6, p5, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    goto :goto_0

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0

    .line 155
    :cond_1
    :goto_0
    new-instance p4, Landroid/content/ContentValues;

    .line 157
    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object p1

    .line 164
    const-string p5, "adminUid"

    .line 166
    invoke-virtual {p4, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    move-result-object p1

    .line 173
    const-string p2, "AccountId"

    .line 175
    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 180
    const-string p1, "ExchangeAccountTable"

    .line 182
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 185
    move-result p0

    .line 186
    if-lez p0, :cond_2

    .line 188
    const/4 v3, 0x1

    .line 189
    :cond_2
    return v3

    .line 190
    :cond_3
    const-string/jumbo p0, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    .line 193
    invoke-static {p5, p0, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    return v3
.end method

.method public final sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result p1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {v4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;I)V

    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    move-result-object v1

    .line 29
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 31
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 33
    iget-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v0, "ExchangeAccountPolicy"

    .line 37
    if-nez p1, :cond_0

    .line 39
    :try_start_1
    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 47
    const-wide/16 v4, 0x1388

    .line 49
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string/jumbo p1, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 63
    const-wide/16 v4, 0x3a98

    .line 65
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-void

    .line 72
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw p0
.end method

.method public final setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setAcceptAllCertificates() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setAcceptAllCertificates_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-string p0, "ExchangeAccountPolicy"

    .line 6
    const-string/jumbo p1, "setAccountBaseParameters() : deprecated "

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-wide/16 p0, -0x1

    .line 14
    return-wide p0
.end method

.method public final setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 5

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    .line 3
    const-string v1, "C#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object p0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 14
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 31
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 34
    move-result-wide p0

    .line 35
    const-wide/16 v2, -0x1

    .line 37
    if-nez p2, :cond_0

    .line 39
    return-wide v2

    .line 40
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const-string/jumbo p2, "setAccountCertificatePassword() success"

    .line 58
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-wide p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string/jumbo p1, "setAccountCertificatePassword() failed"

    .line 66
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return-wide v2
.end method

.method public final setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 6

    .line 1
    const-string v0, "ExchangeAccountPolicy"

    .line 3
    const-string v1, "E#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$12()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object p0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 14
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 31
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 34
    move-result-wide p0

    .line 35
    const-wide/16 v2, -0x1

    .line 37
    if-nez p2, :cond_0

    .line 39
    return-wide v2

    .line 40
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "SettingsUtils"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    if-eqz v1, :cond_1

    .line 59
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    .line 61
    check-cast v5, Ljava/util/HashMap;

    .line 63
    invoke-virtual {v5, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :try_start_2
    const-string/jumbo p2, "setSecurityPasswordFocus() success"

    .line 69
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    const-string/jumbo p2, "setSecurityPasswordFocus() failed"

    .line 76
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string/jumbo p2, "setSecurityPasswordFocus() failed : invalid parameter"

    .line 83
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :goto_0
    const-string/jumbo p2, "setAccountEmailPassword() success"

    .line 89
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-wide p0

    .line 93
    :catch_1
    move-exception p0

    .line 94
    const-string/jumbo p1, "setAccountEmailPassword() failed"

    .line 97
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-wide v2
.end method

.method public final setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setAccountName() : "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ExchangeAccountPolicy"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p2, :cond_0

    .line 32
    const-string/jumbo p0, "setAccountName() : accountName is null"

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 47
    const-string/jumbo p0, "setAccountName_new() : No exist accId : "

    .line 50
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 53
    return v0

    .line 54
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 61
    move-result p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v0, "setAccountName() = "

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, ", accountName ="

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string p2, " , accId = "

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 89
    return p0
.end method

.method public final setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setAlwaysVibrateOnEmailNotification() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setAsDefaultAccount() :  "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p2, p3, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setAsDefaultAccount_new() : No exist accId : "

    .line 24
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 37
    move-result p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v0, "setAsDefaultAccount() = "

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, " , accId = "

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return p0
.end method

.method public final setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setClientAuthCert() : "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ExchangeAccountPolicy"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 35
    const-string/jumbo p0, "setClientAuthCert() : No exist accId : "

    .line 38
    invoke-static {p0, p4, p5, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    return-void

    .line 42
    :cond_0
    if-eqz p2, :cond_2

    .line 44
    if-eqz p3, :cond_2

    .line 46
    const-wide/16 v2, 0x1

    .line 48
    cmp-long v2, p4, v2

    .line 50
    if-gez v2, :cond_1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v2

    .line 57
    const/4 v4, 0x1

    .line 58
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 60
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    .line 62
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    new-instance v4, Landroid/content/Intent;

    .line 67
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

    .line 70
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 76
    move-result-wide v5

    .line 77
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    .line 80
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 83
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 86
    invoke-virtual {v4, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    .line 92
    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 97
    new-instance p1, Landroid/os/UserHandle;

    .line 99
    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 102
    const-string/jumbo p2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 105
    invoke-virtual {p0, v4, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception p0

    .line 115
    :try_start_1
    const-string/jumbo p1, "setClientAuthCert() : failed"

    .line 118
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    goto :goto_0

    .line 122
    :goto_1
    return-void

    .line 123
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw p0

    .line 127
    :cond_2
    :goto_3
    const-string/jumbo p0, "setClientAuthCert() : error : "

    .line 130
    invoke-static {p0, p4, p5, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 133
    return-void
.end method

.method public final setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setDataSyncs() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p6, p7, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p6, p7, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    .line 24
    invoke-static {p0, p6, p7, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 31
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 33
    iput-boolean p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 35
    iput-boolean p5, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 42
    move-result p0

    .line 43
    const-string/jumbo p1, "setDataSyncs() : = "

    .line 46
    const-string p4, " ,  syncCalendar = "

    .line 48
    const-string p5, ", syncContacts = "

    .line 50
    invoke-static {p1, p0, p4, p2, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string p2, ", accid = "

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return p0
.end method

.method public final setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setEmailNotificationsState() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    const-string p0, "allowInComingAttachments() : No exist accId : "

    .line 25
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_0
    const-string v7, "AllowNotificationChange"

    .line 32
    move-object v2, p0

    .line 33
    move-wide v5, p2

    .line 34
    move v8, p4

    .line 35
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 38
    move-result p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v0, "setEmailNotificationsState() : = "

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, " , accId  ="

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    const-string p2, " , enable  ="

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return p0
.end method

.method public final setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v7, p2

    .line 5
    move-object/from16 v9, p4

    .line 7
    move-object/from16 v10, p5

    .line 9
    move/from16 v11, p6

    .line 11
    const-string v12, "S"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v13, "setForceSMIMECertificateAlias() : accId = "

    .line 18
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, ", alias = "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ", type = "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const-string v14, "ExchangeAccountPolicy"

    .line 46
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 55
    const-string/jumbo v1, "setForceSMIMECertificateAlias() : credential storage name = "

    .line 58
    invoke-static {v1, v9, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {v13, v7, v8, v14}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 67
    move-result-object v15

    .line 68
    invoke-static {v15}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 71
    move-result v5

    .line 72
    const/4 v1, 0x1

    .line 73
    const/16 v16, 0x0

    .line 75
    if-eq v11, v1, :cond_1

    .line 77
    if-eqz v11, :cond_1

    .line 79
    const-string/jumbo v0, "setForceSMIMECertificateAlias() : invalid type : "

    .line 82
    invoke-static {v11, v0, v14}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return v16

    .line 86
    :cond_1
    invoke-virtual {v0, v15, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_2

    .line 92
    const-string/jumbo v0, "setForceSMIMECertificateAlias() : No exist accId : "

    .line 95
    invoke-static {v0, v7, v8, v14}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 98
    return v16

    .line 99
    :cond_2
    if-nez v11, :cond_3

    .line 101
    const/4 v2, 0x2

    .line 102
    :goto_0
    move v3, v2

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v2, 0x3

    .line 105
    goto :goto_0

    .line 106
    :goto_1
    iget v2, v15, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 108
    if-eqz v10, :cond_4

    .line 110
    move v4, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move/from16 v4, v16

    .line 114
    :goto_2
    move-object/from16 v1, p0

    .line 116
    move-object/from16 v17, v13

    .line 118
    move v13, v5

    .line 119
    move-wide/from16 v5, p2

    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIZJ)Z

    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "setForceSMIMECertificateAlias() : either a smime certificate has already been enforced on this user by other admin or admin "

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget v1, v15, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, " is trying to release a certificate which was not enforced by him"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v16

    .line 153
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 156
    move-result-wide v1

    .line 157
    if-eqz v10, :cond_6

    .line 159
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 165
    move-result-wide v3

    .line 166
    new-instance v5, Landroid/content/Intent;

    .line 168
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    .line 171
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 177
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

    .line 183
    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    .line 189
    invoke-virtual {v5, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 195
    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    move-result v6

    .line 202
    if-nez v6, :cond_7

    .line 204
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

    .line 207
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    goto :goto_3

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto :goto_6

    .line 213
    :catch_0
    move-exception v0

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    :goto_3
    new-instance v6, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 217
    const/4 v9, 0x0

    .line 218
    const/4 v11, -0x1

    .line 219
    invoke-direct {v6, v15, v10, v9, v11}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    invoke-static {v3, v6}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_8

    .line 240
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 242
    new-instance v4, Landroid/os/UserHandle;

    .line 244
    invoke-direct {v4, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 247
    const-string/jumbo v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 250
    invoke-virtual {v0, v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    goto :goto_5

    .line 257
    :goto_4
    :try_start_1
    const-string/jumbo v3, "setForceSMIMECertificateAlias() : failed. "

    .line 260
    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    move/from16 v3, v16

    .line 268
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    move-object/from16 v1, v17

    .line 272
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", ret = "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v3

    .line 294
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    throw v0
.end method

.method public final setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-wide/from16 v8, p2

    .line 5
    move-object/from16 v0, p4

    .line 7
    move-object/from16 v10, p5

    .line 9
    move-object/from16 v11, p6

    .line 11
    const-string/jumbo v12, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    .line 14
    const-string v13, "S"

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 19
    move-result-object v14

    .line 20
    const-string v1, "ExchangeAccountPolicy"

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v3, "setForceSMIMECertificateInternal() : "

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, ", "

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v2, v14, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    invoke-static {v14}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 53
    move-result v15

    .line 54
    invoke-virtual {v7, v14, v8, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 57
    move-result v1

    .line 58
    const/16 v16, 0x3

    .line 60
    if-nez v1, :cond_0

    .line 62
    const-string v0, "ExchangeAccountPolicy"

    .line 64
    const-string/jumbo v1, "setForceSMIMECertificateInternal() : No exist accId : "

    .line 67
    invoke-static {v1, v8, v9, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    return v16

    .line 71
    :cond_0
    const/16 v17, 0x1

    .line 73
    if-eqz v0, :cond_b

    .line 75
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 81
    goto/16 :goto_8

    .line 83
    :cond_1
    const/16 v18, 0x2

    .line 85
    if-eqz v10, :cond_a

    .line 87
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 93
    goto/16 :goto_7

    .line 95
    :cond_2
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 98
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 104
    move/from16 v3, v16

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 110
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 116
    move/from16 v3, v18

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    move/from16 v3, v17

    .line 121
    :goto_0
    const/4 v4, 0x1

    .line 122
    move-object/from16 v1, p0

    .line 124
    move-wide/from16 v5, p2

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIZJ)Z

    .line 129
    move-result v1

    .line 130
    const/4 v2, 0x0

    .line 131
    if-nez v1, :cond_5

    .line 133
    const-string v0, "ExchangeAccountPolicy"

    .line 135
    const-string/jumbo v1, "setForceSMIMECertificateInternal() : a smime certificate has already been enforced on this user"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v2

    .line 142
    :cond_5
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {v7, v14, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 146
    move-result-wide v3

    .line 147
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 150
    move-result-wide v5

    .line 151
    new-instance v1, Landroid/content/Intent;

    .line 153
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 159
    invoke-virtual {v1, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

    .line 165
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 177
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 183
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v4, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 186
    move-wide/from16 v19, v2

    .line 188
    :try_start_2
    new-instance v2, Landroid/os/UserHandle;

    .line 190
    invoke-direct {v2, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 193
    const-string/jumbo v3, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 196
    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 201
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    .line 204
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v2

    .line 208
    const/4 v3, -0x1

    .line 209
    if-eqz v2, :cond_6

    .line 211
    move/from16 v2, v17

    .line 213
    goto :goto_1

    .line 214
    :cond_6
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 217
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_7

    .line 223
    move/from16 v2, v18

    .line 225
    goto :goto_1

    .line 226
    :cond_7
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 229
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_8

    .line 235
    move/from16 v2, v16

    .line 237
    goto :goto_1

    .line 238
    :cond_8
    move v2, v3

    .line 239
    :goto_1
    invoke-direct {v1, v14, v0, v10, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 257
    move-result v0

    .line 258
    const-string v1, "ExchangeAccountPolicy"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    if-eqz v0, :cond_9

    .line 277
    move v2, v3

    .line 278
    goto :goto_2

    .line 279
    :cond_9
    const/4 v2, 0x0

    .line 280
    :goto_2
    :try_start_3
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    goto :goto_4

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    goto :goto_6

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    goto :goto_5

    .line 288
    :catch_0
    move-exception v0

    .line 289
    goto :goto_3

    .line 290
    :catchall_2
    move-exception v0

    .line 291
    move-wide/from16 v19, v2

    .line 293
    goto :goto_5

    .line 294
    :catch_1
    move-exception v0

    .line 295
    move-wide/from16 v19, v2

    .line 297
    :goto_3
    :try_start_4
    const-string v1, "ExchangeAccountPolicy"

    .line 299
    const-string/jumbo v2, "setForceSMIMECertificateInternal() : failed. "

    .line 302
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    :try_start_5
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    const/4 v2, 0x0

    .line 309
    :goto_4
    monitor-exit p0

    .line 310
    return v2

    .line 311
    :goto_5
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v0

    .line 315
    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 316
    throw v0

    .line 317
    :cond_a
    :goto_7
    const-string v0, "ExchangeAccountPolicy"

    .line 319
    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPassword is null"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v18

    .line 326
    :cond_b
    :goto_8
    const-string v0, "ExchangeAccountPolicy"

    .line 328
    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPath is null"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v17
.end method

.method public final setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setIncomingAttachmentsSize() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 24
    const-string/jumbo p0, "setIncomingAttachmentsSize() : No exist accId : "

    .line 27
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    return v0

    .line 31
    :cond_0
    if-gez p2, :cond_1

    .line 33
    const-string/jumbo p0, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v0

    .line 40
    :cond_1
    const-string v5, "IncomingAttachmentSize"

    .line 42
    move-object v2, p0

    .line 43
    move v6, p2

    .line 44
    move-wide v7, p3

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    .line 48
    move-result p0

    .line 49
    const-string/jumbo p1, "setIncomingAttachmentsSize() : = "

    .line 52
    const-string v0, " , size  ="

    .line 54
    const-string v2, " , accId  ="

    .line 56
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 63
    return p0
.end method

.method public final setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setMaxCalendarAgeFilter() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 22
    move-result-object v0

    .line 23
    const/4 v9, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const-string/jumbo p0, "setMaxCalendarAgeFilter() : No exist accId : "

    .line 29
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 32
    return v9

    .line 33
    :cond_0
    const/4 v2, 0x4

    .line 34
    if-lt p2, v2, :cond_1

    .line 36
    const/4 v2, 0x7

    .line 37
    if-le p2, v2, :cond_2

    .line 39
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v9

    .line 48
    :cond_2
    const-string v5, "MaxCalendarAgeFilter"

    .line 50
    move-object v2, p0

    .line 51
    move v6, p2

    .line 52
    move-wide v7, p3

    .line 53
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3

    .line 59
    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v9

    .line 66
    :cond_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 69
    move-result p2

    .line 70
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 72
    if-le p3, p2, :cond_4

    .line 74
    if-eqz p2, :cond_4

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo p4, "setMaxCalendarAgeFilter() : need to change Account value : "

    .line 81
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 86
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string p4, " - "

    .line 91
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_4
    const/4 p0, 0x1

    .line 114
    return p0
.end method

.method public final setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 14
    move-result-object v7

    .line 15
    const/4 v8, 0x0

    .line 16
    const-string v9, "ExchangeAccountPolicy"

    .line 18
    if-nez v7, :cond_0

    .line 20
    const-string/jumbo p0, "setMaxEmailAgeFilter() : No exist accId : "

    .line 23
    invoke-static {p0, p3, p4, v9}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    return v8

    .line 27
    :cond_0
    if-ltz p2, :cond_4

    .line 29
    const/4 v0, 0x5

    .line 30
    if-le p2, v0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v3, "MaxEmailAgeFilter"

    .line 35
    move-object v0, p0

    .line 36
    move v4, p2

    .line 37
    move-wide v5, p3

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_2

    .line 44
    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    .line 47
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v8

    .line 51
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 54
    move-result p2

    .line 55
    iget p3, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 57
    if-le p3, p2, :cond_3

    .line 59
    if-eqz p2, :cond_3

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo p4, "setMaxEmailAgeFilter() : need to change Account value : "

    .line 66
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget p4, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 71
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string p4, " - "

    .line 76
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 86
    invoke-static {v9, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput p2, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 91
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p0, p1, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :cond_3
    const/4 p0, 0x1

    .line 99
    return p0

    .line 100
    :cond_4
    :goto_0
    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    .line 103
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v8
.end method

.method public final setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 22
    move-result-object v0

    .line 23
    const/4 v9, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : No exist accId : "

    .line 29
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 32
    return v9

    .line 33
    :cond_0
    if-gez p2, :cond_1

    .line 35
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v9

    .line 42
    :cond_1
    const-string v5, "MaxEmailBodyTruncationSize"

    .line 44
    move-object v2, p0

    .line 45
    move v6, p2

    .line 46
    move-wide v7, p3

    .line 47
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 53
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v9

    .line 60
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 63
    move-result p2

    .line 64
    iget-object p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 66
    invoke-static {p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 69
    move-result p3

    .line 70
    if-nez p3, :cond_4

    .line 72
    if-eqz p2, :cond_4

    .line 74
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    .line 76
    if-eqz p3, :cond_3

    .line 78
    mul-int/lit16 p4, p2, 0x400

    .line 80
    if-le p3, p4, :cond_4

    .line 82
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo p4, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    .line 87
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    .line 92
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string p4, " - "

    .line 97
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    mul-int/lit16 p2, p2, 0x400

    .line 102
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    .line 114
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 119
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : updated account."

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize()  = true"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 p0, 0x1

    .line 132
    return p0
.end method

.method public final setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setMaxEmailHTMLBodyTruncationSize() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 22
    move-result-object v0

    .line 23
    const/4 v9, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    .line 29
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 32
    return v9

    .line 33
    :cond_0
    if-gez p2, :cond_1

    .line 35
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v9

    .line 42
    :cond_1
    const-string v5, "MaxEmailHTMLBodyTruncationSize"

    .line 44
    move-object v2, p0

    .line 45
    move v6, p2

    .line 46
    move-wide v7, p3

    .line 47
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 53
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v9

    .line 60
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 63
    move-result p2

    .line 64
    iget-object p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 66
    invoke-static {p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 69
    move-result p3

    .line 70
    iget-boolean p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    .line 72
    if-eqz p4, :cond_4

    .line 74
    if-eqz p3, :cond_4

    .line 76
    if-eqz p2, :cond_4

    .line 78
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    .line 80
    if-eqz p3, :cond_3

    .line 82
    mul-int/lit16 p4, p2, 0x400

    .line 84
    if-le p3, p4, :cond_4

    .line 86
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo p4, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    .line 91
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    .line 96
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string p4, " - "

    .line 101
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    mul-int/lit16 p2, p2, 0x400

    .line 106
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p3

    .line 113
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 123
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : updated account."

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize()  = true"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 p0, 0x1

    .line 136
    return p0
.end method

.method public final setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "setPassword() : "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ExchangeAccountPolicy"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    if-nez p2, :cond_0

    .line 36
    const-string/jumbo p0, "setPassword() : Invalid input parameter."

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 51
    const-string/jumbo p0, "setPassword_new() : No exist accId : "

    .line 54
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    return v0

    .line 58
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public final setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setPastDaysToSync() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-gt v0, p2, :cond_2

    .line 17
    const/4 v0, 0x6

    .line 18
    if-ge v0, p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string/jumbo p0, "setPastDaysToSync_new() : No exist accId : "

    .line 32
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    return v2

    .line 36
    :cond_1
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 43
    move-result p0

    .line 44
    const-string/jumbo p1, "setPastDaysToSync() = "

    .line 47
    const-string v0, " , pastDaysToSync = "

    .line 49
    const-string v2, " , accId = "

    .line 51
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 58
    return p0

    .line 59
    :cond_2
    :goto_0
    const-string/jumbo p0, "setPastDaysToSync : Error :: Invalid input parameter."

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v2
.end method

.method public final setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z
    .locals 15

    .line 1
    move-wide/from16 v7, p2

    .line 3
    move/from16 v9, p4

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v10

    .line 9
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v11

    .line 13
    move-object v12, p0

    .line 14
    invoke-virtual {p0, v10, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 17
    move-result v0

    .line 18
    const-string v13, "ExchangeAccountPolicy"

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "setReleaseSMIMECertificateInternal() : No exist accId : "

    .line 26
    invoke-static {v0, v7, v8, v13}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    return v6

    .line 30
    :cond_0
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v0, p0

    .line 34
    move/from16 v2, p4

    .line 36
    move-wide/from16 v4, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIZJ)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : admin "

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " is trying to release a certificate which was not enforced by him"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v6

    .line 70
    :cond_1
    const/4 v14, 0x1

    .line 71
    if-eq v9, v14, :cond_2

    .line 73
    const/4 v0, 0x2

    .line 74
    if-ne v9, v0, :cond_3

    .line 76
    :cond_2
    const/4 v5, 0x2

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v0, p0

    .line 79
    move-object v1, v10

    .line 80
    move-wide/from16 v2, p2

    .line 82
    move v4, v11

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 86
    move-result v6

    .line 87
    const-string/jumbo v0, "setReleaseSMIMECertificateInternal() : release SMIME Encryption = "

    .line 90
    invoke-static {v0, v13, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    :cond_3
    if-eq v9, v14, :cond_4

    .line 95
    const/4 v0, 0x3

    .line 96
    if-ne v9, v0, :cond_5

    .line 98
    :cond_4
    const/4 v5, 0x3

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object v0, p0

    .line 101
    move-object v1, v10

    .line 102
    move-wide/from16 v2, p2

    .line 104
    move v4, v11

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 108
    move-result v6

    .line 109
    const-string/jumbo v0, "setReleaseSMIMECertificateInternal() : release SMIME Signing = "

    .line 112
    invoke-static {v0, v13, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    :cond_5
    return v6
.end method

.method public final setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setRequireEncryptedSMIMEMessages () : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    const-string/jumbo p0, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    .line 26
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const-string v7, "ReqEncryptSmime"

    .line 33
    move-object v2, p0

    .line 34
    move-wide v5, p2

    .line 35
    move v8, p4

    .line 36
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 42
    const-string/jumbo p1, "setRequireEncryptedSMIMEMessages() : failed."

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    return p0
.end method

.method public final setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setRequireSignedSMIMEMessages() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    const-string/jumbo p0, "setRequireSignedSMIMEMessages() : No exist accId : "

    .line 26
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    const-string v7, "ReqSigSmime"

    .line 33
    move-object v2, p0

    .line 34
    move-wide v5, p2

    .line 35
    move v8, p4

    .line 36
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 42
    const-string/jumbo p1, "setRequireSignedSMIMEMessages() : failed."

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    return p0
.end method

.method public final setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setSSL() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo p1, "setSenderName() :  deprecated , "

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "ExchangeAccountPolicy"

    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setSignature() : "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p2, :cond_0

    .line 16
    const-string/jumbo p0, "setSignature() : signature is null"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    const-string/jumbo p0, "setSignature_new() : No exist accId : "

    .line 34
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    return v0

    .line 38
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo p1, "setSilentVibrateOnEmailNotification() : deprecated. "

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "ExchangeAccountPolicy"

    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo p1, "setSyncInterval() : deprecated , "

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "ExchangeAccountPolicy"

    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "setSyncPeakTimings() : "

    .line 4
    const-string v1, "ExchangeAccountPolicy"

    .line 6
    invoke-static {v0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-ltz p2, :cond_6

    .line 16
    const/16 v2, 0x7f

    .line 18
    if-le p2, v2, :cond_0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-ltz p3, :cond_5

    .line 23
    const/16 v2, 0x5a0

    .line 25
    if-le p3, v2, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-ltz p4, :cond_4

    .line 30
    if-le p4, v2, :cond_2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p5, p6, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_3

    .line 41
    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    .line 44
    invoke-static {p0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 47
    return v0

    .line 48
    :cond_3
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 50
    iput p3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 52
    iput p4, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 59
    move-result p0

    .line 60
    const-string/jumbo p1, "setSyncPeakTimings() = "

    .line 63
    const-string v0, " , peakDays ="

    .line 65
    const-string v2, ", mPeakStartMinute = "

    .line 67
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p1

    .line 71
    const-string p2, ", peakEndMinute = "

    .line 73
    const-string v0, ", accid = "

    .line 75
    invoke-static {p3, p4, p2, v0, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 78
    invoke-static {p1, p5, p6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 81
    return p0

    .line 82
    :cond_4
    :goto_0
    const-string/jumbo p0, "setSyncPeakTimings() : peakEndMinute is invalid"

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0

    .line 89
    :cond_5
    :goto_1
    const-string/jumbo p0, "setSyncPeakTimings() : peakStartMinute is invalid"

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0

    .line 96
    :cond_6
    :goto_2
    const-string/jumbo p0, "setSyncPeakTimings() : peakDays is invalid"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v0
.end method

.method public final setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setSyncSchedules() :  "

    .line 8
    const-string v1, "ExchangeAccountPolicy"

    .line 10
    invoke-static {v0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p5, p6, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setSyncSchedules_new() : No exist accId : "

    .line 24
    invoke-static {p0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 31
    iput p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 33
    iput p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 40
    move-result p0

    .line 41
    const-string/jumbo p1, "setSyncSchedules() : = "

    .line 44
    const-string v0, " ,  peakSyncSchedule = "

    .line 46
    const-string v2, ", offPeakSyncSchedule = "

    .line 48
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p1

    .line 52
    const-string p2, ", roamingSyncSchedule = "

    .line 54
    const-string v0, ", accid = "

    .line 56
    invoke-static {p3, p4, p2, v0, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 59
    invoke-static {p1, p5, p6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 62
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
