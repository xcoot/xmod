.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/pm/permission/Permission;

    .line 15
    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 19
    .line 20
    iget-object v5, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 27
    .line 28
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 29
    .line 30
    monitor-enter v6

    .line 31
    :try_start_0
    array-length v7, v5

    .line 32
    :goto_0
    if-ge v1, v7, :cond_1

    .line 33
    .line 34
    aget v8, v5, v1

    .line 35
    .line 36
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v3, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    const-string v9, "PermissionManager"

    .line 47
    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v11, "Missing permissions state for "

    .line 54
    .line 55
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v11, " and user "

    .line 66
    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_2

    .line 83
    :cond_0
    iget-object v8, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 84
    .line 85
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    :goto_1
    add-int/2addr v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 94
    .line 95
    return-void

    .line 96
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 98
    .line 99
    throw v0

    .line 100
    :pswitch_0
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, [I

    .line 105
    .line 106
    move-object/from16 v4, p1

    .line 107
    .line 108
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2, v1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 123
    .line 124
    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 125
    .line 126
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 127
    .line 128
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v6, v5}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    if-nez v6, :cond_2

    .line 139
    .line 140
    const-string v0, "PermissionManager"

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Missing shared user Api for "

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto/16 :goto_8

    .line 160
    .line 161
    :cond_2
    iget-object v5, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    iget-object v5, v4, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 165
    .line 166
    :goto_3
    iget-object v6, v5, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 169
    .line 170
    .line 171
    iget-object v6, v5, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 172
    .line 173
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 174
    .line 175
    .line 176
    iget v6, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 177
    .line 178
    iget-object v7, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 179
    .line 180
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 181
    .line 182
    monitor-enter v7

    .line 183
    :try_start_2
    array-length v8, v0

    .line 184
    move v9, v1

    .line 185
    :goto_4
    if-ge v9, v8, :cond_8

    .line 186
    .line 187
    aget v10, v0, v9

    .line 188
    .line 189
    iget-object v11, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 190
    .line 191
    iget-object v11, v11, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 192
    .line 193
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    check-cast v11, Lcom/android/server/pm/permission/UserPermissionState;

    .line 198
    .line 199
    if-nez v11, :cond_5

    .line 200
    .line 201
    const-string v11, "PermissionManager"

    .line 202
    .line 203
    new-instance v12, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v13, "Missing user state for "

    .line 209
    .line 210
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_5
    move-object/from16 p0, v0

    .line 224
    .line 225
    move v0, v2

    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :catchall_1
    move-exception v0

    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :cond_5
    iget-object v12, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v13, v11, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 234
    .line 235
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_6

    .line 240
    .line 241
    invoke-virtual {v4, v2, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 242
    .line 243
    .line 244
    :cond_6
    invoke-virtual {v11, v6}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    if-nez v11, :cond_7

    .line 249
    .line 250
    const-string v11, "PermissionManager"

    .line 251
    .line 252
    new-instance v12, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v13, "Missing permission state for "

    .line 258
    .line 259
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v13, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v13, " and user "

    .line 268
    .line 269
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_7
    iget-boolean v12, v11, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 284
    .line 285
    invoke-virtual {v5, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(IZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    move v13, v1

    .line 297
    :goto_6
    if-ge v13, v12, :cond_4

    .line 298
    .line 299
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    .line 304
    .line 305
    new-instance v15, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 306
    .line 307
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v2, v14, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 312
    .line 313
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    move-object/from16 p0, v0

    .line 318
    .line 319
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    invoke-direct {v15, v1, v2, v0, v14}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v15, v10}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 331
    .line 332
    .line 333
    const/4 v0, 0x1

    .line 334
    add-int/2addr v13, v0

    .line 335
    move v2, v0

    .line 336
    const/4 v1, 0x0

    .line 337
    move-object/from16 v0, p0

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :goto_7
    add-int/2addr v9, v0

    .line 341
    move v2, v0

    .line 342
    const/4 v1, 0x0

    .line 343
    move-object/from16 v0, p0

    .line 344
    .line 345
    goto/16 :goto_4

    .line 346
    .line 347
    :cond_8
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 349
    .line 350
    :goto_8
    return-void

    .line 351
    :goto_9
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 353
    .line 354
    throw v0

    .line 355
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 356
    .line 357
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, [I

    .line 360
    .line 361
    move-object/from16 v2, p1

    .line 362
    .line 363
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_a

    .line 377
    .line 378
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 383
    .line 384
    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 385
    .line 386
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 387
    .line 388
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-interface {v5, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    if-nez v5, :cond_9

    .line 397
    .line 398
    const-string v0, "PermissionManager"

    .line 399
    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v2, "Missing shared user Api for "

    .line 403
    .line 404
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_9
    iget-object v4, v5, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    :goto_a
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 426
    .line 427
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 428
    .line 429
    monitor-enter v5

    .line 430
    :try_start_4
    array-length v6, v0

    .line 431
    const/4 v7, 0x0

    .line 432
    :goto_b
    if-ge v7, v6, :cond_b

    .line 433
    .line 434
    aget v8, v0, v7

    .line 435
    .line 436
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 437
    .line 438
    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    .line 447
    .line 448
    .line 449
    move-result v11

    .line 450
    invoke-virtual {v9, v10, v11}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    const/4 v10, 0x0

    .line 458
    iput-boolean v10, v9, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 459
    .line 460
    const/4 v11, 0x0

    .line 461
    iput-object v11, v9, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 462
    .line 463
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-static {v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 470
    .line 471
    .line 472
    iget-object v11, v4, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 473
    .line 474
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 475
    .line 476
    .line 477
    move-result v11

    .line 478
    iput-boolean v11, v9, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 479
    .line 480
    invoke-virtual {v4, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    invoke-virtual {v1, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    .line 485
    .line 486
    .line 487
    const/4 v8, 0x1

    .line 488
    add-int/2addr v7, v8

    .line 489
    goto :goto_b

    .line 490
    :catchall_2
    move-exception v0

    .line 491
    goto :goto_d

    .line 492
    :cond_b
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 493
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 494
    .line 495
    :goto_c
    return-void

    .line 496
    :goto_d
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 497
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 498
    .line 499
    throw v0

    .line 500
    nop

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
