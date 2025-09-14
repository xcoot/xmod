.class public final Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
.super Lcom/samsung/android/knox/container/IRCPPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final isEngMode:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 11
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public final allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    filled-new-array {v4}, [Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_5

    .line 33
    new-instance v4, Landroid/content/ContentValues;

    .line 35
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 38
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v5

    .line 44
    const-string/jumbo v6, "cid"

    .line 47
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 52
    const-string v6, "adminUid"

    .line 54
    const-string/jumbo v7, "propertyName"

    .line 57
    const-string v8, "EnforceMoveAppsToContainer"

    .line 59
    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    .line 64
    const-string v6, "KnoxMUMRCPPolicyService"

    .line 66
    if-eqz v5, :cond_0

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v7, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    .line 73
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v7, " "

    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 88
    const-string v9, " EnforceMoveAppsToContainer"

    .line 90
    invoke-static {v5, v7, v9, v6}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 95
    const-string v7, "CONTAINER_POLICY"

    .line 97
    invoke-virtual {v5, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 100
    move-result v5

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v10, "setEnforceAuthForContainer: already row present ? "

    .line 106
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x1

    .line 110
    if-lez v5, :cond_1

    .line 112
    move v11, v10

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move v11, v3

    .line 115
    :goto_0
    invoke-static {v6, v9, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 118
    const-string/jumbo v9, "propertyValue"

    .line 121
    if-lez v5, :cond_2

    .line 123
    new-instance v5, Landroid/content/ContentValues;

    .line 125
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 128
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    move-result-object v11

    .line 132
    invoke-virtual {v5, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 137
    invoke-virtual {v9, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 140
    move-result v4

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 151
    invoke-virtual {v5, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 154
    move-result v4

    .line 155
    :goto_1
    if-nez v4, :cond_3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, "setEnforceAuthForContainer failed : result = "

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v3

    .line 176
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .line 178
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 181
    const-string v4, "android.intent.extra.user_handle"

    .line 183
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 185
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string/jumbo v4, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    new-instance v4, Landroid/os/Bundle;

    .line 196
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string/jumbo v5, "personaId"

    .line 202
    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 204
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v5, "policyName"

    .line 210
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v5, "policyValue"

    .line 216
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string v5, "MoveAppsToContainerBundle"

    .line 221
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v5, "move apps to container allow ? : "

    .line 229
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v4

    .line 239
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 245
    move-result-wide v4

    .line 246
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 248
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 250
    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 253
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 256
    move-result v14

    .line 257
    if-eqz v2, :cond_4

    .line 259
    const-string v0, "Admin %d has allowed moving applications to container."

    .line 261
    goto :goto_2

    .line 262
    :cond_4
    const-string v0, "Admin %d has disallowed moving applications to container."

    .line 264
    :goto_2
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v1

    .line 270
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    move-result-object v16

    .line 278
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 281
    move-result v17

    .line 282
    const/4 v13, 0x1

    .line 283
    const-string v15, "KnoxMUMRCPPolicyService"

    .line 285
    const/4 v11, 0x5

    .line 286
    const/4 v12, 0x1

    .line 287
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 290
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    return v10

    .line 294
    :cond_5
    return v3
.end method

.method public final allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    const-string v0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string v1, "allowMoveFilesToContainer ........ "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo v0, "restriction_property_move_files_to_profile"

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    move-result v5

    .line 33
    const-string v6, "KnoxMUMRCPPolicyService"

    .line 35
    if-eqz p2, :cond_0

    .line 37
    const-string p2, "Admin %d has allowed moving files to container."

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string p2, "Admin %d has disallowed moving files to container."

    .line 44
    :goto_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 50
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    move-result v8

    .line 64
    const/4 v2, 0x5

    .line 65
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_2
    return p0
.end method

.method public final allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    const-string v0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string v1, "allowMoveFilesToOwner ........ "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo v0, "restriction_property_move_files_to_owner"

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    move-result v5

    .line 33
    const-string v6, "KnoxMUMRCPPolicyService"

    .line 35
    if-eqz p2, :cond_0

    .line 37
    const-string p2, "Admin %d has allowed moving files to owner."

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string p2, "Admin %d has disallowed moving files to owner."

    .line 44
    :goto_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 50
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    move-result v8

    .line 64
    const/4 v2, 0x5

    .line 65
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_2
    return p0
.end method

.method public final allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    if-eqz p1, :cond_3

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    move-result-wide v0

    .line 30
    new-instance p0, Landroid/os/Bundle;

    .line 32
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "android.intent.extra.user_handle"

    .line 37
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 39
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string/jumbo v2, "knox.container.proxy.EXTRA_KEY"

    .line 45
    const-string/jumbo v3, "no_cross_profile_copy_paste"

    .line 48
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p2, :cond_0

    .line 53
    const-string/jumbo v2, "knox.container.proxy.POLICY_CLEAR_USER_RESTRICTION"

    .line 56
    invoke-static {v2, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 59
    move-result-object p0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v2, "knox.container.proxy.POLICY_ADD_USER_RESTRICTION"

    .line 64
    invoke-static {v2, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    move-result-object p0

    .line 68
    :goto_0
    if-eqz p0, :cond_2

    .line 70
    const-string v2, "android.intent.extra.RETURN_RESULT"

    .line 72
    const/4 v3, -0x1

    .line 73
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v2, "share cp to owner allow ? : "

    .line 84
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    const-string v2, "KnoxMUMRCPPolicyService"

    .line 96
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 102
    move-result v6

    .line 103
    if-eqz p2, :cond_1

    .line 105
    const-string p0, "Admin %d has allowed sharing clipboard to owner from Workspace."

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string p0, "Admin %d has disallowed sharing clipboard to owner from Workspace."

    .line 110
    :goto_1
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p2

    .line 116
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 119
    move-result-object p2

    .line 120
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v8

    .line 124
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 126
    const/4 v5, 0x1

    .line 127
    const-string v7, "KnoxMUMRCPPolicyService"

    .line 129
    const/4 v3, 0x5

    .line 130
    const/4 v4, 0x1

    .line 131
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    const/4 p0, 0x1

    .line 138
    return p0

    .line 139
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    :cond_3
    const/4 p0, 0x0

    .line 143
    return p0
.end method

.method public final getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string/jumbo v1, "getAllowChangeDataSyncPolicy"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result p1

    .line 22
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v0

    .line 26
    const-string v2, "RCP_DATA"

    .line 28
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    if-nez p0, :cond_1

    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string/jumbo v1, "getListFromAllowChangeDataSyncPolicy"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string v0, "RCP_DATA"

    .line 11
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    .line 27
    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "admin uid from context info: "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    const-string v2, "KnoxMUMRCPPolicyService"

    .line 40
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    if-eqz p3, :cond_3

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 52
    if-eqz p4, :cond_3

    .line 54
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string/jumbo v1, "name"

    .line 64
    filled-new-array {v1}, [Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Landroid/content/ContentValues;

    .line 70
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 73
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 75
    const-string v4, "adminUid"

    .line 77
    const-string/jumbo v5, "propertyName"

    .line 80
    invoke-static {p1, v3, v4, v5, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo p1, "propertyValue"

    .line 86
    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result p1

    .line 101
    if-lez p1, :cond_3

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    .line 105
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object p0

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_2

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Landroid/content/ContentValues;

    .line 124
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    return-object p1

    .line 133
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p1, "KnoxMUMRCPPolicyService"

    .line 3
    const-string/jumbo v0, "getNotificationSyncPolicy"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    move-result p1

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    const-string v2, "RCP_NOTIFICATION"

    .line 23
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    return-object p0
.end method

.method public final getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "RCP_NOTIFICATION"

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPropertyValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_6

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_5

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_5

    .line 18
    if-eqz p4, :cond_5

    .line 20
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_5

    .line 26
    if-nez p1, :cond_0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 41
    return-object v0

    .line 42
    :cond_1
    const-string/jumbo v0, "propertyValue"

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Landroid/content/ContentValues;

    .line 51
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 54
    const-string/jumbo v4, "name"

    .line 57
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo p3, "propertyName"

    .line 63
    invoke-virtual {v3, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p3

    .line 70
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p4

    .line 74
    if-eqz p4, :cond_3

    .line 76
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Ljava/lang/Long;

    .line 82
    const-string v1, "adminUid"

    .line 84
    invoke-virtual {v3, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    iget-object p4, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 89
    invoke-virtual {p4, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 92
    move-result-object p4

    .line 93
    check-cast p4, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v1

    .line 99
    if-lez v1, :cond_2

    .line 101
    const/4 p0, 0x0

    .line 102
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroid/content/ContentValues;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 115
    const-string/jumbo p2, "persona"

    .line 118
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 124
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_4

    .line 130
    const-string/jumbo p0, "false"

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const-string/jumbo p0, "true"

    .line 137
    :goto_0
    return-object p0

    .line 138
    :cond_5
    :goto_1
    return-object v0

    .line 139
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 141
    const-string p1, "Not a system service. This API only allowed by SYSTEM_UID"

    .line 143
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0
.end method

.method public final isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 10

    .line 1
    const-string v0, "KnoxMUMRCPPolicyService"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_4

    .line 6
    const-string/jumbo v2, "propertyValue"

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "propertyName"

    .line 16
    const-string v5, "EnforceMoveAppsToContainer"

    .line 18
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 26
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 29
    move-result v5

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v6

    .line 34
    const-string v7, "adminUid"

    .line 36
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v6

    .line 45
    const-string/jumbo v7, "cid"

    .line 48
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    .line 53
    if-eqz v6, :cond_0

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v8, "getEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    .line 60
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 65
    const-string v8, " "

    .line 67
    const-string v9, " EnforceMoveAppsToContainer"

    .line 69
    invoke-static {p1, v5, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    const-string p1, "CONTAINER_POLICY"

    .line 80
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_3

    .line 92
    if-eqz v6, :cond_1

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v3, "getEnforceAuthForContainer: "

    .line 99
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/content/ContentValues;

    .line 108
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Landroid/content/ContentValues;

    .line 128
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    if-eqz p0, :cond_2

    .line 134
    const-string p1, "1"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_2

    .line 142
    const/4 p0, 0x1

    .line 143
    return p0

    .line 144
    :cond_2
    return v1

    .line 145
    :cond_3
    const-string/jumbo p0, "getEnforceAuthForContainer failed to get value from DB > returning true"

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v1

    .line 152
    :cond_4
    const-string/jumbo p0, "getEnforceAuthForContainer failed > returning true"

    .line 155
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1
.end method

.method public final isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "isMoveFilesToContainerAllowed ........ "

    .line 4
    const-string v1, "KnoxMUMRCPPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string/jumbo p0, "received ContextInfo equals null"

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v2, "restriction_property_move_files_to_profile"

    .line 30
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : NullPointerException occurred"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : SecurityException occurred"

    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return v0
.end method

.method public final isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "isMoveFilesToOwnerAllowed ........ "

    .line 4
    const-string v1, "KnoxMUMRCPPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string/jumbo p0, "received ContextInfo equals null"

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM$6()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v2, "restriction_property_move_files_to_owner"

    .line 30
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : NullPointerException occurred"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : SecurityException occurred"

    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return v0
.end method

.method public final isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "user"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/UserManager;

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 15
    new-instance v1, Landroid/os/UserHandle;

    .line 17
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 19
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 22
    const-string/jumbo p1, "no_cross_profile_copy_paste"

    .line 25
    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    :cond_1
    :goto_0
    const-string/jumbo p0, "isShareClipboardDataToOwnerAllowed:"

    .line 36
    const-string p1, "KnoxMUMRCPPolicyService"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    return v0
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

.method public final sendRCPPolicyChangedBroadcastToGearManager(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v1, "personaId"

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    const-string/jumbo p2, "policy"

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo p1, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public final setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    const-string p0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string/jumbo p1, "setAllowChangeDataSyncPolicy"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "KnoxMUMRCPPolicyService"

    .line 3
    const-string/jumbo p1, "setNotificationSyncPolicy"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
