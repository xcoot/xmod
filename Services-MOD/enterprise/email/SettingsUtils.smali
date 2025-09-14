.class public abstract Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static adminPkg:Ljava/lang/String;

.field public static emails:Landroid/content/Context;

.field public static final mServerPassword:Ljava/util/Map;

.field public static final mServerPasswordFocus:Ljava/util/Map;

.field public static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.android.email.provider/account"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    const-string/jumbo v0, "content://com.android.email.provider/hostauth"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    const-string/jumbo v0, "content://com.android.email.provider/policies"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 22
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    .line 25
    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static createIDforAccount()J
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v2, v0, v2

    .line 9
    if-ltz v2, :cond_0

    .line 11
    const-wide/16 v2, 0x1

    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-wide/16 v2, -0x1

    .line 16
    mul-long/2addr v0, v2

    .line 17
    :cond_0
    const-string v2, "SettingsUtils"

    .line 19
    const-string v3, ">>>>  createIDforAccount   <<<<"

    .line 21
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-wide v0
.end method

.method public static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 44

    .line 1
    move-wide/from16 v0, p3

    .line 3
    move-object/from16 v2, p5

    .line 5
    move-object/from16 v3, p6

    .line 7
    const-string/jumbo v4, "value"

    .line 10
    const-string/jumbo v5, "name"

    .line 13
    const-string v6, "_id"

    .line 15
    const-string v7, "account_id = "

    .line 17
    const-string/jumbo v8, "getAccount row count : "

    .line 20
    const-string v9, "_id = "

    .line 22
    const-string/jumbo v10, "getAccountDetails : USER space   "

    .line 25
    const-wide/16 v11, 0x0

    .line 27
    cmp-long v11, v0, v11

    .line 29
    const-string v12, "SettingsUtils"

    .line 31
    const/4 v13, 0x0

    .line 32
    if-gtz v11, :cond_0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v3, "getEASAccounts fail : invalid account Id"

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object v13

    .line 53
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 56
    move-result v11

    .line 57
    iget v14, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 59
    const-string/jumbo v14, "getEASAccounts() :    "

    .line 62
    invoke-static {v11, v14, v12}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v34, "signature"

    .line 68
    const-string/jumbo v35, "calendarSyncLookback"

    .line 71
    const-string v15, "_id"

    .line 73
    const-string/jumbo v16, "displayName"

    .line 76
    const-string/jumbo v17, "emailAddress"

    .line 79
    const-string/jumbo v18, "syncLookback"

    .line 82
    const-string/jumbo v19, "syncInterval"

    .line 85
    const-string/jumbo v20, "peakDays"

    .line 88
    const-string/jumbo v21, "peakStartMinute"

    .line 91
    const-string/jumbo v22, "peakEndMinute"

    .line 94
    const-string/jumbo v23, "peakSchedule"

    .line 97
    const-string/jumbo v24, "offPeakSchedule"

    .line 100
    const-string/jumbo v25, "roamingSchedule"

    .line 103
    const-string/jumbo v26, "hostAuthKeyRecv"

    .line 106
    const-string/jumbo v27, "hostAuthKeySend"

    .line 109
    const-string/jumbo v28, "flags"

    .line 112
    const-string/jumbo v29, "isDefault"

    .line 115
    const-string/jumbo v30, "compatibilityUuid"

    .line 118
    const-string/jumbo v31, "senderName"

    .line 121
    const-string/jumbo v32, "ringtoneUri"

    .line 124
    const-string/jumbo v33, "protocolVersion"

    .line 127
    const-string/jumbo v36, "emailsize"

    .line 130
    const-string/jumbo v37, "roamingemailsize"

    .line 133
    filled-new-array/range {v15 .. v37}, [Ljava/lang/String;

    .line 136
    move-result-object v40

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 140
    move-result-wide v14

    .line 141
    const/4 v13, 0x0

    .line 142
    if-eqz v11, :cond_2

    .line 144
    :try_start_0
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    .line 147
    move-result v17

    .line 148
    if-eqz v17, :cond_1

    .line 150
    const-string/jumbo v3, "com.samsung.android.email.provider"

    .line 153
    new-instance v10, Landroid/os/UserHandle;

    .line 155
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 158
    invoke-virtual {v2, v3, v13, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 161
    move-result-object v2

    .line 162
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 164
    const-string/jumbo v2, "getAccountDetails for Persona : USER space   com.samsung.android.email.provider"

    .line 167
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-wide/from16 v18, v14

    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    goto/16 :goto_b

    .line 176
    :cond_1
    iget v13, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 178
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 181
    move-result-object v13

    .line 182
    move-wide/from16 v18, v14

    .line 184
    new-instance v14, Landroid/os/UserHandle;

    .line 186
    invoke-direct {v14, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 189
    const/4 v11, 0x0

    .line 190
    invoke-virtual {v2, v13, v11, v14}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 193
    move-result-object v2

    .line 194
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 203
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    move-wide/from16 v18, v14

    .line 220
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 227
    move-result-object v38

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v41

    .line 240
    const/16 v42, 0x0

    .line 242
    const/16 v43, 0x0

    .line 244
    move-object/from16 v39, p1

    .line 246
    invoke-virtual/range {v38 .. v43}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 249
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 250
    if-eqz v2, :cond_3

    .line 252
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 260
    move-result v8

    .line 261
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v3

    .line 268
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto :goto_3

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    move-object v13, v2

    .line 274
    :goto_1
    const/16 v16, 0x0

    .line 276
    goto/16 :goto_a

    .line 278
    :catch_1
    move-exception v0

    .line 279
    move-object v13, v2

    .line 280
    const/4 v3, 0x0

    .line 281
    :goto_2
    const/16 v16, 0x0

    .line 283
    goto/16 :goto_8

    .line 285
    :cond_3
    const-string/jumbo v3, "getAccount row count : Email cursor is invalid"

    .line 288
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_3
    if-eqz v2, :cond_a

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 296
    move-result v3

    .line 297
    if-lez v3, :cond_a

    .line 299
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 302
    new-instance v3, Lcom/android/server/enterprise/email/AccountMetaData;

    .line 304
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :try_start_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 310
    move-result v8

    .line 311
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 314
    const-string/jumbo v8, "displayName"

    .line 317
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 320
    move-result v8

    .line 321
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 324
    const-string/jumbo v8, "emailAddress"

    .line 327
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 330
    move-result v8

    .line 331
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 334
    move-result-object v8

    .line 335
    iput-object v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 337
    const-string/jumbo v8, "syncLookback"

    .line 340
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 343
    move-result v8

    .line 344
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 347
    const-string/jumbo v8, "syncInterval"

    .line 350
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 353
    move-result v8

    .line 354
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 357
    const-string/jumbo v8, "peakDays"

    .line 360
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 363
    move-result v8

    .line 364
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 367
    const-string/jumbo v8, "peakStartMinute"

    .line 370
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 373
    move-result v8

    .line 374
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 377
    const-string/jumbo v8, "peakEndMinute"

    .line 380
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 383
    move-result v8

    .line 384
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 387
    const-string/jumbo v8, "peakSchedule"

    .line 390
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 393
    move-result v8

    .line 394
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 397
    const-string/jumbo v8, "offPeakSchedule"

    .line 400
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 403
    move-result v8

    .line 404
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 407
    const-string/jumbo v8, "roamingSchedule"

    .line 410
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 413
    move-result v8

    .line 414
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 417
    const-string/jumbo v8, "hostAuthKeyRecv"

    .line 420
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 423
    move-result v8

    .line 424
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 427
    move-result-wide v8

    .line 428
    iput-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 430
    const-string/jumbo v8, "hostAuthKeySend"

    .line 433
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 436
    move-result v8

    .line 437
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 440
    move-result-wide v8

    .line 441
    iput-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 443
    const-string/jumbo v8, "flags"

    .line 446
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 449
    move-result v8

    .line 450
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    const-string/jumbo v8, "isDefault"

    .line 456
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 459
    move-result v8

    .line 460
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 463
    const-string/jumbo v8, "compatibilityUuid"

    .line 466
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 469
    move-result v8

    .line 470
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 473
    const-string/jumbo v8, "senderName"

    .line 476
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 479
    move-result v8

    .line 480
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 483
    const-string/jumbo v8, "ringtoneUri"

    .line 486
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 489
    move-result v8

    .line 490
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 493
    const-string/jumbo v8, "protocolVersion"

    .line 496
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 499
    move-result v8

    .line 500
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 503
    const-string/jumbo v8, "signature"

    .line 506
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 509
    move-result v8

    .line 510
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 513
    const-string/jumbo v8, "calendarSyncLookback"

    .line 516
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 519
    move-result v8

    .line 520
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 523
    const-string/jumbo v8, "emailsize"

    .line 526
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 529
    move-result v8

    .line 530
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 533
    const-string/jumbo v8, "roamingemailsize"

    .line 536
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 539
    move-result v8

    .line 540
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 543
    iget-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 545
    sget-object v25, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 547
    const/16 v24, 0x1

    .line 549
    move-object/from16 v20, p0

    .line 551
    move-wide/from16 v21, v8

    .line 553
    move-object/from16 v23, v3

    .line 555
    invoke-static/range {v20 .. v25}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    .line 558
    move-result v8

    .line 559
    iget-wide v9, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 561
    sget-object v25, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 563
    const/16 v24, 0x0

    .line 565
    move-object/from16 v20, p0

    .line 567
    move-wide/from16 v21, v9

    .line 569
    move-object/from16 v23, v3

    .line 571
    invoke-static/range {v20 .. v25}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    .line 574
    move-result v9

    .line 575
    if-eqz v8, :cond_9

    .line 577
    if-nez v9, :cond_4

    .line 579
    goto/16 :goto_6

    .line 581
    :cond_4
    const/4 v8, 0x0

    .line 582
    iput-boolean v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 584
    iget-object v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 586
    const-string/jumbo v9, "eas"

    .line 589
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 592
    move-result v8

    .line 593
    if-eqz v8, :cond_5

    .line 595
    iget-object v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 597
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    .line 600
    move-result-object v8

    .line 601
    const/4 v9, 0x1

    .line 602
    iput-boolean v9, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 604
    aget-object v8, v8, v9

    .line 606
    iput-object v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 608
    goto :goto_4

    .line 609
    :catch_2
    move-exception v0

    .line 610
    move-object v13, v2

    .line 611
    goto/16 :goto_2

    .line 613
    :cond_5
    :goto_4
    const-string/jumbo v8, "type"

    .line 616
    const-string v9, "account_id"

    .line 618
    filled-new-array {v6, v5, v8, v4, v9}, [Ljava/lang/String;

    .line 621
    move-result-object v12

    .line 622
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 624
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 627
    move-result-object v10

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    .line 630
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    move-result-object v13

    .line 640
    const/4 v14, 0x0

    .line 641
    const/4 v15, 0x0

    .line 642
    move-object/from16 v11, p2

    .line 644
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 647
    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    if-eqz v13, :cond_8

    .line 650
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    .line 653
    move-result v0

    .line 654
    if-lez v0, :cond_8

    .line 656
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    move-result v0

    .line 660
    if-eqz v0, :cond_8

    .line 662
    :cond_6
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 665
    move-result v0

    .line 666
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 669
    move-result-object v0

    .line 670
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 673
    move-result v1

    .line 674
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 677
    move-result-object v1

    .line 678
    if-eqz v1, :cond_7

    .line 680
    if-eqz v0, :cond_7

    .line 682
    const-string v6, "AllowHTMLEmail"

    .line 684
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    move-result v1

    .line 688
    if-eqz v1, :cond_7

    .line 690
    const-string/jumbo v1, "true"

    .line 693
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 696
    goto :goto_5

    .line 697
    :catchall_1
    move-exception v0

    .line 698
    move-object/from16 v16, v13

    .line 700
    move-object v13, v2

    .line 701
    goto :goto_a

    .line 702
    :catch_3
    move-exception v0

    .line 703
    move-object/from16 v16, v13

    .line 705
    move-object v13, v2

    .line 706
    goto :goto_8

    .line 707
    :cond_7
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 710
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 711
    if-nez v0, :cond_6

    .line 713
    :cond_8
    move-object/from16 v16, v3

    .line 715
    goto :goto_7

    .line 716
    :cond_9
    :goto_6
    :try_start_5
    const-string/jumbo v0, "getAccountIds : null "

    .line 719
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 722
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 725
    const/4 v1, 0x0

    .line 726
    return-object v1

    .line 727
    :cond_a
    const/4 v13, 0x0

    .line 728
    const/16 v16, 0x0

    .line 730
    :goto_7
    if-eqz v2, :cond_b

    .line 732
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_b
    if-eqz v13, :cond_e

    .line 737
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 740
    goto :goto_9

    .line 741
    :catchall_2
    move-exception v0

    .line 742
    const/4 v13, 0x0

    .line 743
    goto/16 :goto_1

    .line 745
    :catch_4
    move-exception v0

    .line 746
    const/4 v3, 0x0

    .line 747
    const/4 v13, 0x0

    .line 748
    goto/16 :goto_2

    .line 750
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 753
    if-eqz v13, :cond_c

    .line 755
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 758
    :cond_c
    if-eqz v16, :cond_d

    .line 760
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_d
    move-object/from16 v16, v3

    .line 765
    :cond_e
    :goto_9
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 768
    return-object v16

    .line 769
    :catchall_3
    move-exception v0

    .line 770
    :goto_a
    if-eqz v13, :cond_f

    .line 772
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_f
    if-eqz v16, :cond_10

    .line 777
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_10
    throw v0

    .line 781
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    const/4 v1, 0x0

    .line 785
    return-object v1
.end method

.method public static declared-synchronized getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "content://com.samsung.android.email.provider/hostauth"

    .line 7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v2

    .line 11
    const-string/jumbo v1, "content://com.samsung.android.email.provider/account"

    .line 14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object v3

    .line 18
    const-string/jumbo v1, "content://com.samsung.android.email.provider/policies"

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object v4

    .line 25
    move-wide v5, p0

    .line 26
    move-object v7, p2

    .line 27
    move-object v8, p3

    .line 28
    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public static declared-synchronized getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    const-string v1, "SettingsUtils"

    .line 8
    const-string/jumbo v2, "getAccountDetails() :  with P"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string/jumbo v1, "content://com.samsung.android.email.provider/hostauth"

    .line 17
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v2

    .line 21
    const-string/jumbo v1, "content://com.samsung.android.email.provider/account"

    .line 24
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object v3

    .line 28
    const-string/jumbo v1, "content://com.samsung.android.email.provider/policies"

    .line 31
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v4

    .line 35
    move-wide v5, p0

    .line 36
    move-object v7, p2

    .line 37
    move-object v8, p3

    .line 38
    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0

    .line 46
    throw p0
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "getAccountFromEnterpriseEmailAccount() : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SettingsUtils"

    .line 18
    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    .line 23
    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 26
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 28
    long-to-int v1, v1

    .line 29
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 31
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    .line 33
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    .line 37
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 39
    const-string v1, "0"

    .line 41
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 43
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    .line 45
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 47
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    .line 49
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 51
    const-wide/16 v1, -0x1

    .line 53
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 55
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 57
    const/4 v3, -0x1

    .line 58
    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 60
    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 62
    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 64
    const/4 v4, 0x0

    .line 65
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 69
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 71
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 73
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 75
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 77
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 79
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 81
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 83
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 85
    const/4 v5, 0x0

    .line 86
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 88
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    .line 90
    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    .line 93
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 95
    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 97
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 99
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 101
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 103
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 105
    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 107
    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 109
    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 111
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    .line 113
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 115
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 117
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 119
    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 121
    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 123
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 125
    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 127
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    .line 129
    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 131
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 133
    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 135
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    .line 137
    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    .line 140
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 142
    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 144
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    .line 146
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 148
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 150
    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 152
    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 154
    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 156
    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 158
    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    .line 160
    iput-object v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 164
    iput-object v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 166
    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 168
    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 170
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 172
    iput-boolean v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 174
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    .line 176
    iput-boolean v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 178
    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 180
    iput-boolean p0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 182
    return-object v0
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "getAccountFromEnterpriseExchangeAccount() : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SettingsUtils"

    .line 18
    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    .line 23
    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 26
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    .line 28
    long-to-int v1, v1

    .line 29
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 31
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 33
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 37
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 39
    const-string v1, "0"

    .line 41
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 43
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 45
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 47
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    .line 49
    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 51
    const-wide/16 v1, -0x1

    .line 53
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 55
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 57
    const/4 v3, -0x1

    .line 58
    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 60
    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 62
    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 64
    const/4 v4, 0x0

    .line 65
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    .line 69
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 71
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    .line 75
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 77
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 79
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 81
    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 83
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 85
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 87
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 89
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 91
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 93
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 95
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 97
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 99
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 101
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 103
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 105
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 107
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 109
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 111
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    .line 113
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 115
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    .line 117
    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 119
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 121
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    .line 123
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 125
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    .line 127
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 129
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    .line 131
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 133
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 135
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 137
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 139
    const/4 v5, 0x0

    .line 140
    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 142
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    .line 144
    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    .line 147
    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 149
    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 151
    const-string/jumbo v7, "eas"

    .line 154
    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 156
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 158
    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 160
    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 162
    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 164
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    .line 166
    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 168
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 170
    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 172
    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 174
    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 176
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 178
    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 180
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    .line 182
    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 184
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 186
    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 188
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    .line 190
    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    .line 193
    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 195
    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 197
    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 199
    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 201
    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 203
    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 205
    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 207
    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    .line 209
    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 211
    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 213
    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 215
    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 217
    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 219
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 221
    iput-boolean v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 223
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    .line 225
    iput-boolean v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 227
    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 229
    iput-boolean p0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 231
    return-object v0
.end method

.method public static declared-synchronized getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 11

    .line 1
    const-string/jumbo v0, "getAccountId : USER space    UserHandle.myUserId() "

    .line 4
    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    .line 6
    monitor-enter v1

    .line 7
    move-object v10, p0

    .line 8
    :try_start_0
    iget v2, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 10
    const-string/jumbo v2, "content://com.samsung.android.email.provider/hostauth"

    .line 13
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v2

    .line 17
    const-string/jumbo v3, "content://com.samsung.android.email.provider/account"

    .line 20
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "SettingsUtils"

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    move-object v4, p1

    .line 46
    move-object v5, p2

    .line 47
    move-object v6, p3

    .line 48
    move-object v7, p4

    .line 49
    move/from16 v8, p5

    .line 51
    move-object/from16 v9, p6

    .line 53
    move-object v10, p0

    .line 54
    invoke-static/range {v2 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J

    .line 57
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v1

    .line 59
    return-wide v2

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit v1

    .line 62
    throw v0
.end method

.method public static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J
    .locals 17

    .line 1
    move-object/from16 v0, p7

    .line 3
    move-object/from16 v1, p8

    .line 5
    const-string v2, " getAccountIdInternal : ACCOUNT "

    .line 7
    const-string/jumbo v3, "getAccountId for ACCOUNT row count : "

    .line 10
    const-string v4, " getAccountIdInternal : hostAuthId "

    .line 12
    const-string/jumbo v5, "getAccountId for HOST_AUTH row count : "

    .line 15
    const-string/jumbo v6, "getAccountIdInternal : USER space   "

    .line 18
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v7

    .line 22
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v8

    .line 26
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v9

    .line 30
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v10

    .line 34
    const-string v11, "SettingsUtils"

    .line 36
    if-eqz v8, :cond_0

    .line 38
    if-eqz v9, :cond_0

    .line 40
    if-nez v10, :cond_1

    .line 42
    :cond_0
    const-wide/16 v1, -0x1

    .line 44
    goto/16 :goto_d

    .line 46
    :cond_1
    if-eqz p6, :cond_2

    .line 48
    if-eqz v7, :cond_2

    .line 50
    const-string v14, "\\"

    .line 52
    invoke-static {v7, v14, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v8

    .line 56
    :cond_2
    const-string v7, "_id"

    .line 58
    filled-new-array {v7}, [Ljava/lang/String;

    .line 61
    move-result-object v14

    .line 62
    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    .line 65
    move-result-object v8

    .line 66
    iget v9, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 68
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 71
    move-result v9

    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    move-result-wide v15

    .line 76
    if-eqz v9, :cond_4

    .line 78
    :try_start_0
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    .line 81
    move-result v10

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v10, :cond_3

    .line 85
    const-string/jumbo v1, "com.samsung.android.email.provider"

    .line 88
    new-instance v6, Landroid/os/UserHandle;

    .line 90
    invoke-direct {v6, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 93
    invoke-virtual {v0, v1, v12, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 99
    const-string/jumbo v0, "getAccountIdInternal : USER space   com.samsung.android.email.provider"

    .line 102
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto/16 :goto_c

    .line 109
    :cond_3
    iget v10, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 114
    move-result-object v10

    .line 115
    new-instance v13, Landroid/os/UserHandle;

    .line 117
    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 120
    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 133
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_0

    .line 148
    :cond_4
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const/4 v1, 0x0

    .line 151
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    move-result-object v0

    .line 157
    const-string/jumbo v6, "protocol=? AND address=? AND login=? "

    .line 160
    const/4 v9, 0x0

    .line 161
    move-object/from16 p2, v0

    .line 163
    move-object/from16 p3, p0

    .line 165
    move-object/from16 p4, v14

    .line 167
    move-object/from16 p5, v6

    .line 169
    move-object/from16 p6, v8

    .line 171
    move-object/from16 p7, v9

    .line 173
    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 185
    move-result v5

    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 202
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 205
    move-result v0

    .line 206
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 209
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    int-to-long v8, v0

    .line 211
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v11, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    goto :goto_2

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    move-object v1, v6

    .line 229
    goto/16 :goto_b

    .line 231
    :catch_1
    move-exception v0

    .line 232
    goto :goto_3

    .line 233
    :catch_2
    move-exception v0

    .line 234
    :goto_1
    const-wide/16 v8, -0x1

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    const-wide/16 v8, -0x1

    .line 239
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_6
    const-wide/16 v4, -0x1

    .line 244
    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    goto/16 :goto_b

    .line 248
    :catch_3
    move-exception v0

    .line 249
    move-object v6, v1

    .line 250
    goto :goto_1

    .line 251
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    if-eqz v6, :cond_6

    .line 256
    goto :goto_2

    .line 257
    :goto_4
    cmp-long v0, v4, v8

    .line 259
    if-eqz v0, :cond_a

    .line 261
    filled-new-array {v7}, [Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 268
    move-result-object v4

    .line 269
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 276
    move-result-object v4

    .line 277
    :try_start_5
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 279
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 282
    move-result-object v5

    .line 283
    const-string/jumbo v6, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    .line 286
    const/4 v8, 0x0

    .line 287
    move-object/from16 p2, v5

    .line 289
    move-object/from16 p3, p1

    .line 291
    move-object/from16 p4, v0

    .line 293
    move-object/from16 p5, v6

    .line 295
    move-object/from16 p6, v4

    .line 297
    move-object/from16 p7, v8

    .line 299
    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_7

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 313
    move-result v3

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 321
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    goto :goto_5

    .line 325
    :catchall_2
    move-exception v0

    .line 326
    goto :goto_9

    .line 327
    :catch_4
    move-exception v0

    .line 328
    const-wide/16 v12, -0x1

    .line 330
    goto :goto_8

    .line 331
    :cond_7
    const-string/jumbo v0, "getAccountId for ACCOUNT row count : Email cursor is invalid"

    .line 334
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_5
    if-eqz v1, :cond_8

    .line 339
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_8

    .line 345
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 348
    move-result v0

    .line 349
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 352
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 353
    int-to-long v12, v0

    .line 354
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v0

    .line 366
    invoke-static {v11, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 369
    goto :goto_6

    .line 370
    :catch_5
    move-exception v0

    .line 371
    goto :goto_8

    .line 372
    :cond_8
    const-wide/16 v12, -0x1

    .line 374
    :goto_6
    if-eqz v1, :cond_b

    .line 376
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    goto :goto_a

    .line 380
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 383
    if-eqz v1, :cond_b

    .line 385
    goto :goto_7

    .line 386
    :goto_9
    if-eqz v1, :cond_9

    .line 388
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_9
    throw v0

    .line 392
    :cond_a
    const-wide/16 v12, -0x1

    .line 394
    :cond_b
    :goto_a
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    return-wide v12

    .line 398
    :goto_b
    if-eqz v1, :cond_c

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_c
    throw v0

    .line 404
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    const-wide/16 v1, -0x1

    .line 409
    return-wide v1

    .line 410
    :goto_d
    const-string/jumbo v0, "getAccountId : Error :: Invalid input parameters."

    .line 413
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-wide v1
.end method

.method public static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    aput-object v3, v1, v2

    .line 8
    const/4 v4, 0x1

    .line 9
    aput-object v3, v1, v4

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 17
    const-string v3, "\\"

    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 25
    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    array-length v3, p0

    .line 36
    if-lez v3, :cond_2

    .line 38
    array-length v3, p0

    .line 39
    if-ne v0, v3, :cond_0

    .line 41
    aget-object v0, p0, v2

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    aput-object v0, v1, v2

    .line 49
    aget-object p0, p0, v4

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    aput-object p0, v1, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    array-length v0, p0

    .line 59
    if-ne v4, v0, :cond_2

    .line 61
    aget-object p0, p0, v2

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    aput-object p0, v1, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    aput-object p0, v1, v4

    .line 72
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/accounts/LDAPAccount;

    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>()V

    .line 10
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    .line 12
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    .line 14
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    .line 22
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    .line 24
    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    .line 26
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    .line 28
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 30
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    .line 32
    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 34
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    .line 36
    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    .line 38
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    .line 40
    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 42
    iget p0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    .line 44
    iput p0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 46
    return-object v0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "getPackageNameForUid :   "

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 15
    const-string v1, "SettingsUtils"

    .line 17
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string/jumbo p0, "com.samsung.android.email.provider"

    .line 26
    return-object p0
.end method

.method public static declared-synchronized getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    const-string/jumbo v2, "getAccount row count : "

    .line 8
    const-string v3, "_id = "

    .line 10
    const-string/jumbo v4, "getSMIMEAlias : USER space   "

    .line 13
    const-class v5, Lcom/android/server/enterprise/email/SettingsUtils;

    .line 15
    monitor-enter v5

    .line 16
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 19
    move-result v6

    .line 20
    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v7

    .line 26
    const-string v9, "_id"

    .line 28
    if-eqz p4, :cond_0

    .line 30
    const-string/jumbo v10, "smimeOwnSignCertAlias"

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_7

    .line 37
    :cond_0
    const-string/jumbo v10, "smimeOwnCertificateAlias"

    .line 40
    :goto_0
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 43
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v6, :cond_2

    .line 47
    :try_start_1
    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    .line 50
    move-result v10

    .line 51
    const/4 v11, 0x0

    .line 52
    if-eqz v10, :cond_1

    .line 54
    const-string/jumbo v0, "com.samsung.android.email.provider"

    .line 57
    new-instance v4, Landroid/os/UserHandle;

    .line 59
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 62
    invoke-virtual {v1, v0, v11, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 68
    const-string v0, "SettingsUtils"

    .line 70
    const-string/jumbo v1, "getSMIMEAlias : USER space   com.samsung.android.email.provider"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto/16 :goto_6

    .line 80
    :catch_0
    move-exception v0

    .line 81
    move-object v1, v9

    .line 82
    goto/16 :goto_4

    .line 84
    :cond_1
    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 86
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 89
    move-result-object v10

    .line 90
    new-instance v12, Landroid/os/UserHandle;

    .line 92
    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 95
    invoke-virtual {v1, v10, v11, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 98
    move-result-object v1

    .line 99
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 101
    const-string v1, "SettingsUtils"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 110
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 127
    const-string v0, "SettingsUtils"

    .line 129
    const-string/jumbo v1, "getSMIMEAlias : get Context with no MUM Enviroment."

    .line 132
    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    move-result-object v11

    .line 141
    const-string/jumbo v0, "content://com.samsung.android.email.provider/account"

    .line 144
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 147
    move-result-object v12

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    move-wide/from16 v3, p1

    .line 155
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v14

    .line 162
    const/4 v15, 0x0

    .line 163
    const/16 v16, 0x0

    .line 165
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 168
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    if-eqz v1, :cond_4

    .line 171
    :try_start_2
    const-string v0, "SettingsUtils"

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 181
    move-result v2

    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 195
    move-result v0

    .line 196
    if-lez v0, :cond_4

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    if-eqz p4, :cond_3

    .line 203
    const-string/jumbo v0, "smimeOwnSignCertAlias"

    .line 206
    goto :goto_2

    .line 207
    :catchall_2
    move-exception v0

    .line 208
    move-object v9, v1

    .line 209
    goto :goto_6

    .line 210
    :catch_1
    move-exception v0

    .line 211
    goto :goto_4

    .line 212
    :cond_3
    const-string/jumbo v0, "smimeOwnCertificateAlias"

    .line 215
    :goto_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 218
    move-result v0

    .line 219
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    :cond_4
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    if-eqz v1, :cond_5

    .line 228
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    goto :goto_5

    .line 232
    :goto_4
    :try_start_4
    const-string v2, "SettingsUtils"

    .line 234
    const-string/jumbo v3, "getSMIMEAlias() : failed. "

    .line 237
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    if-eqz v1, :cond_5

    .line 245
    goto :goto_3

    .line 246
    :cond_5
    :goto_5
    monitor-exit v5

    .line 247
    return-object v9

    .line 248
    :goto_6
    :try_start_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    if-eqz v9, :cond_6

    .line 253
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    :goto_7
    monitor-exit v5

    .line 258
    throw v0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "SettingsUtils"

    .line 20
    const-string/jumbo v0, "getSecurityPassword() failed"

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    return-object v1
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-lez v1, :cond_1

    .line 15
    move-object v0, p0

    .line 16
    :cond_1
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    return-object v0
.end method

.method public static isPackageInstalled(ILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const-wide/16 v4, 0x0

    .line 14
    :try_start_0
    invoke-interface {v0, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    const-string p1, "SettingsUtils"

    .line 34
    const-string v0, "Exception in isPackageInstalled()"

    .line 36
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    goto :goto_1

    .line 43
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_1
    return v3
.end method

.method public static isPersona(I)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 5
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 13
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x40

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 21
    move-result v2

    .line 22
    add-int/lit8 v4, v2, 0x1

    .line 24
    const/16 v5, 0x2e

    .line 26
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    .line 29
    move-result v6

    .line 30
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-lez v3, :cond_0

    .line 36
    if-ne v3, v2, :cond_0

    .line 38
    if-ge v4, v6, :cond_0

    .line 40
    if-gt v6, p0, :cond_0

    .line 42
    const/4 v2, 0x1

    .line 43
    sub-int/2addr v1, v2

    .line 44
    if-ge p0, v1, :cond_0

    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_0
    :goto_0
    return v0
.end method

.method public static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p3

    .line 3
    const-string/jumbo v1, "loadHostAuth row count : "

    .line 6
    const-string v2, "_id = "

    .line 8
    const-string/jumbo v7, "flags"

    .line 11
    const-string/jumbo v8, "login"

    .line 14
    const-string v3, "_id"

    .line 16
    const-string/jumbo v4, "protocol"

    .line 19
    const-string v5, "address"

    .line 21
    const-string/jumbo v6, "port"

    .line 24
    const-string/jumbo v9, "password"

    .line 27
    const-string/jumbo v10, "domain"

    .line 30
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 33
    move-result-object v13

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v11

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    move-wide/from16 v6, p1

    .line 47
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v14

    .line 54
    const/4 v15, 0x0

    .line 55
    const/16 v16, 0x0

    .line 57
    move-object/from16 v12, p0

    .line 59
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v2, "SettingsUtils"

    .line 65
    if-eqz v4, :cond_1

    .line 67
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 89
    move-result v1

    .line 90
    if-lez v1, :cond_2

    .line 92
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const-string/jumbo v1, "domain"

    .line 98
    const-string/jumbo v2, "password"

    .line 101
    const-string/jumbo v5, "login"

    .line 104
    const-string/jumbo v6, "flags"

    .line 107
    const-string/jumbo v7, "port"

    .line 110
    const-string v8, "address"

    .line 112
    const-string/jumbo v9, "protocol"

    .line 115
    if-eqz p4, :cond_0

    .line 117
    :try_start_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    move-result v9

    .line 121
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object v9

    .line 125
    iput-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 127
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 130
    move-result v8

    .line 131
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 137
    move-result v7

    .line 138
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 141
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 144
    move-result v6

    .line 145
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 151
    move-result v5

    .line 152
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 158
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 161
    move-result v0

    .line 162
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 165
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 168
    move-result v0

    .line 169
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 172
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    goto :goto_5

    .line 175
    :catch_0
    move-exception v0

    .line 176
    goto :goto_3

    .line 177
    :cond_0
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    move-result v0

    .line 181
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 184
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 187
    move-result v0

    .line 188
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 194
    move-result v0

    .line 195
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 198
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 201
    move-result v0

    .line 202
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 205
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 208
    move-result v0

    .line 209
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 212
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 215
    move-result v0

    .line 216
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 219
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 222
    move-result v0

    .line 223
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 226
    :goto_0
    const/4 v3, 0x1

    .line 227
    goto :goto_1

    .line 228
    :cond_1
    const-string/jumbo v0, "loadHostAuth row count : Email cursor is invalid"

    .line 231
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 236
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 239
    goto :goto_4

    .line 240
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v4, :cond_3

    .line 245
    goto :goto_2

    .line 246
    :cond_3
    :goto_4
    return v3

    .line 247
    :goto_5
    if-eqz v4, :cond_4

    .line 249
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_4
    throw v0
.end method

.method public static declared-synchronized sendAccountsChangedBroadcast(Landroid/content/Context;I)V
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 10
    new-instance v3, Landroid/content/Intent;

    .line 12
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const/high16 v2, 0x10000000

    .line 17
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    new-instance v2, Landroid/os/UserHandle;

    .line 22
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 25
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-eqz v1, :cond_1

    .line 30
    :try_start_2
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_0

    .line 37
    const-string/jumbo p1, "com.samsung.android.email.provider"

    .line 40
    new-instance v2, Landroid/os/UserHandle;

    .line 42
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 45
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 48
    move-result-object p0

    .line 49
    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 51
    const-string p0, "SettingsUtils"

    .line 53
    const-string/jumbo p1, "sendAccountsChangedBroadcast : USER space   com.samsung.android.email.provider"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_4

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Landroid/os/UserHandle;

    .line 70
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 73
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 76
    move-result-object p0

    .line 77
    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 79
    const-string p0, "SettingsUtils"

    .line 81
    const-string/jumbo p1, "sendAccountsChangedBroadcast : USER space"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :goto_0
    :try_start_3
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    move-result-object p0

    .line 96
    const-string/jumbo p1, "content://com.samsung.android.email.provider/hostauth"

    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    move-result-object p1

    .line 103
    const/4 v1, 0x1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 108
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    move-result-object p0

    .line 114
    const-string/jumbo p1, "content://com.samsung.android.email.provider/account"

    .line 117
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 124
    goto :goto_3

    .line 125
    :catch_1
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_3
    const-string p0, "SettingsUtils"

    .line 137
    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 145
    :goto_4
    monitor-exit v0

    .line 146
    throw p0
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "SettingsUtils"

    .line 3
    if-eqz p0, :cond_1

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const-string/jumbo p0, "setSecurityPassword() success"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :catch_0
    const-string/jumbo p0, "setSecurityPassword() failed"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    const-string/jumbo p0, "setSecurityPassword() failed : invalid parameter"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
