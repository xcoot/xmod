.class public final Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field public mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string/jumbo v8, "com.google.work"

    .line 4
    const-string/jumbo v9, "com.facebook.auth.login"

    .line 7
    const-string/jumbo v0, "com.samsung.android.email"

    .line 10
    const-string/jumbo v1, "com.samsung.android.exchange"

    .line 13
    const-string/jumbo v2, "com.samsung.android.ldap"

    .line 16
    const-string/jumbo v3, "com.osp.app.signin"

    .line 19
    const-string/jumbo v4, "com.google"

    .line 22
    const-string/jumbo v5, "com.google.android.gm.legacyimap"

    .line 25
    const-string/jumbo v6, "com.google.android.gm.pop3"

    .line 28
    const-string/jumbo v7, "com.google.android.gm.exchange"

    .line 31
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, " ,target ="

    .line 3
    const-string v1, "DeviceAccountPolicy"

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 17
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string/jumbo v4, "checkAccountMatch() : matched. match = "

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :catch_0
    const-string/jumbo v3, "checkAccountMatch() : invalid matched. match = "

    .line 55
    invoke-static {v3, p1, v0, v2, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    .line 60
    return p0
.end method


# virtual methods
.method public final addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p3

    .line 3
    move-object/from16 v1, p4

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v12

    .line 9
    sget-object v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    const-string v13, "DeviceAccountPolicy"

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eqz v2, :cond_7

    .line 24
    if-nez p2, :cond_0

    .line 26
    goto/16 :goto_6

    .line 28
    :cond_0
    invoke-static {v12}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 31
    move-result v15

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v16

    .line 36
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v18

    .line 40
    const/16 v19, 0x1

    .line 42
    move/from16 v2, v19

    .line 44
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_6

    .line 50
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 56
    new-instance v4, Landroid/content/ContentValues;

    .line 58
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 61
    const-string v5, "adminUid"

    .line 63
    iget v6, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v5, "type"

    .line 75
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v5, "name"

    .line 81
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v5, "listType"

    .line 87
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v11, p0

    .line 92
    iget-object v5, v11, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    const-string v6, "AccountBlackWhiteList"

    .line 96
    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 99
    move-result v4

    .line 100
    if-eqz v2, :cond_1

    .line 102
    if-eqz v4, :cond_1

    .line 104
    move/from16 v20, v19

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move/from16 v20, v14

    .line 109
    :goto_1
    if-eqz v4, :cond_5

    .line 111
    const-string v2, "ADDITION_BLACKLIST"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 126
    move-result v7

    .line 127
    const-string v8, "DeviceAccountPolicy"

    .line 129
    const-string v4, "Admin %d has added account %s to the addition blocklist."

    .line 131
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v5

    .line 137
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v9

    .line 145
    const/4 v5, 0x1

    .line 146
    const/4 v6, 0x1

    .line 147
    const/4 v10, 0x0

    .line 148
    const/4 v4, 0x5

    .line 149
    move-object v3, v12

    .line 150
    move v11, v15

    .line 151
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 154
    goto/16 :goto_2

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_5

    .line 159
    :catch_0
    move-exception v0

    .line 160
    goto/16 :goto_3

    .line 162
    :cond_2
    const-string v2, "ADDITION_WHITELIST"

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_3

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 173
    move-result-object v2

    .line 174
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 177
    move-result v7

    .line 178
    const-string v8, "DeviceAccountPolicy"

    .line 180
    const-string v4, "Admin %d has added account %s to the addition allowlist."

    .line 182
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v5

    .line 188
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 191
    move-result-object v3

    .line 192
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    move-result-object v9

    .line 196
    const/4 v5, 0x1

    .line 197
    const/4 v6, 0x1

    .line 198
    const/4 v10, 0x0

    .line 199
    const/4 v4, 0x5

    .line 200
    move-object v3, v12

    .line 201
    move v11, v15

    .line 202
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 205
    goto :goto_2

    .line 206
    :cond_3
    const-string v2, "REMOVAL_BLACKLIST"

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_4

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 217
    move-result-object v2

    .line 218
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 221
    move-result v7

    .line 222
    const-string v8, "DeviceAccountPolicy"

    .line 224
    const-string v4, "Admin %d has added account %s to the removal blocklist."

    .line 226
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object v5

    .line 232
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 235
    move-result-object v3

    .line 236
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v9

    .line 240
    const/4 v5, 0x1

    .line 241
    const/4 v6, 0x1

    .line 242
    const/4 v10, 0x0

    .line 243
    const/4 v4, 0x5

    .line 244
    move-object v3, v12

    .line 245
    move v11, v15

    .line 246
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 249
    goto :goto_2

    .line 250
    :cond_4
    const-string v2, "REMOVAL_WHITELIST"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_5

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 261
    move-result-object v2

    .line 262
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 265
    move-result v7

    .line 266
    const-string v8, "DeviceAccountPolicy"

    .line 268
    const-string v4, "Admin %d has added account %s to the removal allowlist."

    .line 270
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v5

    .line 276
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 279
    move-result-object v3

    .line 280
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    move-result-object v9

    .line 284
    const/4 v5, 0x1

    .line 285
    const/4 v6, 0x1

    .line 286
    const/4 v10, 0x0

    .line 287
    const/4 v4, 0x5

    .line 288
    move-object v3, v12

    .line 289
    move v11, v15

    .line 290
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_5
    :goto_2
    move/from16 v2, v20

    .line 295
    goto/16 :goto_0

    .line 297
    :cond_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    move v14, v2

    .line 301
    goto :goto_4

    .line 302
    :goto_3
    :try_start_1
    const-string v1, "Handled Exception in addAccountsToBWLInternal()"

    .line 304
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    :goto_4
    return v14

    .line 311
    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v0

    .line 315
    :cond_7
    :goto_6
    const-string v0, "addAccountsToBWLInternal() : invalid parameter."

    .line 317
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v14
.end method

.method public final addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    const-string v3, "DeviceAccountPolicy"

    .line 9
    const-string v4, "AccountBlackWhiteList"

    .line 11
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 14
    move-result-object v6

    .line 15
    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    const-string v7, "adminUid"

    .line 19
    const-string/jumbo v8, "type"

    .line 22
    const-string/jumbo v9, "listType"

    .line 25
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 28
    move-result-object v10

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    move-result-object v11

    .line 33
    filled-new-array {v11, v1, v2}, [Ljava/lang/String;

    .line 36
    move-result-object v11

    .line 37
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 40
    move-result v14

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v15

    .line 45
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    .line 47
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v12, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {v12, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v12, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    invoke-virtual {v1, v4, v10, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v0, "clearAccountsFromBWLInternal() : no accounts."

    .line 80
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto/16 :goto_1

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    invoke-virtual {v1, v4, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 102
    const-string v4, "ADDITION_BLACKLIST"

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 113
    move-result-object v5

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 117
    move-result v10

    .line 118
    const-string v11, "DeviceAccountPolicy"

    .line 120
    const-string v0, "Admin %d has removed all accounts from addition blocklist."

    .line 122
    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v12

    .line 136
    const/4 v8, 0x1

    .line 137
    const/4 v9, 0x1

    .line 138
    const/4 v13, 0x0

    .line 139
    const/4 v7, 0x5

    .line 140
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 143
    goto/16 :goto_0

    .line 145
    :cond_1
    const-string v4, "ADDITION_WHITELIST"

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_2

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 156
    move-result-object v5

    .line 157
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 160
    move-result v10

    .line 161
    const-string v11, "DeviceAccountPolicy"

    .line 163
    const-string v0, "Admin %d has removed all accounts from addition allowlist."

    .line 165
    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v2

    .line 171
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 175
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    move-result-object v12

    .line 179
    const/4 v8, 0x1

    .line 180
    const/4 v9, 0x1

    .line 181
    const/4 v13, 0x0

    .line 182
    const/4 v7, 0x5

    .line 183
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    const-string v4, "REMOVAL_BLACKLIST"

    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_3

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 198
    move-result-object v5

    .line 199
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 202
    move-result v10

    .line 203
    const-string v11, "DeviceAccountPolicy"

    .line 205
    const-string v0, "Admin %d has removed all accounts from removal blocklist."

    .line 207
    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v2

    .line 213
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 216
    move-result-object v2

    .line 217
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object v12

    .line 221
    const/4 v8, 0x1

    .line 222
    const/4 v9, 0x1

    .line 223
    const/4 v13, 0x0

    .line 224
    const/4 v7, 0x5

    .line 225
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 228
    goto :goto_0

    .line 229
    :cond_3
    const-string v4, "REMOVAL_WHITELIST"

    .line 231
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_4

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 240
    move-result-object v5

    .line 241
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 244
    move-result v10

    .line 245
    const-string v11, "DeviceAccountPolicy"

    .line 247
    const-string v0, "Admin %d has removed all accounts from removal allowlist."

    .line 249
    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v2

    .line 255
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 258
    move-result-object v2

    .line 259
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    move-result-object v12

    .line 263
    const/4 v8, 0x1

    .line 264
    const/4 v9, 0x1

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v7, 0x5

    .line 267
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_4
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    goto :goto_2

    .line 274
    :goto_1
    :try_start_2
    const-string v1, "Handled Exception in clearAccountsFromBWLInternal()"

    .line 276
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    const/4 v1, 0x0

    .line 283
    :goto_2
    return v1

    .line 284
    :goto_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    throw v0
.end method

.method public final clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

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

.method public final getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "ADDITION_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "ADDITION_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "DeviceAccountPolicy"

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string/jumbo p0, "getAccountsFromBWLInternal() : no support type."

    .line 23
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo p1, "getAccountsFromBWLInternal() : Account list for "

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, " is null."

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object v1

    .line 61
    :cond_1
    check-cast p1, Ljava/util/HashMap;

    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 66
    move-result-object p2

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    .line 69
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 72
    move-result v0

    .line 73
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p2

    .line 80
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 92
    new-instance v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;

    .line 94
    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v2

    .line 101
    iget-object v3, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 103
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/Collection;

    .line 117
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->entries:Ljava/util/List;

    .line 122
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    return-object p3
.end method

.method public final getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "REMOVAL_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "REMOVAL_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "auditlog"

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 17
    return-object p0
.end method

.method public final getSupportedAccountTypes()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 13
    move-result v0

    .line 14
    const-string v1, "ADDITION_BLACKLIST"

    .line 16
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ADDITION_WHITELIST"

    .line 22
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 25
    move-result-object p0

    .line 26
    const/4 p1, 0x1

    .line 27
    const-string v0, "DeviceAccountPolicy"

    .line 29
    if-nez v1, :cond_0

    .line 31
    const-string/jumbo p0, "isAccountAdditionAllowed() : no BlackList."

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return p1

    .line 38
    :cond_0
    check-cast v1, Ljava/util/HashMap;

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Integer;

    .line 60
    if-eqz p0, :cond_2

    .line 62
    move-object v4, p0

    .line 63
    check-cast v4, Ljava/util/HashMap;

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/util/Set;

    .line 71
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/util/Set;

    .line 88
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v4

    .line 92
    invoke-static {v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_1

    .line 98
    if-eqz p3, :cond_3

    .line 100
    const p0, 0x1040188

    .line 103
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo p1, "isAccountAdditionAllowed() : account has blocked. userId = "

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 p0, 0x0

    .line 125
    return p0

    .line 126
    :cond_4
    return p1
.end method

.method public final isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 4

    .line 1
    const-string v0, "REMOVAL_BLACKLIST"

    .line 3
    invoke-virtual {p0, p4, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "REMOVAL_WHITELIST"

    .line 9
    invoke-virtual {p0, p4, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x1

    .line 14
    const-string p4, "DeviceAccountPolicy"

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string/jumbo p0, "isAccountRemovalAllowedAsUser() : no BlackList."

    .line 21
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return p1

    .line 25
    :cond_0
    check-cast v0, Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Integer;

    .line 47
    if-eqz p0, :cond_2

    .line 49
    move-object v3, p0

    .line 50
    check-cast v3, Ljava/util/HashMap;

    .line 52
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/Set;

    .line 58
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 68
    const-string/jumbo v2, "isAccountRemovalAllowedAsUser() : no WhiteList."

    .line 71
    invoke-static {p4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/Set;

    .line 81
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_1

    .line 91
    if-eqz p3, :cond_3

    .line 93
    const p0, 0x1040189

    .line 96
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo p1, "isAccountRemovalAllowedAsUser() : account has blocked. userId = "

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-static {p4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 p0, 0x0

    .line 118
    return p0

    .line 119
    :cond_4
    return p1
.end method

.method public final declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    const-string/jumbo v0, "loadAccounts() : userId  = "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "DeviceAccountPolicy"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string v1, "AccountBlackWhiteList"

    .line 26
    const-string v2, "adminUid"

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 38
    const-string p1, "DeviceAccountPolicy"

    .line 40
    const-string/jumbo p2, "loadAccounts() : admin is null "

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_4

    .line 52
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    .line 54
    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    .line 59
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    .line 62
    move-result v2

    .line 63
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Long;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 85
    move-result-wide v2

    .line 86
    long-to-int v2, v2

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Ljava/util/TreeSet;

    .line 93
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 96
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "adminUid"

    .line 102
    const-string/jumbo v2, "name"

    .line 105
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 108
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    .line 111
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string/jumbo v3, "containerID"

    .line 117
    const/4 v4, 0x0

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string/jumbo v3, "userID"

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string/jumbo p1, "type"

    .line 138
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo p1, "listType"

    .line 144
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 149
    const-string p2, "AccountBlackWhiteList"

    .line 151
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_2

    .line 163
    const-string p2, "DeviceAccountPolicy"

    .line 165
    const-string/jumbo p3, "loadAccounts() : list empty "

    .line 168
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception p1

    .line 173
    goto :goto_3

    .line 174
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object p1

    .line 178
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_4

    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Landroid/content/ContentValues;

    .line 190
    const-string p3, "adminUid"

    .line 192
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 195
    move-result-object p3

    .line 196
    if-eqz p3, :cond_3

    .line 198
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 201
    move-result-wide v1

    .line 202
    long-to-int p3, v1

    .line 203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object p3

    .line 211
    check-cast p3, Ljava/util/Set;

    .line 213
    const-string/jumbo v1, "name"

    .line 216
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object p2

    .line 220
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    goto :goto_2

    .line 224
    :cond_3
    const-string p2, "DeviceAccountPolicy"

    .line 226
    const-string/jumbo p3, "loadAccounts() : can not get admin. "

    .line 229
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    goto :goto_2

    .line 233
    :goto_3
    :try_start_3
    const-string p2, "DeviceAccountPolicy"

    .line 235
    const-string p3, "Handled Exception in loadAccounts()"

    .line 237
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :cond_4
    monitor-exit p0

    .line 241
    return-object v0

    .line 242
    :goto_4
    monitor-exit p0

    .line 243
    throw p1
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

.method public final removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "ADDITION_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p3

    .line 3
    move-object/from16 v1, p4

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v12

    .line 9
    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    sget-object v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    const-string v14, "DeviceAccountPolicy"

    .line 23
    const/4 v15, 0x0

    .line 24
    if-eqz v2, :cond_7

    .line 26
    if-nez p2, :cond_0

    .line 28
    goto/16 :goto_6

    .line 30
    :cond_0
    invoke-static {v12}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 33
    move-result v16

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    move-result-wide v17

    .line 38
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v19

    .line 42
    const/16 v20, 0x1

    .line 44
    move/from16 v2, v20

    .line 46
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_6

    .line 52
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 58
    const-string v4, "adminUid"

    .line 60
    const-string/jumbo v5, "type"

    .line 63
    const-string/jumbo v6, "name"

    .line 66
    const-string/jumbo v7, "listType"

    .line 69
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    filled-new-array {v5, v0, v3, v1}, [Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    move-object/from16 v11, p0

    .line 83
    iget-object v6, v11, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    const-string v7, "AccountBlackWhiteList"

    .line 87
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 90
    move-result v4

    .line 91
    if-eqz v2, :cond_1

    .line 93
    if-eqz v4, :cond_1

    .line 95
    move/from16 v21, v20

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move/from16 v21, v15

    .line 100
    :goto_1
    if-eqz v4, :cond_5

    .line 102
    const-string v2, "ADDITION_BLACKLIST"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 113
    move-result-object v2

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 117
    move-result v7

    .line 118
    const-string v8, "DeviceAccountPolicy"

    .line 120
    const-string v4, "Admin %d has removed account %s from addition blocklist."

    .line 122
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v5

    .line 128
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 132
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v9

    .line 136
    const/4 v5, 0x1

    .line 137
    const/4 v6, 0x1

    .line 138
    const/4 v10, 0x0

    .line 139
    const/4 v4, 0x5

    .line 140
    move-object v3, v12

    .line 141
    move/from16 v11, v16

    .line 143
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 146
    goto/16 :goto_2

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_5

    .line 151
    :catch_0
    move-exception v0

    .line 152
    goto/16 :goto_3

    .line 154
    :cond_2
    const-string v2, "ADDITION_WHITELIST"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 165
    move-result-object v2

    .line 166
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 169
    move-result v7

    .line 170
    const-string v8, "DeviceAccountPolicy"

    .line 172
    const-string v4, "Admin %d has removed account %s from addition allowlist."

    .line 174
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v5

    .line 180
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 183
    move-result-object v3

    .line 184
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object v9

    .line 188
    const/4 v5, 0x1

    .line 189
    const/4 v6, 0x1

    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v4, 0x5

    .line 192
    move-object v3, v12

    .line 193
    move/from16 v11, v16

    .line 195
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 198
    goto :goto_2

    .line 199
    :cond_3
    const-string v2, "REMOVAL_BLACKLIST"

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_4

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 210
    move-result-object v2

    .line 211
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 214
    move-result v7

    .line 215
    const-string v8, "DeviceAccountPolicy"

    .line 217
    const-string v4, "Admin %d has removed account %s from removal blocklist."

    .line 219
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v5

    .line 225
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 228
    move-result-object v3

    .line 229
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    move-result-object v9

    .line 233
    const/4 v5, 0x1

    .line 234
    const/4 v6, 0x1

    .line 235
    const/4 v10, 0x0

    .line 236
    const/4 v4, 0x5

    .line 237
    move-object v3, v12

    .line 238
    move/from16 v11, v16

    .line 240
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 243
    goto :goto_2

    .line 244
    :cond_4
    const-string v2, "REMOVAL_WHITELIST"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_5

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 255
    move-result-object v2

    .line 256
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 259
    move-result v7

    .line 260
    const-string v8, "DeviceAccountPolicy"

    .line 262
    const-string v4, "Admin %d has removed account %s from removal allowlist."

    .line 264
    iget v5, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v5

    .line 270
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 273
    move-result-object v3

    .line 274
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    move-result-object v9

    .line 278
    const/4 v5, 0x1

    .line 279
    const/4 v6, 0x1

    .line 280
    const/4 v10, 0x0

    .line 281
    const/4 v4, 0x5

    .line 282
    move-object v3, v12

    .line 283
    move/from16 v11, v16

    .line 285
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_5
    :goto_2
    move/from16 v2, v21

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    move v15, v2

    .line 296
    goto :goto_4

    .line 297
    :goto_3
    :try_start_1
    const-string v1, "Handled Exception in removeAccountsFromBWLInternal()"

    .line 299
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    :goto_4
    return v15

    .line 306
    :goto_5
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    throw v0

    .line 310
    :cond_7
    :goto_6
    const-string/jumbo v0, "removeAccountsFromBWLInternal() : invalid parameter."

    .line 313
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v15
.end method

.method public final removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_BLACKLIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "REMOVAL_WHITELIST"

    .line 3
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
