.class public final Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public preCallingUid:I


# direct methods
.method public static getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v0, "pop3"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string/jumbo v0, "imap"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    const/4 p0, 0x0

    .line 30
    :cond_0
    const-string/jumbo v0, "getValidIncomingProtocol returned  protocol : "

    .line 33
    const-string v1, "EmailAccountPolicy"

    .line 35
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object p0
.end method

.method public static getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v0, "smtp"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 p0, 0x0

    .line 21
    :cond_0
    const-string/jumbo v0, "getValidOutgoingProtocol returned  protocol : "

    .line 24
    const-string v1, "EmailAccountPolicy"

    .line 26
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object p0
.end method


# virtual methods
.method public final addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    move-object/from16 v6, p6

    .line 15
    move-object/from16 v7, p7

    .line 17
    move-object/from16 v8, p8

    .line 19
    move-object/from16 v9, p9

    .line 21
    move/from16 v10, p10

    .line 23
    move-object/from16 v11, p11

    .line 25
    move-object/from16 v12, p12

    .line 27
    const-string v13, "EmailAccountPolicy"

    .line 29
    const-string v14, "addNewAccount() EX"

    .line 31
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v19, "Send from SamsungMobile"

    .line 36
    const/16 v20, 0x1

    .line 38
    const/4 v13, 0x1

    .line 39
    const/4 v14, 0x0

    .line 40
    const/4 v15, 0x0

    .line 41
    const/16 v16, 0x1

    .line 43
    const/16 v17, 0x0

    .line 45
    const/16 v18, 0x0

    .line 47
    invoke-virtual/range {v0 .. v20}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    .line 50
    move-result-wide v0

    .line 51
    return-wide v0
.end method

.method public final addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p10

    .line 1
    const-string v3, " addNewAccount_ex() : sent intent to Email app : "

    const-string v4, "addNewAccount() EX : "

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v12

    .line 2
    const-string v13, "EmailAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v12}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 4
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v3

    .line 12
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p1, v3

    .line 13
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v17, -0x1

    if-eqz v15, :cond_b

    .line 14
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    if-eqz v11, :cond_b

    if-eqz v10, :cond_b

    if-eqz v9, :cond_b

    if-eqz v8, :cond_b

    move-object/from16 p2, v8

    const/4 v8, 0x1

    if-gt v8, v1, :cond_b

    if-gt v8, v2, :cond_b

    if-eqz v7, :cond_b

    if-nez v6, :cond_0

    goto/16 :goto_8

    .line 15
    :cond_0
    const-string/jumbo v8, "com.samsung.android.email.provider"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 16
    const-string v0, "addNewAccount() EX : Error :: Email app is not installed on user "

    .line 17
    invoke-static {v5, v0, v13}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v17

    .line 18
    :cond_1
    iget-object v5, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v5

    move-object v5, v12

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    move-object/from16 v23, v7

    move-object v7, v15

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object v8, v11

    move-object/from16 p2, v9

    move-object/from16 v26, v10

    move/from16 v10, v20

    move-object v2, v11

    move-object/from16 v11, v21

    invoke-static/range {v5 .. v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 19
    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    .line 20
    :cond_2
    const-string/jumbo v5, "ssl"

    const-string/jumbo v6, "none"

    if-eqz p13, :cond_3

    if-nez p14, :cond_3

    if-nez p15, :cond_3

    move-object v9, v5

    goto :goto_0

    :cond_3
    move-object v9, v6

    .line 21
    :goto_0
    const-string/jumbo v10, "tls"

    if-nez p13, :cond_4

    if-eqz p14, :cond_4

    if-nez p15, :cond_4

    move-object v9, v10

    .line 22
    :cond_4
    const-string/jumbo v11, "ssl+trustallcerts"

    if-eqz p13, :cond_5

    if-nez p14, :cond_5

    if-eqz p15, :cond_5

    move-object v9, v11

    .line 23
    :cond_5
    const-string/jumbo v17, "tls+trustallcerts"

    if-nez p13, :cond_6

    if-eqz p14, :cond_6

    if-eqz p15, :cond_6

    move-object/from16 v9, v17

    :cond_6
    if-eqz p16, :cond_7

    if-nez p17, :cond_7

    if-nez p18, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v6

    :goto_1
    if-nez p16, :cond_8

    if-eqz p17, :cond_8

    if-nez p18, :cond_8

    goto :goto_2

    :cond_8
    move-object v10, v5

    :goto_2
    if-eqz p16, :cond_9

    if-nez p17, :cond_9

    if-eqz p18, :cond_9

    goto :goto_3

    :cond_9
    move-object v11, v10

    :goto_3
    if-nez p16, :cond_a

    if-eqz p17, :cond_a

    if-eqz p18, :cond_a

    move-object/from16 v11, v17

    .line 24
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 25
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p1

    .line 27
    invoke-virtual {v0, v12, v10}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 p6, v5

    .line 28
    :try_start_1
    invoke-virtual {v0, v12, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    .line 29
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v5, p2

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    move-object/from16 v5, v24

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    move-object/from16 v2, v26

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    move/from16 v2, p10

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"

    move-object/from16 v2, v22

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"

    move-object/from16 v2, v23

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v2, p19

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    move/from16 v2, p20

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v1, v25

    .line 45
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v0, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 47
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_4
    invoke-static/range {p6 .. p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide/from16 p6, v5

    goto :goto_7

    :catch_1
    move-exception v0

    move-wide/from16 p6, v5

    .line 49
    :goto_5
    :try_start_2
    const-string v1, "addNewAccount_ex() : "

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 50
    :goto_6
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    .line 52
    :goto_7
    invoke-static/range {p6 .. p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw v0

    .line 54
    :cond_b
    :goto_8
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17
.end method

.method public final addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    const-string v2, " addNewAccount() NEW : sent intent to Email app : "

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    move-result-object v10

    .line 11
    const-string v11, "EmailAccountPolicy"

    .line 13
    const-string v3, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    .line 15
    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 21
    move-result v12

    .line 22
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 24
    const-wide/16 v13, -0x1

    .line 26
    if-nez v1, :cond_0

    .line 28
    const-string v0, "addNewAccount() NEW : Error :: Invalid Account."

    .line 30
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-wide v13

    .line 34
    :cond_0
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 36
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v15

    .line 40
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    .line 42
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v9

    .line 46
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    .line 48
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    .line 54
    invoke-static {v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    .line 60
    invoke-static {v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    .line 66
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    .line 72
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    iget-object v13, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    .line 78
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v13

    .line 82
    iget-object v14, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    .line 84
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v14

    .line 88
    move-object/from16 v16, v2

    .line 90
    iget v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    .line 92
    move/from16 p1, v12

    .line 94
    iget v12, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    .line 96
    if-eqz v15, :cond_c

    .line 98
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    .line 101
    move-result v17

    .line 102
    if-eqz v17, :cond_c

    .line 104
    if-eqz v9, :cond_c

    .line 106
    if-eqz v8, :cond_c

    .line 108
    if-eqz v7, :cond_c

    .line 110
    if-eqz v6, :cond_c

    .line 112
    move-object/from16 v17, v6

    .line 114
    const/4 v6, 0x1

    .line 115
    if-gt v6, v2, :cond_c

    .line 117
    if-gt v6, v12, :cond_c

    .line 119
    if-eqz v4, :cond_c

    .line 121
    if-nez v5, :cond_1

    .line 123
    goto/16 :goto_a

    .line 125
    :cond_1
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 128
    invoke-static {v3, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    .line 131
    move-result v18

    .line 132
    if-nez v18, :cond_2

    .line 134
    const-string v0, "addNewAccount() EX : Error :: Email app is not installed on user "

    .line 136
    invoke-static {v3, v0, v11}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    const-wide/16 v0, -0x1

    .line 141
    return-wide v0

    .line 142
    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 144
    const/16 v18, 0x0

    .line 146
    const/16 v19, 0x0

    .line 148
    move-object/from16 v20, v3

    .line 150
    move-object v3, v10

    .line 151
    move-object/from16 v21, v4

    .line 153
    move-object/from16 v4, v18

    .line 155
    move-object/from16 v22, v5

    .line 157
    move-object v5, v15

    .line 158
    move-object/from16 v24, v6

    .line 160
    move-object/from16 v23, v17

    .line 162
    move-object v6, v9

    .line 163
    move-object/from16 v17, v7

    .line 165
    move-object/from16 v25, v8

    .line 167
    move/from16 v8, v19

    .line 169
    move/from16 v18, v12

    .line 171
    move-object v12, v9

    .line 172
    move-object/from16 v9, v20

    .line 174
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    .line 177
    move-result-wide v3

    .line 178
    const-wide/16 v5, 0x0

    .line 180
    cmp-long v3, v3, v5

    .line 182
    if-lez v3, :cond_3

    .line 184
    const-string v0, "addNewAccount() NEW : Error :: Account already exists."

    .line 186
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    goto :goto_0

    .line 190
    :cond_3
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    .line 192
    const-string/jumbo v4, "ssl"

    .line 195
    const-string/jumbo v7, "none"

    .line 198
    if-eqz v3, :cond_4

    .line 200
    iget-boolean v8, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    .line 202
    if-nez v8, :cond_4

    .line 204
    iget-boolean v8, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    .line 206
    if-nez v8, :cond_4

    .line 208
    move-object v8, v4

    .line 209
    goto :goto_1

    .line 210
    :cond_4
    move-object v8, v7

    .line 211
    :goto_1
    const-string/jumbo v9, "tls"

    .line 214
    if-nez v3, :cond_5

    .line 216
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    .line 218
    if-eqz v5, :cond_5

    .line 220
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    .line 222
    if-nez v5, :cond_5

    .line 224
    move-object v8, v9

    .line 225
    :cond_5
    const-string/jumbo v5, "ssl+trustallcerts"

    .line 228
    if-eqz v3, :cond_6

    .line 230
    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    .line 232
    if-nez v6, :cond_6

    .line 234
    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    .line 236
    if-eqz v6, :cond_6

    .line 238
    move-object v8, v5

    .line 239
    :cond_6
    const-string/jumbo v6, "tls+trustallcerts"

    .line 242
    if-nez v3, :cond_7

    .line 244
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    .line 246
    if-eqz v3, :cond_7

    .line 248
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    .line 250
    if-eqz v3, :cond_7

    .line 252
    move-object v8, v6

    .line 253
    :cond_7
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    .line 255
    if-eqz v3, :cond_8

    .line 257
    move-object/from16 v19, v4

    .line 259
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    .line 261
    if-nez v4, :cond_8

    .line 263
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    .line 265
    if-nez v4, :cond_8

    .line 267
    move-object/from16 v4, v19

    .line 269
    goto :goto_2

    .line 270
    :cond_8
    move-object v4, v7

    .line 271
    :goto_2
    if-nez v3, :cond_9

    .line 273
    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    .line 275
    if-eqz v7, :cond_9

    .line 277
    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    .line 279
    if-nez v7, :cond_9

    .line 281
    goto :goto_3

    .line 282
    :cond_9
    move-object v9, v4

    .line 283
    :goto_3
    if-eqz v3, :cond_a

    .line 285
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    .line 287
    if-nez v4, :cond_a

    .line 289
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    .line 291
    if-eqz v4, :cond_a

    .line 293
    goto :goto_4

    .line 294
    :cond_a
    move-object v5, v9

    .line 295
    :goto_4
    if-nez v3, :cond_b

    .line 297
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    .line 299
    if-eqz v3, :cond_b

    .line 301
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    .line 303
    if-eqz v3, :cond_b

    .line 305
    goto :goto_5

    .line 306
    :cond_b
    move-object v6, v5

    .line 307
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 310
    move-result-wide v3

    .line 311
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 313
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    .line 316
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    move-wide/from16 v19, v3

    .line 321
    :try_start_1
    invoke-virtual {v0, v10, v14}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 324
    move-result-wide v3

    .line 325
    invoke-virtual {v0, v10, v13}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 328
    move-result-wide v9

    .line 329
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 332
    invoke-virtual {v5, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 338
    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 344
    invoke-virtual {v5, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    .line 350
    invoke-virtual {v5, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 356
    move-object/from16 v4, v17

    .line 358
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    .line 364
    move-object/from16 v4, v23

    .line 366
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 372
    invoke-virtual {v5, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    .line 378
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    .line 384
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    .line 390
    move-object/from16 v3, v25

    .line 392
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    .line 398
    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    .line 404
    move/from16 v3, v18

    .line 406
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"

    .line 412
    move-object/from16 v3, v22

    .line 414
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"

    .line 420
    move-object/from16 v3, v21

    .line 422
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    .line 428
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    .line 430
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    .line 436
    iget-boolean v1, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    .line 438
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    move-object/from16 v1, v24

    .line 443
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v0, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 448
    new-instance v1, Landroid/os/UserHandle;

    .line 450
    move/from16 v2, p1

    .line 452
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 455
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 458
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, v16

    .line 463
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    move-result-object v0

    .line 467
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :goto_6
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    goto :goto_8

    .line 474
    :catchall_0
    move-exception v0

    .line 475
    goto :goto_9

    .line 476
    :catch_0
    move-exception v0

    .line 477
    goto :goto_7

    .line 478
    :catchall_1
    move-exception v0

    .line 479
    move-wide/from16 v19, v3

    .line 481
    goto :goto_9

    .line 482
    :catch_1
    move-exception v0

    .line 483
    move-wide/from16 v19, v3

    .line 485
    :goto_7
    :try_start_2
    const-string v1, "addNewAccount() NEW :  failed. "

    .line 487
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    goto :goto_6

    .line 491
    :goto_8
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    .line 493
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    .line 498
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    move-result-object v0

    .line 502
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-wide/16 v1, 0x0

    .line 507
    return-wide v1

    .line 508
    :goto_9
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v0

    .line 512
    :cond_c
    :goto_a
    const-string v0, "addNewAccount() NEW : Error :: Invalid input parameters."

    .line 514
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    goto/16 :goto_0
.end method

.method public final deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p2, p3, v1, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 14
    move-result-object p1

    .line 15
    const-string v1, "EmailAccountPolicy"

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 20
    const-string/jumbo p0, "deleteAccount_new() : No exist accId : "

    .line 23
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    return v2

    .line 27
    :cond_0
    iget-object p1, p1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    .line 29
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 31
    const-string/jumbo v3, "device_account_policy"

    .line 34
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 40
    if-eqz v3, :cond_1

    .line 42
    const-string/jumbo v4, "com.samsung.android.email"

    .line 45
    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 51
    const-string/jumbo p0, "deleteAccount_new() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    .line 54
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    return v2

    .line 58
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    move-result-wide v3

    .line 62
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 64
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    .line 67
    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 73
    invoke-virtual {p1, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string/jumbo p2, "com.samsung.android.email.provider"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 84
    new-instance p2, Landroid/os/UserHandle;

    .line 86
    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 89
    const-string/jumbo p3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    const/4 v2, 0x1

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p0

    .line 103
    :try_start_1
    const-string/jumbo p1, "deleteAccount_new() : failed. "

    .line 106
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    :goto_0
    return v2

    .line 113
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method

.method public final enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 12
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    move-result-object p1

    .line 27
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    iget v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 31
    if-eq v1, v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 41
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v3, "setPackageNameForUid :   "

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 53
    const-string v4, "SettingsUtils"

    .line 55
    invoke-static {v2, v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "Calling UID changed :    "

    .line 64
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "  callingUid   "

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const-string v0, "EmailAccountPolicy"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-object p1
.end method

.method public final getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "getAccountDetails() : "

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const/4 v5, 0x0

    .line 5
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public final getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "getAllEmailAccounts()"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 20
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_1

    .line 34
    array-length v5, v3

    .line 35
    move v6, v4

    .line 36
    :goto_0
    if-ge v6, v5, :cond_1

    .line 38
    aget-wide v7, v3, v6

    .line 40
    invoke-static {v7, v8, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_0

    .line 46
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result p0

    .line 56
    const/4 p1, 0x0

    .line 57
    if-lez p0, :cond_2

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p0

    .line 63
    new-array p0, p0, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v2

    .line 69
    move v3, v4

    .line 70
    :goto_1
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
    check-cast v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 82
    add-int/lit8 v6, v3, 0x1

    .line 84
    aput-object v5, p0, v3

    .line 86
    move v3, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object p0, p1

    .line 89
    :cond_3
    if-eqz p0, :cond_5

    .line 91
    array-length v1, p0

    .line 92
    :goto_2
    if-ge v4, v1, :cond_6

    .line 94
    aget-object v2, p0, v4

    .line 96
    if-eqz v2, :cond_4

    .line 98
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    const-string/jumbo p0, "getAllEmailAccounts_new( ): ids is empty "

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result p0

    .line 118
    if-lez p0, :cond_7

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result p0

    .line 124
    new-array p0, p0, [Lcom/samsung/android/knox/accounts/Account;

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    move-result-object p0

    .line 130
    move-object p1, p0

    .line 131
    check-cast p1, [Lcom/samsung/android/knox/accounts/Account;

    .line 133
    :cond_7
    return-object p1
.end method

.method public final getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "EmailAccountPolicy"

    .line 3
    const-string v1, "I#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 12
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 18
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string/jumbo p1, "getSecurityInComingServerPassword() success"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string/jumbo p1, "getSecurityInComingServerPassword() failed "

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 p0, 0x0

    .line 49
    :goto_0
    return-object p0
.end method

.method public final getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "EmailAccountPolicy"

    .line 3
    const-string v1, "O#"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 12
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 18
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string/jumbo p1, "getSecurityOutGoingServerPassword() success"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string/jumbo p1, "getSecurityOutGoingServerPassword() failed"

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 p0, 0x0

    .line 49
    :goto_0
    return-object p0
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

.method public final removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v0

    .line 13
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 15
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 24
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 30
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 36
    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    sget-object p2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 41
    const-string/jumbo p2, "com.samsung.android.email.provider"

    .line 44
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 49
    new-instance p2, Landroid/os/UserHandle;

    .line 51
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 54
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 57
    invoke-virtual {p0, v2, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    :try_start_1
    const-string p1, "EmailAccountPolicy"

    .line 69
    const-string/jumbo p2, "removePendingAccount() : failed. "

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    return-void

    .line 77
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;I)V

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return-void
.end method

.method public final setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "EmailAccountPolicy"

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string/jumbo p0, "setAccountName_new() : No exist accId : "

    .line 23
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    return v2

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 29
    const-string/jumbo p0, "setAccountName_new() : accountName is null"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v2

    .line 36
    :cond_1
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 43
    move-result p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v0, "setAccountName ("

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p2, ", "

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, " )"

    .line 65
    invoke-static {p1, p2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return p0
.end method

.method public final setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setAlwaysVibrateOnEmailNotification("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EmailAccountPolicy"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 39
    const-string/jumbo p0, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    .line 42
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    return v2

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 48
    const/4 p2, 0x1

    .line 49
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 51
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 56
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public final setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setAsDefaultAccount :  userID ="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ",   accId ="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "EmailAccountPolicy"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p2, p3, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    const-string/jumbo p0, "setAsDefaultAccount_new() : No exist accId : "

    .line 46
    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_0
    const/4 p2, 0x1

    .line 52
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public final setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-string p0, "EmailAccountPolicy"

    .line 6
    const-string/jumbo p1, "setEmailAddress() : deprecated."

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-wide/16 p0, -0x1

    .line 14
    return-wide p0
.end method

.method public final setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "EmailAccountPolicy"

    .line 7
    const-string/jumbo v1, "setInComingProtocol()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 20
    const-string/jumbo p0, "setInComingProtocol() : Error :: Invalid input parameter."

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 35
    const-string/jumbo p0, "setInComingProtocol_new() : No exist accId : "

    .line 38
    invoke-static {p0, p3, p4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    return v1

    .line 42
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v3, "setInComingProtocol returned  protocol : "

    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p2, ", "

    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public final setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerAcceptAllCertificates()"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setInComingServerAcceptAllCertificates_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 31
    const-string/jumbo p3, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    .line 34
    invoke-static {p3, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerAddress()"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const-wide/16 v2, -0x1

    .line 19
    if-nez p2, :cond_0

    .line 21
    const-string/jumbo p0, "setInComingServerAddress() : Error :: Invalid input parameter."

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-wide v2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 36
    const-string/jumbo p0, "setInComingServerAddress_new() : No exist accId : "

    .line 39
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    return-wide v2

    .line 43
    :cond_1
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 45
    const-string/jumbo p3, "setInComingServerAddress returned  serverAddress : "

    .line 48
    invoke-static {p3, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 59
    iget-wide v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 61
    :cond_2
    return-wide v2
.end method

.method public final setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerLogin() : deprecated. "

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const-wide/16 v2, -0x1

    .line 19
    if-nez p2, :cond_0

    .line 21
    const-string/jumbo p0, "setInComingServerLogin() : Error :: Invalid input parameter."

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-wide v2

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_1

    .line 36
    const-string/jumbo p0, "setInComingServerLogin() : No exist accId : "

    .line 39
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    return-wide v2

    .line 43
    :cond_1
    const-string/jumbo p1, "setInComingServerLogin deprecated "

    .line 46
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 51
    return-wide v2
.end method

.method public final setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "EmailAccountPolicy"

    .line 12
    if-nez p2, :cond_0

    .line 14
    const-string/jumbo p0, "setInComingServerPassword : Error :: Invalid input parameter."

    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    const-string/jumbo p0, "setInComingServerPassword_new() : No exist accId : "

    .line 32
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    return v0

    .line 36
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerPathPrefix() : deprecated"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 25
    const-string/jumbo p0, "setInComingServerPathPrefix() : No exist accId : "

    .line 28
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    :cond_0
    return p1
.end method

.method public final setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerPort()"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const/4 v0, 0x0

    .line 14
    if-gez p2, :cond_0

    .line 16
    const-string/jumbo p0, "setInComingServerPort() : Error :: Invalid input parameter."

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    const-string/jumbo p0, "setInComingServerPort_new() : No exist accId : "

    .line 34
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    return v0

    .line 38
    :cond_1
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 40
    const-string/jumbo p3, "setInComingServerPort returned  port : "

    .line 43
    invoke-static {p2, p3, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 51
    move-result p0

    .line 52
    return p0
.end method

.method public final setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setInComingServerSSL()"

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setInComingServerSSL_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 31
    const-string/jumbo p3, "setInComingServerSSL returned  enableSSL : "

    .line 34
    invoke-static {p3, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "EmailAccountPolicy"

    .line 7
    const-string/jumbo v1, "setOutGoingProtocol : deprecated."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 20
    const-string/jumbo p0, "setOutGoingProtocol : Error :: Invalid input parameter."

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v1

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 35
    const-string/jumbo p0, "setOutGoingProtocol() : No exist accId : "

    .line 38
    invoke-static {p0, p3, p4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    :cond_1
    return v1
.end method

.method public final setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setOutGoingServerAcceptAllCertificates() : "

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setOutGoingServerAcceptAllCertificates_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 31
    const-string/jumbo p3, "setOutGoingServerAcceptAllCertificates returned  port : "

    .line 34
    invoke-static {p3, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const-wide/16 v0, -0x1

    .line 11
    const-string v2, "EmailAccountPolicy"

    .line 13
    if-nez p2, :cond_0

    .line 15
    const-string/jumbo p0, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-wide v0

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p3, p4, v3, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 30
    const-string/jumbo p0, "setOutGoingServerAddress_new() : No exist accId : "

    .line 33
    invoke-static {p0, p3, p4, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 36
    return-wide v0

    .line 37
    :cond_1
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 39
    const-string/jumbo p3, "setOutGoingServerAddress() returned  serverAddress : "

    .line 42
    invoke-static {p3, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 53
    iget-wide v0, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 55
    :cond_2
    return-wide v0
.end method

.method public final setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const-string v0, "EmailAccountPolicy"

    .line 11
    const-wide/16 v1, -0x1

    .line 13
    if-nez p2, :cond_0

    .line 15
    const-string/jumbo p0, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-wide v1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 30
    const-string/jumbo p0, "setOutGoingServerLogin() : No exist accId : "

    .line 33
    invoke-static {p0, p3, p4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 36
    :cond_1
    return-wide v1
.end method

.method public final setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "EmailAccountPolicy"

    .line 12
    if-nez p2, :cond_0

    .line 14
    const-string/jumbo p0, "setOutGoingServerPassword : Error :: Invalid input parameter."

    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    const-string/jumbo p0, "setOutGoingServerPassword_new() : No exist accId : "

    .line 32
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    return v0

    .line 36
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setOutGoingServerPathPrefix() : deprecated. "

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 25
    const-string/jumbo p0, "setOutGoingServerPathPrefix() : No exist accId : "

    .line 28
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    :cond_0
    return p1
.end method

.method public final setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "EmailAccountPolicy"

    .line 8
    if-gez p2, :cond_0

    .line 10
    const-string/jumbo p0, "setOutGoingServerPort : Error :: Invalid input parameter."

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    const-string/jumbo p0, "setOutGoingServerPort_new() : No exist accId : "

    .line 28
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    return v0

    .line 32
    :cond_1
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 34
    const-string/jumbo p3, "setOutGoingServerPort returned  port : "

    .line 37
    invoke-static {p2, p3, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "setOutGoingServerSSL() : "

    .line 8
    const-string v1, "EmailAccountPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo p0, "setOutGoingServerSSL_new() : No exist accId : "

    .line 24
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 31
    const-string/jumbo p3, "setOutGoingServerSSL returned  port : "

    .line 34
    invoke-static {p3, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "I#"

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 16
    move-result-wide p0

    .line 17
    const-string v1, "EmailAccountPolicy"

    .line 19
    if-nez p2, :cond_0

    .line 21
    const-string/jumbo p0, "setSecurityInComingServerPassword() : password is null"

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-wide/16 p0, -0x1

    .line 29
    return-wide p0

    .line 30
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo p2, "setSecurityInComingServerPassword() success"

    .line 48
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    return-wide p0

    .line 52
    :catch_0
    move-exception p2

    .line 53
    :try_start_1
    const-string/jumbo v0, "setSecurityInComingServerPassword() failed"

    .line 56
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    return-wide p0
.end method

.method public final setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "O#"

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM$10()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    .line 16
    move-result-wide p0

    .line 17
    const-string v1, "EmailAccountPolicy"

    .line 19
    if-nez p2, :cond_0

    .line 21
    const-string/jumbo p0, "setSecurityOutGoingServerPassword() : password is null"

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-wide/16 p0, -0x1

    .line 29
    return-wide p0

    .line 30
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo p2, "setSecurityOutGoingServerPassword() success"

    .line 48
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    return-wide p0

    .line 52
    :catch_0
    move-exception p2

    .line 53
    :try_start_1
    const-string/jumbo v0, "setSecurityOutGoingServerPassword() failed"

    .line 56
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    return-wide p0
.end method

.method public final setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "EmailAccountPolicy"

    .line 12
    if-nez p2, :cond_0

    .line 14
    const-string/jumbo p0, "setSenderName() : senderName is null"

    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    const-string/jumbo p0, "setEmailAddress_new() : No exist accId : "

    .line 32
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    return v0

    .line 36
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "EmailAccountPolicy"

    .line 8
    if-nez p2, :cond_0

    .line 10
    const-string/jumbo p0, "setSignature() : signature is null"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    const-string/jumbo p0, "setSignature_new() : No exist accId : "

    .line 28
    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    return v0

    .line 32
    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-string p0, "EmailAccountPolicy"

    .line 6
    const-string/jumbo p1, "setSilentVibrateOnEmailNotification() : deprecated."

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p3, p4, p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    const-string p2, "EmailAccountPolicy"

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string/jumbo p0, "setSyncInterval() : No exist accId : "

    .line 19
    invoke-static {p0, p3, p4, p2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    return p1

    .line 23
    :cond_0
    const-string/jumbo p0, "setSyncInterval() : deprecated."

    .line 26
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
