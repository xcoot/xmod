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

    .line 2
    .line 3
    const-string p3, "ProfilePolicyService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "ProfilePolicy : "

    .line 13
    .line 14
    const-string/jumbo p3, "restriction_property_calendar_share_to_owner: "

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string/jumbo p3, "restriction_property_calendar_share_to_owner"

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo p3, "restriction_property_screencapture_save_to_owner: "

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo p3, "restriction_property_screencapture_save_to_owner"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo p3, "restriction_property_move_files_to_profile: "

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo p3, "restriction_property_move_files_to_profile"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo p3, "restriction_property_move_files_to_owner: "

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo p3, "restriction_property_move_files_to_owner"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo p1, "getRestrictionPolicy"

    .line 2
    .line 3
    .line 4
    const-string v0, "ProfilePolicyService"

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const-string p0, "bad arguments. Cannnot be null"

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    const-string v0, "ProfilePolicyPORestrictionsProperty"

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    .line 26
    const-string v0, "ProfilePolicyPORestrictions"

    .line 27
    .line 28
    const-string v1, "ProfilePolicyPORestrictionsValue"

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 p2, 0x1

    .line 35
    if-ne p0, p2, :cond_1

    .line 36
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

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string/jumbo v0, "setRestrictionPolicy"

    .line 8
    .line 9
    .line 10
    const-string v4, "ProfilePolicyService"

    .line 11
    .line 12
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 25
    .line 26
    .line 27
    filled-new-array {v6}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    iget-object v6, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 53
    .line 54
    new-instance v9, Landroid/os/UserHandle;

    .line 55
    .line 56
    invoke-direct {v9, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v9, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    .line 65
    const/16 v10, 0x3e8

    .line 66
    .line 67
    const/4 v11, -0x1

    .line 68
    if-ne v9, v10, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    move v10, v11

    .line 75
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/os/UserHandle;

    .line 86
    .line 87
    const-string v12, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    :try_start_1
    iget-object v13, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 90
    .line 91
    new-instance v14, Landroid/os/UserHandle;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    iget-object v13, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 119
    .line 120
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

    .line 125
    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v14, "Invalid admin package name : "

    .line 133
    .line 134
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v12, ". "

    .line 141
    .line 142
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    move v9, v10

    .line 157
    :cond_2
    if-ne v9, v11, :cond_3

    .line 158
    .line 159
    const-string v0, "Invalid admin UID"

    .line 160
    .line 161
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    .line 166
    .line 167
    return v5

    .line 168
    :cond_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Landroid/content/ContentValues;

    .line 172
    .line 173
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .line 175
    .line 176
    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 177
    .line 178
    const-string v6, "adminUid"

    .line 179
    .line 180
    const-string v7, "ProfilePolicyPORestrictionsProperty"

    .line 181
    .line 182
    invoke-static {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    .line 191
    .line 192
    iget-object v5, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 193
    .line 194
    const-string v6, "ProfilePolicyPORestrictions"

    .line 195
    .line 196
    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    const-string v7, "ProfilePolicyPORestrictionsValue"

    .line 201
    .line 202
    if-lez v5, :cond_4

    .line 203
    .line 204
    new-instance v5, Landroid/content/ContentValues;

    .line 205
    .line 206
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    .line 215
    .line 216
    iget-object v7, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 217
    .line 218
    invoke-virtual {v7, v6, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    .line 229
    .line 230
    iget-object v5, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 231
    .line 232
    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    :goto_1
    if-nez v0, :cond_5

    .line 237
    .line 238
    const-string/jumbo v1, "setRestrictionPolicy failed."

    .line 239
    .line 240
    .line 241
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_5
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 246
    .line 247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    :try_start_3
    new-instance v7, Landroid/content/Intent;

    .line 252
    .line 253
    const-string/jumbo v8, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 254
    .line 255
    .line 256
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/high16 v8, 0x40000000    # 2.0f

    .line 260
    .line 261
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    const-string/jumbo v8, "restrictionName"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    const-string/jumbo v3, "restrictionAllowed"

    .line 271
    .line 272
    .line 273
    move/from16 v8, p3

    .line 274
    .line 275
    invoke-virtual {v7, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    const-string/jumbo v3, "containerId"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    iget-object v1, v1, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    new-instance v2, Landroid/os/UserHandle;

    .line 287
    .line 288
    invoke-direct {v2, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    .line 296
    .line 297
    :goto_2
    const-string/jumbo v1, "setRestrictionPolicy result : "

    .line 298
    .line 299
    .line 300
    invoke-static {v1, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    return v0

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :cond_6
    :goto_4
    const-string v0, "bad arguments. Cannnot be null"

    .line 314
    .line 315
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    return v5
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
