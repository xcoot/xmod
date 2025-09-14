.class public abstract Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mAccountObjectMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public static createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v1

    .line 11
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    .line 20
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 25
    if-eqz v4, :cond_1

    .line 27
    :try_start_1
    new-instance v1, Landroid/os/UserHandle;

    .line 29
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 32
    invoke-virtual {p0, v6, v5, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Landroid/os/UserHandle;

    .line 43
    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 46
    invoke-virtual {p0, v6, v5, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object v4

    .line 54
    const/4 v9, 0x0

    .line 55
    move-object v5, p2

    .line 56
    move-object v6, p3

    .line 57
    move-object v7, p4

    .line 58
    move-object v8, p5

    .line 59
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    return-object p0

    .line 67
    :goto_1
    :try_start_2
    const-string p1, "EmailProviderHelperService"

    .line 69
    const-string/jumbo p2, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return-object v0

    .line 79
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0
.end method

.method public static deleteLDAPAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11

    .line 1
    const-string v0, "EmailProviderHelperService"

    .line 3
    const-string/jumbo v1, "deleteLDAPAccount() : ret = "

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string/jumbo v4, "content://com.samsung.android.email.ldap.provider"

    .line 11
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v7

    .line 15
    const-string/jumbo v9, "deleteLDAPAccount"

    .line 18
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    filled-new-array {p0}, [Ljava/lang/String;

    .line 25
    move-result-object v10

    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v5, p2

    .line 28
    move-object v6, p3

    .line 29
    invoke-static/range {v5 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 41
    const-string/jumbo p0, "deleteLDAPAccount"

    .line 44
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    move-result p0

    .line 48
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    move-result p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move v2, p0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    const-string/jumbo p0, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    .line 80
    invoke-static {v0, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_1

    .line 91
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 94
    goto :goto_3

    .line 95
    :goto_2
    :try_start_1
    const-string/jumbo p1, "deleteLDAPAccount() : Failed, Exception occurs. "

    .line 98
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_3
    return v2

    .line 111
    :goto_4
    if-eqz v3, :cond_2

    .line 113
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_2

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    throw p0
.end method

.method public static getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J
    .locals 9

    .line 1
    const-string v0, "_id"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 6
    const-string/jumbo v2, "content://com.samsung.android.email.provider/account"

    .line 9
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    move-result-object v6

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v3, p0

    .line 20
    move-object v4, p1

    .line 21
    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    if-eqz p0, :cond_1

    .line 27
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_1

    .line 33
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 36
    move-result p1

    .line 37
    new-array p1, p1, [J

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 46
    add-int/lit8 v3, v2, 0x1

    .line 48
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    move-result v4

    .line 52
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 55
    move-result v4

    .line 56
    int-to-long v4, v4

    .line 57
    aput-wide v4, p1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    move v2, v3

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    move-object v1, p0

    .line 63
    goto :goto_7

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_5

    .line 66
    :cond_0
    move-object v1, p1

    .line 67
    :cond_1
    if-eqz p0, :cond_2

    .line 69
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 75
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 78
    goto :goto_6

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    goto :goto_7

    .line 81
    :catch_1
    move-exception p1

    .line 82
    :goto_2
    move-object p0, v1

    .line 83
    goto :goto_5

    .line 84
    :goto_3
    move-object p1, p0

    .line 85
    goto :goto_7

    .line 86
    :goto_4
    move-object p1, p0

    .line 87
    goto :goto_2

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :catch_2
    move-exception p0

    .line 91
    goto :goto_4

    .line 92
    :goto_5
    :try_start_3
    const-string v0, "EmailProviderHelperService"

    .line 94
    const-string/jumbo v2, "getAllAccountIDS() : Failed, Exception occurs. "

    .line 97
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz p0, :cond_2

    .line 102
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    :goto_6
    return-object v1

    .line 110
    :goto_7
    if-eqz v1, :cond_3

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_3

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_3
    throw p1
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "EmailProviderHelperService"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string/jumbo v2, "content://com.samsung.android.email.ldap.provider"

    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    const-string/jumbo v7, "getAllLDAPAccounts"

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v3, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    if-eqz p0, :cond_2

    .line 24
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    const-string/jumbo v2, "email.ldap.all.account"

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :cond_0
    move-object v1, p1

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    move-object v1, p0

    .line 48
    goto :goto_7

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_5

    .line 51
    :cond_1
    const-string/jumbo p1, "getAllLDAPAccount() : Fail to get Data from Email. "

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string/jumbo p1, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_0
    if-eqz p0, :cond_3

    .line 66
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 72
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 75
    goto :goto_6

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto :goto_7

    .line 78
    :catch_1
    move-exception p1

    .line 79
    :goto_2
    move-object p0, v1

    .line 80
    goto :goto_5

    .line 81
    :goto_3
    move-object p1, p0

    .line 82
    goto :goto_7

    .line 83
    :goto_4
    move-object p1, p0

    .line 84
    goto :goto_2

    .line 85
    :catchall_2
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :catch_2
    move-exception p0

    .line 88
    goto :goto_4

    .line 89
    :goto_5
    :try_start_3
    const-string/jumbo v2, "getAllLDAPAccount() : Failed, Exception occurs. "

    .line 92
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz p0, :cond_3

    .line 97
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_6
    return-object v1

    .line 105
    :goto_7
    if-eqz v1, :cond_4

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_4

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_4
    throw p1
.end method

.method public static getEmailAccountObject(J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 3
    const-string v1, "A"

    .line 5
    invoke-static {p0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    instance-of v3, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 19
    if-eqz v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    check-cast v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 38
    return-object v2

    .line 39
    :cond_0
    const-string p0, "EmailProviderHelperService"

    .line 41
    const-string/jumbo p1, "getEmailAccountObject() : failed. "

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static getEnterpriseEmailAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    const-string v1, "EmailProviderHelperService"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo p3, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    .line 15
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v2

    .line 29
    :cond_0
    :try_start_0
    const-string/jumbo v0, "content://com.samsung.android.email.mdm.provider"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    const-string/jumbo v7, "getAccountInfo"

    .line 39
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    move-result-object v8

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v3, p2

    .line 49
    move-object v4, p3

    .line 50
    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 53
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    if-eqz p2, :cond_2

    .line 56
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 59
    move-result-object p3

    .line 60
    if-eqz p3, :cond_1

    .line 62
    const-string/jumbo v0, "email.account"

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 68
    move-result-object p3

    .line 69
    if-eqz p3, :cond_3

    .line 71
    instance-of v0, p3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    check-cast p3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 77
    move-object v2, p3

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    move-object v2, p2

    .line 81
    goto :goto_7

    .line 82
    :catch_0
    move-exception p3

    .line 83
    goto :goto_4

    .line 84
    :cond_1
    const-string/jumbo p3, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    .line 87
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo p3, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    .line 94
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 99
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 102
    move-result p3

    .line 103
    if-nez p3, :cond_4

    .line 105
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 108
    goto :goto_5

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_7

    .line 111
    :catch_1
    move-exception p3

    .line 112
    :goto_2
    move-object p2, v2

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    move-object p3, p2

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception p2

    .line 117
    goto :goto_3

    .line 118
    :goto_4
    :try_start_3
    const-string/jumbo v0, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    .line 121
    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz p2, :cond_4

    .line 126
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_4

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    :goto_5
    if-nez v2, :cond_5

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo p3, "getEnterpriseEmailAccount() : Failed, accId = "

    .line 140
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo p3, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    .line 159
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_6
    return-object v2

    .line 173
    :goto_7
    if-eqz v2, :cond_6

    .line 175
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_6

    .line 181
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_6
    throw p0
.end method

.method public static getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    const-string v1, "EmailProviderHelperService"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo p3, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    .line 15
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v2

    .line 29
    :cond_0
    :try_start_0
    const-string/jumbo v0, "content://com.samsung.android.email.mdm.provider"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    const-string/jumbo v7, "getAccountInfo"

    .line 39
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    move-result-object v8

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v3, p2

    .line 49
    move-object v4, p3

    .line 50
    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 53
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    if-eqz p2, :cond_2

    .line 56
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 59
    move-result-object p3

    .line 60
    if-eqz p3, :cond_1

    .line 62
    const-string/jumbo v0, "eas.account"

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 68
    move-result-object p3

    .line 69
    if-eqz p3, :cond_3

    .line 71
    instance-of v0, p3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    check-cast p3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 77
    move-object v2, p3

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    move-object v2, p2

    .line 81
    goto :goto_7

    .line 82
    :catch_0
    move-exception p3

    .line 83
    goto :goto_4

    .line 84
    :cond_1
    const-string/jumbo p3, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    .line 87
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo p3, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    .line 94
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 99
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 102
    move-result p3

    .line 103
    if-nez p3, :cond_4

    .line 105
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 108
    goto :goto_5

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_7

    .line 111
    :catch_1
    move-exception p3

    .line 112
    :goto_2
    move-object p2, v2

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    move-object p3, p2

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception p2

    .line 117
    goto :goto_3

    .line 118
    :goto_4
    :try_start_3
    const-string/jumbo v0, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 121
    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz p2, :cond_4

    .line 126
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_4

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    :goto_5
    if-nez v2, :cond_5

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo p3, "getEnterpriseExchangeAccount() : Failed, accId = "

    .line 140
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo p3, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    .line 159
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_6
    return-object v2

    .line 173
    :goto_7
    if-eqz v2, :cond_6

    .line 175
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_6

    .line 181
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_6
    throw p0
.end method

.method public static getEnterpriseLDAPAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .locals 9

    .line 1
    const-string v0, "EmailProviderHelperService"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string/jumbo v2, "content://com.samsung.android.email.ldap.provider"

    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    const-string/jumbo v7, "getLDAPAccount"

    .line 14
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/String;

    .line 21
    move-result-object v8

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    if-eqz p0, :cond_1

    .line 31
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 37
    const-string/jumbo p2, "email.ldap.account"

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 46
    instance-of p2, p1, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 48
    if-eqz p2, :cond_2

    .line 50
    check-cast p1, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 52
    const-string/jumbo p2, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    .line 55
    invoke-static {v0, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-object v1, p1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    move-object v1, p0

    .line 62
    goto :goto_7

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_5

    .line 65
    :cond_0
    const-string/jumbo p1, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo p1, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 80
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 86
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    goto :goto_6

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_7

    .line 92
    :catch_1
    move-exception p1

    .line 93
    :goto_2
    move-object p0, v1

    .line 94
    goto :goto_5

    .line 95
    :goto_3
    move-object p1, p0

    .line 96
    goto :goto_7

    .line 97
    :goto_4
    move-object p1, p0

    .line 98
    goto :goto_2

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :catch_2
    move-exception p0

    .line 102
    goto :goto_4

    .line 103
    :goto_5
    :try_start_3
    const-string/jumbo p2, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 106
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz p0, :cond_3

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    :goto_6
    return-object v1

    .line 119
    :goto_7
    if-eqz v1, :cond_4

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_4

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    throw p1
.end method

.method public static getExchangeAccountObject(J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 3
    const-string v1, "A"

    .line 5
    invoke-static {p0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    instance-of v3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 19
    if-eqz v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    check-cast v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 38
    return-object v2

    .line 39
    :cond_0
    const-string p0, "EmailProviderHelperService"

    .line 41
    const-string/jumbo p1, "getExchangeAccountObject() : failed. "

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .locals 12

    .line 1
    const-string v0, "EmailProviderHelperService"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v3, v1, v3

    .line 11
    if-gez v3, :cond_0

    .line 13
    const-wide/16 v3, -0x1

    .line 15
    mul-long/2addr v1, v3

    .line 16
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 18
    const-string v4, "A"

    .line 20
    invoke-static {v1, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    check-cast v3, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_0
    const-string/jumbo v5, "content://com.samsung.android.email.mdm.provider"

    .line 34
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v10, "updateEmailAccount"

    .line 41
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    iget-object p2, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 47
    filled-new-array {v1, p2}, [Ljava/lang/String;

    .line 50
    move-result-object v11

    .line 51
    const/4 v9, 0x0

    .line 52
    move-object v6, p0

    .line 53
    move-object v7, p1

    .line 54
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    .line 60
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 66
    const-string/jumbo p0, "updateEmailAccount"

    .line 69
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    move-result p0

    .line 73
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 80
    move-result v3

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_4

    .line 84
    :catch_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-string/jumbo p0, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    if-eqz v4, :cond_2

    .line 94
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_2

    .line 100
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 103
    goto :goto_3

    .line 104
    :goto_2
    :try_start_1
    const-string/jumbo p1, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    .line 107
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    if-eqz v4, :cond_2

    .line 112
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_2

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :goto_3
    const-string/jumbo p0, "updateEnterpriseEmailAccount() : ret = "

    .line 122
    invoke-static {p0, v0, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    return v3

    .line 126
    :goto_4
    if-eqz v4, :cond_3

    .line 128
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_3

    .line 134
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_3
    throw p0
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .locals 11

    .line 1
    const-string v0, "EmailProviderHelperService"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v3, v1, v3

    .line 11
    if-gez v3, :cond_0

    .line 13
    const-wide/16 v3, -0x1

    .line 15
    mul-long/2addr v1, v3

    .line 16
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    .line 18
    const-string v4, "A"

    .line 20
    invoke-static {v1, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    check-cast v3, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 p2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :try_start_0
    const-string/jumbo v4, "content://com.samsung.android.email.mdm.provider"

    .line 34
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v7

    .line 38
    const-string/jumbo v9, "updateEmailAccount"

    .line 41
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const-string/jumbo v2, "eas"

    .line 48
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 51
    move-result-object v10

    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v5, p0

    .line 54
    move-object v6, p1

    .line 55
    invoke-static/range {v5 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_1

    .line 67
    const-string/jumbo p0, "updateEmailAccount"

    .line 70
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    move-result p0

    .line 74
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 81
    move-result p2

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string/jumbo p0, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    if-eqz v3, :cond_2

    .line 95
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_2

    .line 101
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 104
    goto :goto_3

    .line 105
    :goto_2
    :try_start_1
    const-string/jumbo p1, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 108
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v3, :cond_2

    .line 113
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_2

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_3
    const-string/jumbo p0, "updateEnterpriseExchangeAccount() : ret = "

    .line 123
    invoke-static {p0, v0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    return p2

    .line 127
    :goto_4
    if-eqz v3, :cond_3

    .line 129
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_3

    .line 135
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    throw p0
.end method
