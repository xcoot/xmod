.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/util/function/Predicate;

    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :pswitch_0
    move-object v1, v0

    .line 24
    check-cast v1, Landroid/content/IntentSender;

    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 29
    .line 30
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 31
    .line 32
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 37
    goto/16 :goto_20

    .line 38
    .line 39
    :cond_1
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4

    .line 42
    :try_start_0
    iget-boolean v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    monitor-exit v4

    .line 48
    move-object/from16 v19, v1

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    goto/16 :goto_1a

    .line 52
    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_21

    .line 55
    .line 56
    :cond_2
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-boolean v9, v2, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 80
    .line 81
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 83
    .line 84
    iget v10, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 85
    .line 86
    and-int/lit16 v10, v10, 0x400

    .line 87
    .line 88
    if-nez v10, :cond_6

    .line 89
    .line 90
    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 91
    .line 92
    if-ne v4, v7, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/4 v4, 0x0

    .line 96
    goto :goto_3

    .line 97
    :cond_6
    :goto_2
    move v4, v7

    .line 98
    :goto_3
    iget-object v10, v2, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const-string v11, "android.permission.INSTALL_PACKAGES"

    .line 105
    .line 106
    iget v12, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 107
    .line 108
    invoke-interface {v10, v11, v12}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-nez v11, :cond_7

    .line 113
    .line 114
    move v11, v7

    .line 115
    goto :goto_4

    .line 116
    :cond_7
    const/4 v11, 0x0

    .line 117
    :goto_4
    const-string v12, "android.permission.INSTALL_SELF_UPDATES"

    .line 118
    .line 119
    iget v13, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 120
    .line 121
    invoke-interface {v10, v12, v13}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-nez v12, :cond_8

    .line 126
    .line 127
    move v12, v7

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    const/4 v12, 0x0

    .line 130
    :goto_5
    const-string v13, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 131
    .line 132
    iget v14, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 133
    .line 134
    invoke-interface {v10, v13, v14}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-nez v13, :cond_9

    .line 139
    .line 140
    move v13, v7

    .line 141
    goto :goto_6

    .line 142
    :cond_9
    const/4 v13, 0x0

    .line 143
    :goto_6
    const-string v14, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    .line 144
    .line 145
    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 146
    .line 147
    invoke-interface {v10, v14, v15}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-nez v14, :cond_a

    .line 152
    .line 153
    move v14, v7

    .line 154
    goto :goto_7

    .line 155
    :cond_a
    const/4 v14, 0x0

    .line 156
    :goto_7
    const-string v15, "android.permission.INSTALL_DPC_PACKAGES"

    .line 157
    .line 158
    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 159
    .line 160
    invoke-interface {v10, v15, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_b

    .line 165
    .line 166
    move v3, v7

    .line 167
    goto :goto_8

    .line 168
    :cond_b
    const/4 v3, 0x0

    .line 169
    :goto_8
    const-wide v5, 0x100000000L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 175
    .line 176
    invoke-interface {v10, v0, v5, v6, v8}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    const/4 v6, -0x1

    .line 181
    if-ne v5, v6, :cond_d

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_c

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_c
    const/4 v6, 0x0

    .line 191
    goto :goto_a

    .line 192
    :cond_d
    :goto_9
    move v6, v7

    .line 193
    :goto_a
    if-eqz v6, :cond_e

    .line 194
    .line 195
    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 196
    .line 197
    invoke-interface {v10, v0, v8}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    goto :goto_b

    .line 202
    :cond_e
    const/4 v8, 0x0

    .line 203
    :goto_b
    if-eqz v8, :cond_f

    .line 204
    .line 205
    invoke-virtual {v8}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    move-object/from16 v15, v16

    .line 210
    .line 211
    goto :goto_c

    .line 212
    :cond_f
    const/4 v15, 0x0

    .line 213
    :goto_c
    if-eqz v8, :cond_10

    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/content/pm/InstallSourceInfo;->getUpdateOwnerPackageName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    goto :goto_d

    .line 220
    :cond_10
    const/4 v8, 0x0

    .line 221
    :goto_d
    if-eqz v6, :cond_11

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_11

    .line 234
    .line 235
    const/4 v7, 0x1

    .line 236
    goto :goto_e

    .line 237
    :cond_11
    const/4 v7, 0x0

    .line 238
    :goto_e
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    iget-object v15, v15, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v17

    .line 248
    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 249
    .line 250
    if-ne v5, v15, :cond_12

    .line 251
    .line 252
    const/4 v5, 0x1

    .line 253
    goto :goto_f

    .line 254
    :cond_12
    const/4 v5, 0x0

    .line 255
    :goto_f
    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 256
    .line 257
    move/from16 v18, v4

    .line 258
    .line 259
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 260
    .line 261
    invoke-static {v15, v4, v10, v0}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v11, :cond_16

    .line 266
    .line 267
    if-eqz v13, :cond_13

    .line 268
    .line 269
    if-nez v6, :cond_16

    .line 270
    .line 271
    :cond_13
    if-eqz v12, :cond_14

    .line 272
    .line 273
    if-nez v5, :cond_16

    .line 274
    .line 275
    :cond_14
    if-eqz v3, :cond_15

    .line 276
    .line 277
    if-eqz v9, :cond_15

    .line 278
    .line 279
    goto :goto_10

    .line 280
    :cond_15
    const/4 v3, 0x0

    .line 281
    goto :goto_11

    .line 282
    :cond_16
    :goto_10
    const/4 v3, 0x1

    .line 283
    :goto_11
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 284
    .line 285
    if-nez v4, :cond_17

    .line 286
    .line 287
    const/4 v4, 0x1

    .line 288
    goto :goto_12

    .line 289
    :cond_17
    const/4 v4, 0x0

    .line 290
    :goto_12
    iget v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 291
    .line 292
    const/16 v9, 0x3e8

    .line 293
    .line 294
    if-ne v6, v9, :cond_18

    .line 295
    .line 296
    const/4 v6, 0x1

    .line 297
    goto :goto_13

    .line 298
    :cond_18
    const/4 v6, 0x0

    .line 299
    :goto_13
    iget v9, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 300
    .line 301
    const/16 v11, 0x7d0

    .line 302
    .line 303
    if-ne v9, v11, :cond_19

    .line 304
    .line 305
    const/4 v9, 0x1

    .line 306
    goto :goto_14

    .line 307
    :cond_19
    const/4 v9, 0x0

    .line 308
    :goto_14
    iget-object v11, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 309
    .line 310
    iget v11, v11, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 311
    .line 312
    const/high16 v12, 0x4000000

    .line 313
    .line 314
    and-int/2addr v11, v12

    .line 315
    if-eqz v11, :cond_1a

    .line 316
    .line 317
    const/4 v11, 0x1

    .line 318
    goto :goto_15

    .line 319
    :cond_1a
    const/4 v11, 0x0

    .line 320
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 321
    .line 322
    .line 323
    move-result-wide v12

    .line 324
    :try_start_1
    const-string/jumbo v15, "package_manager_service"

    .line 325
    .line 326
    .line 327
    move-object/from16 v19, v1

    .line 328
    .line 329
    const-string v1, "is_update_ownership_enforcement_available"

    .line 330
    .line 331
    move/from16 v20, v5

    .line 332
    .line 333
    const/4 v5, 0x1

    .line 334
    invoke-static {v15, v1, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 335
    .line 336
    .line 337
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 338
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    .line 340
    .line 341
    if-eqz v1, :cond_1b

    .line 342
    .line 343
    if-eqz v8, :cond_1b

    .line 344
    .line 345
    const/4 v1, 0x1

    .line 346
    goto :goto_16

    .line 347
    :cond_1b
    const/4 v1, 0x0

    .line 348
    :goto_16
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 349
    .line 350
    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 351
    .line 352
    const/high16 v8, 0x40000000    # 2.0f

    .line 353
    .line 354
    and-int/2addr v5, v8

    .line 355
    if-eqz v5, :cond_1c

    .line 356
    .line 357
    const/4 v5, 0x1

    .line 358
    goto :goto_17

    .line 359
    :cond_1c
    const/4 v5, 0x0

    .line 360
    :goto_17
    if-nez v4, :cond_1f

    .line 361
    .line 362
    if-nez v6, :cond_1f

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-nez v4, :cond_1f

    .line 369
    .line 370
    if-nez v0, :cond_1f

    .line 371
    .line 372
    if-eqz v5, :cond_1d

    .line 373
    .line 374
    goto :goto_18

    .line 375
    :cond_1d
    if-eqz v1, :cond_1e

    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_1e

    .line 382
    .line 383
    if-nez v17, :cond_1e

    .line 384
    .line 385
    if-nez v9, :cond_1e

    .line 386
    .line 387
    if-nez v11, :cond_1e

    .line 388
    .line 389
    const/4 v4, 0x3

    .line 390
    goto :goto_1a

    .line 391
    :cond_1e
    if-eqz v3, :cond_20

    .line 392
    .line 393
    :cond_1f
    :goto_18
    move/from16 v4, v18

    .line 394
    .line 395
    goto :goto_1a

    .line 396
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 401
    .line 402
    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 403
    .line 404
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 405
    .line 406
    invoke-interface {v10, v3, v4, v0}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(IILjava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_22

    .line 411
    .line 412
    :cond_21
    const/4 v4, 0x1

    .line 413
    goto :goto_1a

    .line 414
    :cond_22
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 415
    .line 416
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 417
    .line 418
    const/4 v3, 0x2

    .line 419
    if-ne v0, v3, :cond_21

    .line 420
    .line 421
    if-eqz v14, :cond_21

    .line 422
    .line 423
    if-eqz v1, :cond_23

    .line 424
    .line 425
    if-eqz v17, :cond_24

    .line 426
    .line 427
    goto :goto_19

    .line 428
    :cond_23
    if-nez v7, :cond_25

    .line 429
    .line 430
    :cond_24
    if-eqz v20, :cond_21

    .line 431
    .line 432
    :cond_25
    :goto_19
    const/4 v4, 0x2

    .line 433
    :goto_1a
    iget-object v1, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 434
    .line 435
    monitor-enter v1

    .line 436
    :try_start_2
    iput v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    .line 437
    .line 438
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 439
    const/4 v1, 0x1

    .line 440
    if-eq v4, v1, :cond_2d

    .line 441
    .line 442
    const/4 v0, 0x3

    .line 443
    if-ne v4, v0, :cond_26

    .line 444
    .line 445
    move-object/from16 v1, v19

    .line 446
    .line 447
    const/4 v7, 0x1

    .line 448
    goto/16 :goto_1f

    .line 449
    .line 450
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    .line 456
    const/4 v0, 0x2

    .line 457
    if-ne v4, v0, :cond_0

    .line 458
    .line 459
    iget-object v1, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 460
    .line 461
    monitor-enter v1

    .line 462
    :try_start_3
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 463
    .line 464
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 465
    .line 466
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 467
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    .line 468
    .line 469
    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 470
    .line 471
    .line 472
    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 473
    .line 474
    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 475
    .line 476
    const-string/jumbo v3, "platform_compat"

    .line 477
    .line 478
    .line 479
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-static {v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    const v4, 0x7fffffff

    .line 488
    .line 489
    .line 490
    if-eq v0, v4, :cond_2c

    .line 491
    .line 492
    const-wide/32 v4, 0x136ca906

    .line 493
    .line 494
    .line 495
    :try_start_4
    invoke-interface {v3, v4, v5, v1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    .line 496
    .line 497
    .line 498
    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 499
    if-eqz v0, :cond_2c

    .line 500
    .line 501
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 502
    .line 503
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 504
    .line 505
    const/4 v1, 0x2

    .line 506
    if-ne v0, v1, :cond_0

    .line 507
    .line 508
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 509
    .line 510
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-nez v0, :cond_27

    .line 525
    .line 526
    move-object/from16 v1, v19

    .line 527
    .line 528
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 529
    .line 530
    .line 531
    const/4 v3, 0x1

    .line 532
    goto/16 :goto_20

    .line 533
    .line 534
    :cond_27
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 535
    .line 536
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    if-nez v1, :cond_28

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :cond_28
    iget-object v3, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 554
    .line 555
    monitor-enter v3

    .line 556
    :try_start_5
    iget-object v4, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

    .line 557
    .line 558
    if-eqz v4, :cond_29

    .line 559
    .line 560
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    if-eqz v4, :cond_29

    .line 565
    .line 566
    monitor-exit v3

    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :catchall_1
    move-exception v0

    .line 570
    goto :goto_1c

    .line 571
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 572
    .line 573
    .line 574
    move-result-wide v4

    .line 575
    iget-object v6, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 576
    .line 577
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    const/4 v7, 0x1

    .line 582
    sub-int/2addr v6, v7

    .line 583
    :goto_1b
    if-ltz v6, :cond_2b

    .line 584
    .line 585
    iget-object v7, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 586
    .line 587
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    check-cast v7, Ljava/lang/Long;

    .line 592
    .line 593
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 594
    .line 595
    .line 596
    move-result-wide v7

    .line 597
    sub-long v7, v4, v7

    .line 598
    .line 599
    iget-wide v9, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 600
    .line 601
    cmp-long v7, v7, v9

    .line 602
    .line 603
    if-lez v7, :cond_2a

    .line 604
    .line 605
    iget-object v7, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 606
    .line 607
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    :cond_2a
    add-int/lit8 v6, v6, -0x1

    .line 611
    .line 612
    goto :goto_1b

    .line 613
    :cond_2b
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    iget-object v0, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 618
    .line 619
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    monitor-exit v3

    .line 627
    goto/16 :goto_0

    .line 628
    .line 629
    :goto_1c
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 630
    throw v0

    .line 631
    :cond_2c
    move-object/from16 v1, v19

    .line 632
    .line 633
    const/4 v7, 0x1

    .line 634
    goto :goto_1d

    .line 635
    :catch_0
    move-exception v0

    .line 636
    move-object/from16 v1, v19

    .line 637
    .line 638
    const/4 v7, 0x1

    .line 639
    move-object v3, v0

    .line 640
    const-string v0, "PackageInstallerSession"

    .line 641
    .line 642
    const-string v4, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    .line 643
    .line 644
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .line 646
    .line 647
    :goto_1d
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 648
    .line 649
    .line 650
    :goto_1e
    move v3, v7

    .line 651
    goto :goto_20

    .line 652
    :catchall_2
    move-exception v0

    .line 653
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 654
    throw v0

    .line 655
    :cond_2d
    move v7, v1

    .line 656
    move-object/from16 v1, v19

    .line 657
    .line 658
    :goto_1f
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 659
    .line 660
    .line 661
    goto :goto_1e

    .line 662
    :goto_20
    return v3

    .line 663
    :catchall_3
    move-exception v0

    .line 664
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 665
    throw v0

    .line 666
    :catchall_4
    move-exception v0

    .line 667
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    .line 669
    .line 670
    throw v0

    .line 671
    :goto_21
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 672
    throw v0

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
