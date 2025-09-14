.class public final Lcom/android/server/am/mars/database/FASDataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public context:Landroid/content/Context;

.field public mIsDisableReasonColumnExist:Ljava/lang/Boolean;

.field public mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;


# virtual methods
.method public final checkDisableReasonColumnExist()Ljava/lang/Boolean;
    .locals 9

    .line 1
    const-string v0, "FASDataManager"

    .line 3
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 14
    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 25
    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    iput-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v1, :cond_1

    .line 40
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :try_start_1
    const-string/jumbo v2, "checkDisableReasonColumnExist-sql, catch no column exception!"

    .line 49
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v1, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    const-string/jumbo v2, "checkDisableReasonColumnExist, catch no column exception!"

    .line 58
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v1, :cond_1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 66
    return-object p0

    .line 67
    :goto_2
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_2
    throw p0
.end method

.method public final checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;
    .locals 9

    .line 1
    const-string v0, "FASDataManager"

    .line 3
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 14
    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 25
    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    iput-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v1, :cond_1

    .line 40
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :try_start_1
    const-string/jumbo v2, "checkPreBatteryUsageColumnExist-sql, catch no column exception!"

    .line 49
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v1, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    const-string/jumbo v2, "checkPreBatteryUsageColumnExist, catch no column exception!"

    .line 58
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v1, :cond_1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 66
    return-object p0

    .line 67
    :goto_2
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_2
    throw p0
.end method

.method public final getFASDataFromDB()Ljava/util/ArrayList;
    .locals 16

    .line 1
    const-string v1, "FASDataManager"

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    .line 25
    :goto_0
    move-object v4, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    const/4 v8, 0x0

    .line 44
    move-object/from16 v9, p0

    .line 46
    :try_start_0
    iget-object v0, v9, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "Exception with contentResolver : "

    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    move-object v0, v8

    .line 88
    :goto_2
    if-eqz v0, :cond_6

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :cond_2
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_2

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    move-result v4

    .line 116
    const/16 v6, 0xa

    .line 118
    const/16 v7, 0x9

    .line 120
    const/16 v8, 0x8

    .line 122
    const/4 v10, 0x7

    .line 123
    const/4 v11, 0x6

    .line 124
    const/4 v12, 0x5

    .line 125
    const/4 v13, 0x4

    .line 126
    const/4 v14, 0x3

    .line 127
    const/4 v15, 0x2

    .line 128
    const/4 v5, 0x1

    .line 129
    if-eqz v4, :cond_3

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 141
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 143
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 146
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 152
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 158
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object v3

    .line 162
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 164
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 170
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 176
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 182
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 186
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 188
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 194
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 198
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 200
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 206
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 212
    const/16 v3, 0xb

    .line 214
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v3

    .line 218
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 220
    const/16 v3, 0xc

    .line 222
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 225
    move-result-object v3

    .line 226
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 228
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 231
    move-result-object v3

    .line 232
    goto/16 :goto_4

    .line 234
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_4

    .line 244
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 246
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 249
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object v3

    .line 253
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 255
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 258
    move-result-object v3

    .line 259
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 261
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 264
    move-result-object v3

    .line 265
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 267
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 270
    move-result-object v3

    .line 271
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 273
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 276
    move-result-object v3

    .line 277
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 279
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 282
    move-result-object v3

    .line 283
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 285
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 291
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 294
    move-result-object v3

    .line 295
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 297
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 300
    move-result-object v3

    .line 301
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 303
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 306
    move-result-object v3

    .line 307
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 309
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 312
    move-result-object v3

    .line 313
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 315
    const/16 v3, 0xb

    .line 317
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 320
    move-result-object v3

    .line 321
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 323
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 326
    move-result-object v3

    .line 327
    goto :goto_4

    .line 328
    :cond_4
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 330
    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 333
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 336
    move-result-object v3

    .line 337
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 339
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 345
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 348
    move-result-object v3

    .line 349
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 351
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 354
    move-result-object v3

    .line 355
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 357
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 361
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 363
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 366
    move-result-object v3

    .line 367
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 369
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 372
    move-result-object v3

    .line 373
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 375
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 378
    move-result-object v3

    .line 379
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 381
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 384
    move-result-object v3

    .line 385
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 387
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 390
    move-result-object v3

    .line 391
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 393
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 396
    move-result-object v3

    .line 397
    iput-object v3, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 399
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 402
    move-result-object v3

    .line 403
    :goto_4
    if-eqz v3, :cond_2

    .line 405
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    goto/16 :goto_3

    .line 410
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 412
    const-string/jumbo v4, "getFASDataFromDB fasEntityList size : "

    .line 415
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 421
    move-result v4

    .line 422
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v3

    .line 429
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    return-object v2

    .line 436
    :cond_6
    const-string/jumbo v0, "getFASDataFromDB no database!"

    .line 439
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-object v8
.end method
