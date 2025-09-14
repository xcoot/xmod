.class public abstract Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static declared-synchronized enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    .line 1
    const-string v0, "Retrieved Policy: "

    .line 3
    const-string/jumbo v1, "enforceCaller(): "

    .line 6
    const-class v2, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string v3, "EnterpriseAccessController"

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 34
    sget-object v1, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;->ACCESS_CONTROL_MAP:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 42
    const-string v3, "EnterpriseAccessController"

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/android/server/enterprise/accessControl/AccessControl;->clone()Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 64
    move-result-object v0

    .line 65
    iput-object p1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/accessControl/AccessControl;->updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V

    .line 70
    invoke-static {v0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCallerInternal(Lcom/android/server/enterprise/accessControl/AccessControl;)Lcom/samsung/android/knox/ContextInfo;

    .line 73
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v2

    .line 75
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    const-string p1, "API not defined"

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 88
    const-string p1, "Invalid API"

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    monitor-exit v2

    .line 95
    throw p0
.end method

.method public static enforceCallerInternal(Lcom/android/server/enterprise/accessControl/AccessControl;)Lcom/samsung/android/knox/ContextInfo;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 5
    sget-object v3, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 7
    check-cast v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 9
    move-object v4, v3

    .line 10
    check-cast v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v5, "enforceAccessControl: "

    .line 20
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    const-string v5, "EnterpriseDeviceManagerService"

    .line 32
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 37
    const-string v6, "PROVISION_CERT_APP"

    .line 39
    if-nez v3, :cond_2

    .line 41
    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 52
    iget-boolean v2, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    .line 54
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 59
    move-result-object v1

    .line 60
    :cond_1
    move-object v5, v1

    .line 61
    iget-boolean v7, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    .line 63
    iget-boolean v8, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    .line 65
    iget-boolean v9, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    .line 67
    iget-boolean v10, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    .line 69
    iget-object v6, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    .line 71
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 74
    move-result-object v0

    .line 75
    goto/16 :goto_c

    .line 77
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 79
    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 81
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 84
    move-result v7

    .line 85
    new-instance v8, Landroid/content/ContentValues;

    .line 87
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 90
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 93
    move-result v9

    .line 94
    const/4 v10, 0x0

    .line 95
    invoke-static {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 98
    move-result-object v9

    .line 99
    const-string v11, "#SelectClause#"

    .line 101
    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v9, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 113
    move-result-object v9

    .line 114
    const-string/jumbo v11, "packageName"

    .line 117
    invoke-virtual {v8, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v9, "signature"

    .line 123
    const-string/jumbo v12, "scopeMask"

    .line 126
    const-string v13, "adminUid"

    .line 128
    filled-new-array {v11, v9, v12, v13}, [Ljava/lang/String;

    .line 131
    move-result-object v14

    .line 132
    iget-object v15, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 134
    const-string v1, "AUTHORIZATION"

    .line 136
    invoke-virtual {v15, v1, v14, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_4

    .line 148
    :cond_3
    move v2, v10

    .line 149
    const/4 v1, -0x1

    .line 150
    :goto_1
    const/4 v3, -0x1

    .line 151
    goto/16 :goto_7

    .line 153
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v1

    .line 157
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Landroid/content/ContentValues;

    .line 169
    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 172
    move-result-object v15

    .line 173
    if-eqz v15, :cond_5

    .line 175
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 178
    move-result v15

    .line 179
    iget v14, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 181
    and-int/2addr v14, v15

    .line 182
    if-nez v14, :cond_6

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 188
    move-result-object v14

    .line 189
    if-nez v14, :cond_7

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object v15

    .line 196
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v8

    .line 200
    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 202
    move-object/from16 v16, v1

    .line 204
    const-string v1, "android"

    .line 206
    invoke-static {v2, v1, v10, v7}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 209
    move-result-object v1

    .line 210
    if-nez v1, :cond_8

    .line 212
    move-object/from16 v1, v16

    .line 214
    goto :goto_2

    .line 215
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 218
    move-result-wide v17

    .line 219
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 222
    move-result-object v2

    .line 223
    if-eqz v2, :cond_9

    .line 225
    invoke-virtual {v2, v15, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 228
    move-result v15

    .line 229
    if-eq v15, v3, :cond_a

    .line 231
    :cond_9
    move/from16 v20, v3

    .line 233
    move v2, v10

    .line 234
    goto :goto_4

    .line 235
    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    move-result v15

    .line 239
    if-nez v15, :cond_c

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_c

    .line 247
    array-length v15, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    move/from16 v19, v10

    .line 250
    :goto_3
    if-ge v10, v15, :cond_b

    .line 252
    move/from16 v20, v3

    .line 254
    :try_start_1
    aget-object v3, v2, v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    move-object/from16 v21, v2

    .line 258
    const/4 v2, 0x0

    .line 259
    :try_start_2
    invoke-static {v2, v1, v3, v8}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    move-result v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    or-int v19, v19, v3

    .line 265
    const/4 v3, 0x1

    .line 266
    add-int/2addr v10, v3

    .line 267
    move/from16 v3, v20

    .line 269
    move-object/from16 v2, v21

    .line 271
    goto :goto_3

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    goto :goto_6

    .line 274
    :catch_0
    const/4 v2, 0x0

    .line 275
    goto :goto_5

    .line 276
    :cond_b
    move/from16 v20, v3

    .line 278
    const/4 v2, 0x0

    .line 279
    if-nez v19, :cond_d

    .line 281
    :goto_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    move v10, v2

    .line 285
    move-object/from16 v1, v16

    .line 287
    move/from16 v3, v20

    .line 289
    goto/16 :goto_2

    .line 291
    :catch_1
    move/from16 v20, v3

    .line 293
    move v2, v10

    .line 294
    goto :goto_5

    .line 295
    :cond_c
    move/from16 v20, v3

    .line 297
    move v2, v10

    .line 298
    :cond_d
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 301
    move-result v1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    goto/16 :goto_1

    .line 307
    :catch_2
    :goto_5
    :try_start_4
    const-string v1, "Authorized package not installed"

    .line 309
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    goto :goto_4

    .line 313
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v0

    .line 317
    :goto_7
    if-eq v1, v3, :cond_e

    .line 319
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 321
    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 324
    goto/16 :goto_b

    .line 326
    :cond_e
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 328
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 330
    iget-object v3, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    iget-object v3, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 342
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    .line 344
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 350
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_19

    .line 356
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 358
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_f

    .line 364
    goto/16 :goto_a

    .line 366
    :cond_f
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 368
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 370
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 372
    iget-boolean v1, v1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 374
    iget-object v7, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 376
    invoke-static {v7}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {v7, v3, v5, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isUidValidKpu(IIZ)Z

    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_13

    .line 386
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 388
    iget-object v3, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 390
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 392
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 398
    move-result v3

    .line 399
    if-eqz v3, :cond_10

    .line 401
    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 403
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 405
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 408
    move-result v2

    .line 409
    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 412
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 414
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 417
    :goto_8
    move-object v2, v1

    .line 418
    goto/16 :goto_b

    .line 420
    :cond_10
    const-string/jumbo v3, "restriction_policy"

    .line 423
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    move-result-object v3

    .line 427
    check-cast v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 429
    if-eqz v3, :cond_11

    .line 431
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 434
    move-result v10

    .line 435
    goto :goto_9

    .line 436
    :cond_11
    move v10, v2

    .line 437
    :goto_9
    if-eqz v10, :cond_12

    .line 439
    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    .line 442
    move-result v2

    .line 443
    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 446
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 448
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 451
    goto :goto_8

    .line 452
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    .line 454
    const-string v1, "Invalid KSP caller"

    .line 456
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 459
    throw v0

    .line 460
    :cond_13
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 462
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 464
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceKCS(I)Z

    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_14

    .line 470
    goto :goto_a

    .line 471
    :cond_14
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    .line 473
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_15

    .line 479
    goto :goto_a

    .line 480
    :cond_15
    iget v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 482
    const/4 v2, 0x2

    .line 483
    and-int/lit8 v3, v1, 0x2

    .line 485
    if-eq v3, v2, :cond_18

    .line 487
    const/4 v2, 0x1

    .line 488
    and-int/2addr v1, v2

    .line 489
    if-ne v1, v2, :cond_17

    .line 491
    iget-object v1, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 493
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_RC_API_ACCESS_GRANT"

    .line 496
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_16

    .line 502
    goto :goto_a

    .line 503
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    .line 505
    const-string v1, "Caller is not authorized to call RC APIs"

    .line 507
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 510
    throw v0

    .line 511
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    const-string v3, "Caller is not allowed. Invalid scope: "

    .line 517
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    iget v0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 522
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object v0

    .line 529
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 532
    throw v1

    .line 533
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    .line 535
    const-string v1, "Caller is not authorized to call provisionCert API"

    .line 537
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 540
    throw v0

    .line 541
    :cond_19
    :goto_a
    const/4 v2, 0x0

    .line 542
    :goto_b
    iget v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 544
    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    .line 546
    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallerPermission(ILjava/util/List;)Z

    .line 549
    move-result v1

    .line 550
    if-eqz v1, :cond_1b

    .line 552
    if-eqz v2, :cond_1a

    .line 554
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;->updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V

    .line 557
    :cond_1a
    iget-object v0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 559
    :goto_c
    return-object v0

    .line 560
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    .line 562
    const-string v1, "Caller doesn\'t have permission"

    .line 564
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 567
    throw v0
.end method
