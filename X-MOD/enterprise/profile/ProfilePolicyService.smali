.class public final Lcom/android/server/enterprise/profile/ProfilePolicyService;
.super Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "ProfilePolicyService"

    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "ProfilePolicy : "

    .line 14
    const-string/jumbo p3, "restriction_property_calendar_share_to_owner: "

    .line 17
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p1

    .line 21
    const-string/jumbo p3, "restriction_property_calendar_share_to_owner"

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo p3, "restriction_property_screencapture_save_to_owner: "

    .line 44
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo p3, "restriction_property_screencapture_save_to_owner"

    .line 50
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 53
    move-result p3

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo p3, "restriction_property_move_files_to_profile: "

    .line 69
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo p3, "restriction_property_move_files_to_profile"

    .line 75
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 78
    move-result p3

    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo p3, "restriction_property_move_files_to_owner: "

    .line 94
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    const-string/jumbo p3, "restriction_property_move_files_to_owner"

    .line 100
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 103
    move-result p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo p1, "getRestrictionPolicy"

    .line 4
    const-string v0, "ProfilePolicyService"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p0, "bad arguments. Cannnot be null"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return p1

    .line 18
    :cond_0
    const-string v0, "ProfilePolicyPORestrictionsProperty"

    .line 20
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 23
    move-result-object p2

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    const-string v0, "ProfilePolicyPORestrictions"

    .line 28
    const-string v1, "ProfilePolicyPORestrictionsValue"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result p0

    .line 34
    const/4 p2, 0x1

    .line 35
    if-ne p0, p2, :cond_1

    .line 37
    move p1, p2

    .line 38
    :cond_1
    return p1
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

.method public final setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string/jumbo v0, "setRestrictionPolicy"

    .line 10
    const-string v4, "ProfilePolicyService"

    .line 12
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v2, :cond_6

    .line 18
    if-nez v3, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 27
    filled-new-array {v6}, [Ljava/lang/String;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-object v6, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 47
    move-result-object v6

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v7

    .line 52
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 54
    new-instance v9, Landroid/os/UserHandle;

    .line 56
    invoke-direct {v9, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 59
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    .line 62
    move-result-object v0

    .line 63
    iget v9, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    const/16 v10, 0x3e8

    .line 67
    const/4 v11, -0x1

    .line 68
    if-ne v9, v10, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v9

    .line 74
    move v10, v11

    .line 75
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/os/UserHandle;

    .line 87
    const-string v12, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    iget-object v13, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 91
    new-instance v14, Landroid/os/UserHandle;

    .line 93
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 96
    move-result v15

    .line 97
    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 100
    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 103
    move-result-object v13

    .line 104
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 107
    move-result-object v12

    .line 108
    iget-object v13, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 113
    move-result-object v13

    .line 114
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 117
    move-result v0

    .line 118
    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 121
    move-result v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto/16 :goto_3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v14, "Invalid admin package name : "

    .line 134
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v12, ". "

    .line 142
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    move v9, v10

    .line 157
    :cond_2
    if-ne v9, v11, :cond_3

    .line 159
    const-string v0, "Invalid admin UID"

    .line 161
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return v5

    .line 168
    :cond_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    new-instance v0, Landroid/content/ContentValues;

    .line 173
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 178
    const-string v6, "adminUid"

    .line 180
    const-string v7, "ProfilePolicyPORestrictionsProperty"

    .line 182
    invoke-static {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    iget-object v5, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 194
    const-string v6, "ProfilePolicyPORestrictions"

    .line 196
    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 199
    move-result v5

    .line 200
    const-string v7, "ProfilePolicyPORestrictionsValue"

    .line 202
    if-lez v5, :cond_4

    .line 204
    new-instance v5, Landroid/content/ContentValues;

    .line 206
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 209
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v7, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 218
    invoke-virtual {v7, v6, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 221
    move-result v0

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget-object v5, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 232
    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 235
    move-result v0

    .line 236
    :goto_1
    if-nez v0, :cond_5

    .line 238
    const-string/jumbo v1, "setRestrictionPolicy failed."

    .line 241
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto :goto_2

    .line 245
    :cond_5
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 250
    move-result-wide v5

    .line 251
    :try_start_3
    new-instance v7, Landroid/content/Intent;

    .line 253
    const-string/jumbo v8, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 256
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    const/high16 v8, 0x40000000    # 2.0f

    .line 261
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    const-string/jumbo v8, "restrictionName"

    .line 267
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v3, "restrictionAllowed"

    .line 273
    move/from16 v8, p3

    .line 275
    invoke-virtual {v7, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string/jumbo v3, "containerId"

    .line 281
    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v1, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 286
    new-instance v2, Landroid/os/UserHandle;

    .line 288
    invoke-direct {v2, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 291
    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    :goto_2
    const-string/jumbo v1, "setRestrictionPolicy result : "

    .line 300
    invoke-static {v1, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    return v0

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw v0

    .line 309
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v0

    .line 313
    :cond_6
    :goto_4
    const-string v0, "bad arguments. Cannnot be null"

    .line 315
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v5
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
