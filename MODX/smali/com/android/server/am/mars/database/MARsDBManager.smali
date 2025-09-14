.class public final Lcom/android/server/am/mars/database/MARsDBManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public MARsDBVersion:Ljava/lang/String;

.field public MARsLocalVersion:Ljava/lang/String;

.field public final mAppStartUpList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mCurrentContext:Landroid/content/Context;

.field public mIsBigDataRestrictionColumnExist:Z

.field public mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

.field public mMaxFailCountForSCPM:I

.field public mRegisteredSmartManagerDefaultAllowedListObserver:Z

.field public mRegisteredSmartManagerForcedAppStandbyObserver:Z

.field public mRegisteredSmartManagerFreezeExcludeListObserver:Z

.field public mRegisteredSmartManagerSettingsObserver:Z

.field public mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

.field public mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

.field public mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

.field public mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 25
    const/4 v1, 0x3

    .line 26
    iput v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMaxFailCountForSCPM:I

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 30
    return-void
.end method

.method public static getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "MARsDBManager"

    .line 3
    if-nez p0, :cond_0

    .line 5
    const-string/jumbo p0, "getMARsSettingsInfoForNotificationTime() context is null!"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 12
    :cond_0
    const-string/jumbo v1, "key"

    .line 15
    const-string/jumbo v2, "value"

    .line 18
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    if-eqz p0, :cond_3

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    :try_start_1
    const-string/jumbo v3, "deep_sleep_notification_time"

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 68
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 71
    move-result-wide v1

    .line 72
    sget-boolean v3, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 74
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 76
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 78
    iput-wide v1, v3, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "Exception with parseLong : "

    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string/jumbo p0, "getMARsSettingsInfoForNotificationTime error, no database!!"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    return-void

    .line 104
    :catch_1
    move-exception p0

    .line 105
    const-string/jumbo v1, "getMARsSettingsInfoForNotificationTime : Exception : "

    .line 108
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public final doUpdateCompHistory(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    new-array v0, v0, [Landroid/content/ContentValues;

    .line 18
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 34
    if-nez p1, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "Exception on handling DB : "

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v0, "MARsDBManager"

    .line 52
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    move-object/from16 v3, p4

    .line 9
    move-object/from16 v4, p5

    .line 11
    move-object/from16 v5, p6

    .line 13
    move-object/from16 v6, p7

    .line 15
    move-object/from16 v7, p8

    .line 17
    move-object/from16 v8, p9

    .line 19
    move-object/from16 v9, p10

    .line 21
    move-object/from16 v10, p11

    .line 23
    move-object/from16 v11, p12

    .line 25
    move-object/from16 v12, p13

    .line 27
    const-string v13, "MARsDBManager"

    .line 29
    if-eqz v0, :cond_0

    .line 31
    if-nez v1, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v14, "parameter is error!"

    .line 36
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    .line 41
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 44
    if-eqz v0, :cond_2

    .line 46
    const-string/jumbo v15, "package_name"

    .line 49
    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 54
    const-string/jumbo v15, "uid"

    .line 57
    invoke-virtual {v14, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3
    if-eqz v2, :cond_4

    .line 62
    const-string/jumbo v15, "mode"

    .line 65
    invoke-virtual {v14, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_4
    if-eqz v3, :cond_5

    .line 70
    const-string/jumbo v2, "new"

    .line 73
    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_5
    if-eqz v4, :cond_6

    .line 78
    const-string/jumbo v2, "reason"

    .line 81
    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_6
    if-eqz v5, :cond_7

    .line 86
    const-string/jumbo v2, "extras"

    .line 89
    invoke-virtual {v14, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_7
    if-eqz v6, :cond_8

    .line 94
    const-string/jumbo v2, "resetTime"

    .line 97
    invoke-virtual {v14, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_8
    if-eqz v7, :cond_9

    .line 102
    const-string/jumbo v2, "packageType"

    .line 105
    invoke-virtual {v14, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_9
    if-eqz v8, :cond_a

    .line 110
    const-string/jumbo v2, "level"

    .line 113
    invoke-virtual {v14, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_a
    if-eqz v9, :cond_b

    .line 118
    const-string/jumbo v2, "disableType"

    .line 121
    invoke-virtual {v14, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_b
    if-eqz v10, :cond_c

    .line 126
    const-string/jumbo v2, "disableResetTime"

    .line 129
    invoke-virtual {v14, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_c
    if-eqz v11, :cond_d

    .line 134
    const-string/jumbo v2, "prevCurrent"

    .line 137
    invoke-virtual {v14, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_d
    if-eqz v12, :cond_e

    .line 142
    const-string/jumbo v2, "disableReason"

    .line 145
    invoke-virtual {v14, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_e
    const-string/jumbo v2, "package_name=? AND uid=?"

    .line 151
    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 160
    move-result-object v1

    .line 161
    const-string v3, "MARs-self"

    .line 163
    const-string/jumbo v4, "true"

    .line 166
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 173
    move-result-object v1

    .line 174
    move-object/from16 v3, p0

    .line 176
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3, v1, v14, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "Exception with update() : "

    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :goto_0
    return-void
.end method

.method public final getDefaultAllowedListDBValues()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v4, "type=?"

    .line 9
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "1"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "0"

    .line 20
    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    .line 32
    const-string/jumbo p0, "package_name"

    .line 35
    filled-new-array {p0}, [Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-eqz p0, :cond_2

    .line 46
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 59
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    goto :goto_2

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_2
    throw v1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    if-eqz p0, :cond_3

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    goto :goto_4

    .line 85
    :goto_3
    const-string v1, "MARsDBManager"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    const-string v3, "Exception with contentResolver : "

    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_3
    :goto_4
    sget-object p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    .line 113
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 115
    monitor-enter v1

    .line 116
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 128
    :catchall_2
    move-exception p0

    .line 129
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    throw p0
.end method

.method public final getFreezeExcludeListFromDB()V
    .locals 5

    .line 1
    const-string v0, "MARsDBManager"

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p0

    .line 14
    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    .line 16
    const-string/jumbo v3, "package_name"

    .line 19
    filled-new-array {v3}, [Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-eqz p0, :cond_3

    .line 30
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 45
    if-eqz v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string/jumbo v4, "pkgname = "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v1}, Lcom/android/server/am/mars/MARsUtils;->setFreezeExcludeList(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_4

    .line 79
    :goto_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :goto_3
    throw v1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_5

    .line 90
    :cond_3
    :goto_4
    if-eqz p0, :cond_4

    .line 92
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 95
    goto :goto_6

    .line 96
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    const-string v2, "Exception with contentResolver : "

    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_4
    :goto_6
    return-void
.end method

.method public final getSCPMList()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string/jumbo v0, "getScpmData : fail : "

    .line 7
    const-string/jumbo v3, "getScpmData : isSuccess : "

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v5, Landroid/os/Bundle;

    .line 17
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    :try_start_0
    iget-object v8, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v8

    .line 28
    sget-object v9, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    .line 30
    const-string/jumbo v10, "dc_scpm_get_deep_sleep_specific_list"

    .line 33
    invoke-virtual {v8, v9, v10, v6, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    move-result-object v5

    .line 37
    const-string/jumbo v8, "result"

    .line 40
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 43
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    if-eqz v8, :cond_1

    .line 46
    :try_start_1
    const-string/jumbo v0, "result_id"

    .line 49
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 52
    move-result v0

    .line 53
    const-string v9, "MARsDBManager"

    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string/jumbo v0, "deviceidle"

    .line 73
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 80
    move-result-object v0

    .line 81
    const-string/jumbo v3, "package_list"

    .line 84
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 87
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    move v5, v7

    .line 89
    move v9, v5

    .line 90
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result v10

    .line 94
    if-ge v5, v10, :cond_2

    .line 96
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0, v10}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    .line 108
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    if-eqz v11, :cond_0

    .line 111
    :try_start_3
    invoke-interface {v0, v10}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    move v9, v2

    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    move v9, v2

    .line 118
    goto :goto_2

    .line 119
    :cond_0
    :goto_1
    add-int/2addr v5, v2

    .line 120
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    goto :goto_2

    .line 123
    :catch_2
    move-exception v0

    .line 124
    move v9, v7

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    :try_start_4
    const-string/jumbo v3, "error_id"

    .line 129
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 132
    move-result v3

    .line 133
    const-string v5, "MARsDBManager"

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 150
    move v9, v7

    .line 151
    goto :goto_3

    .line 152
    :catch_3
    move-exception v0

    .line 153
    move v8, v7

    .line 154
    move v9, v8

    .line 155
    :goto_2
    const-string v3, "MARsDBManager"

    .line 157
    const-string v5, "SCPM not available : "

    .line 159
    invoke-static {v0, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    :goto_3
    const-wide/32 v10, 0xea60

    .line 165
    if-nez v8, :cond_3

    .line 167
    iget v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mMaxFailCountForSCPM:I

    .line 169
    if-lez v0, :cond_3

    .line 171
    sub-int/2addr v0, v2

    .line 172
    iput v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mMaxFailCountForSCPM:I

    .line 174
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 176
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendGetSCPMListMsgToMainHandler(J)V

    .line 179
    return-void

    .line 180
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_14

    .line 186
    if-nez v9, :cond_13

    .line 188
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 190
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 192
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    const/4 v0, 0x5

    .line 198
    new-array v5, v0, [Ljava/lang/String;

    .line 200
    const-string v0, ""

    .line 202
    aput-object v0, v5, v7

    .line 204
    const-string v0, "[FRZ]"

    .line 206
    aput-object v0, v5, v2

    .line 208
    const/4 v0, 0x2

    .line 209
    const-string v8, "[FAS]"

    .line 211
    aput-object v8, v5, v0

    .line 213
    const/4 v0, 0x3

    .line 214
    const-string v8, "[FOS]"

    .line 216
    aput-object v8, v5, v0

    .line 218
    const-string v0, "[DIS]"

    .line 220
    const/4 v8, 0x4

    .line 221
    aput-object v0, v5, v8

    .line 223
    const-string v0, ""

    .line 225
    const-string v9, "[FRZ]"

    .line 227
    const-string v10, "[FAS]"

    .line 229
    const-string v11, "[FOS]"

    .line 231
    const-string v12, "[DIS]"

    .line 233
    filled-new-array {v0, v9, v10, v11, v12}, [Ljava/lang/String;

    .line 236
    move-result-object v9

    .line 237
    new-instance v10, Ljava/util/ArrayList;

    .line 239
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v11, Ljava/util/ArrayList;

    .line 244
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v12, Ljava/util/ArrayList;

    .line 249
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v13, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 254
    monitor-enter v13

    .line 255
    :try_start_5
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 257
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 260
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    .line 262
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 265
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 266
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object v4

    .line 270
    move v13, v7

    .line 271
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_11

    .line 277
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Ljava/lang/String;

    .line 283
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 285
    monitor-enter v14

    .line 286
    :try_start_6
    iget-object v15, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 288
    iget-object v6, v3, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    .line 293
    move-result v6

    .line 294
    invoke-static {v15, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 297
    move-result-object v0

    .line 298
    const/16 v6, 0x10

    .line 300
    if-eqz v0, :cond_5

    .line 302
    iget v15, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 304
    if-eq v15, v8, :cond_5

    .line 306
    iput-boolean v2, v0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 308
    sget-boolean v15, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 310
    sget-object v15, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 312
    iget-boolean v7, v15, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 314
    if-eqz v7, :cond_4

    .line 316
    iget-object v7, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 318
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 320
    invoke-virtual {v15, v8, v7}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_4

    .line 326
    iget-object v7, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 328
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 330
    const-string/jumbo v2, "specificDisable"

    .line 333
    invoke-virtual {v15, v8, v7, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    goto :goto_5

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    goto/16 :goto_12

    .line 340
    :cond_4
    :goto_5
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 342
    iget-object v7, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 344
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 346
    iget v15, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 348
    invoke-direct {v2, v8, v15, v7}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(IILjava/lang/String;)V

    .line 351
    const/16 v7, 0x2000

    .line 353
    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 356
    move-result v7

    .line 357
    iput v6, v0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 359
    invoke-static {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 362
    goto :goto_6

    .line 363
    :cond_5
    const/4 v2, 0x0

    .line 364
    const/4 v7, 0x0

    .line 365
    :goto_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 366
    if-eqz v7, :cond_9

    .line 368
    if-eqz v2, :cond_9

    .line 370
    :try_start_7
    const-string/jumbo v0, "package"

    .line 373
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 376
    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 380
    move-result-object v0

    .line 381
    iget-object v7, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 383
    iget v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 385
    invoke-interface {v0, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 388
    move-result v7

    .line 389
    if-eqz v7, :cond_7

    .line 391
    const/4 v8, 0x1

    .line 392
    if-ne v7, v8, :cond_6

    .line 394
    goto :goto_7

    .line 395
    :cond_6
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 397
    if-eqz v0, :cond_9

    .line 399
    const-string v0, "MARsPolicyManager"

    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    const-string/jumbo v8, "pkg "

    .line 409
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 414
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v8, " uid "

    .line 419
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 424
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v8, " is already disabled, so we will not disable"

    .line 429
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v7

    .line 436
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    goto :goto_9

    .line 440
    :catch_4
    move-exception v0

    .line 441
    goto :goto_8

    .line 442
    :cond_7
    :goto_7
    iget-object v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 444
    iget v14, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 446
    invoke-interface {v0, v8, v14}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 449
    move-result v8

    .line 450
    if-nez v8, :cond_8

    .line 452
    iget-object v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 454
    iget v14, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 456
    const-string v21, "auto_disabler"

    .line 458
    const/16 v18, 0x4

    .line 460
    const/16 v19, 0x0

    .line 462
    move-object/from16 v16, v0

    .line 464
    move-object/from16 v17, v8

    .line 466
    move/from16 v20, v14

    .line 468
    invoke-interface/range {v16 .. v21}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 471
    iput v7, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 473
    const/4 v7, 0x1

    .line 474
    iput-boolean v7, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 476
    :cond_8
    const/4 v8, 0x1

    .line 477
    goto :goto_a

    .line 478
    :goto_8
    const-string v7, "MARsPolicyManager"

    .line 480
    const-string v8, "Error occurred in disable package : "

    .line 482
    invoke-static {v0, v8, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_9
    :goto_9
    const/4 v8, 0x0

    .line 486
    :goto_a
    if-eqz v2, :cond_10

    .line 488
    if-eqz v8, :cond_10

    .line 490
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 492
    monitor-enter v7

    .line 493
    :try_start_8
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 495
    iget-object v8, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 497
    iget v14, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 499
    invoke-static {v0, v8, v14}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 502
    move-result-object v0

    .line 503
    if-eqz v0, :cond_f

    .line 505
    invoke-static {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 508
    iget-object v2, v3, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 510
    iput-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 512
    iget-object v2, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 514
    iget-object v8, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 516
    iget v14, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 518
    invoke-virtual {v2, v14, v8}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 521
    move-result-object v2

    .line 522
    if-nez v2, :cond_a

    .line 524
    iget-object v2, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 526
    iget-object v8, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 528
    iget v14, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 530
    invoke-virtual {v2, v8, v14, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    .line 533
    goto :goto_b

    .line 534
    :catchall_1
    move-exception v0

    .line 535
    goto/16 :goto_10

    .line 537
    :cond_a
    :goto_b
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 539
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget v2, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 544
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    move-result-object v2

    .line 548
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    if-nez v13, :cond_b

    .line 553
    const/4 v13, 0x1

    .line 554
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    const/4 v8, 0x4

    .line 560
    aget-object v14, v5, v8

    .line 562
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v8, " "

    .line 567
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 572
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    move-result-object v2

    .line 579
    const/4 v8, 0x4

    .line 580
    aput-object v2, v5, v8

    .line 582
    new-instance v2, Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 584
    invoke-direct {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    .line 587
    iget-object v14, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 589
    iput-object v14, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 591
    iget v14, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 593
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 596
    move-result-object v14

    .line 597
    iput-object v14, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 599
    iget-boolean v14, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 601
    if-eqz v14, :cond_c

    .line 603
    const-string v15, "1"

    .line 605
    goto :goto_c

    .line 606
    :cond_c
    const/4 v15, 0x0

    .line 607
    :goto_c
    iput-object v15, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 609
    if-eqz v14, :cond_d

    .line 611
    const-string v14, "1"

    .line 613
    goto :goto_d

    .line 614
    :cond_d
    const/4 v14, 0x0

    .line 615
    :goto_d
    iput-object v14, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 617
    iget v14, v0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 619
    const/4 v15, 0x1

    .line 620
    if-ne v14, v15, :cond_e

    .line 622
    invoke-static {v14}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    .line 625
    move-result-object v14

    .line 626
    goto :goto_e

    .line 627
    :cond_e
    const/4 v14, 0x0

    .line 628
    :goto_e
    iput-object v14, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 630
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    .line 633
    move-result-object v6

    .line 634
    iput-object v6, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 636
    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 638
    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    .line 641
    move-result-object v6

    .line 642
    iput-object v6, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 644
    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 649
    move-result-object v0

    .line 650
    iput-object v0, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 652
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    goto :goto_f

    .line 660
    :cond_f
    const/4 v8, 0x4

    .line 661
    const/4 v15, 0x1

    .line 662
    :goto_f
    monitor-exit v7

    .line 663
    goto :goto_11

    .line 664
    :goto_10
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 665
    throw v0

    .line 666
    :cond_10
    const/4 v8, 0x4

    .line 667
    const/4 v15, 0x1

    .line 668
    :goto_11
    move v2, v15

    .line 669
    const/4 v6, 0x0

    .line 670
    const/4 v7, 0x0

    .line 671
    goto/16 :goto_4

    .line 673
    :goto_12
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 674
    throw v0

    .line 675
    :cond_11
    if-eqz v13, :cond_12

    .line 677
    const-string v0, "LVU"

    .line 679
    invoke-static {v5, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 689
    move-result v0

    .line 690
    if-nez v0, :cond_14

    .line 692
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 695
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 697
    invoke-virtual {v0, v10}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 700
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 702
    const-string/jumbo v2, "deepsleepspecific"

    .line 705
    invoke-virtual {v0, v2, v11, v12}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 708
    goto :goto_13

    .line 709
    :catchall_2
    move-exception v0

    .line 710
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 711
    throw v0

    .line 712
    :cond_13
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 714
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendGetSCPMListMsgToMainHandler(J)V

    .line 717
    return-void

    .line 718
    :cond_14
    :goto_13
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 720
    const-wide/32 v1, 0x2932e00

    .line 723
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendGetSCPMListMsgToMainHandler(J)V

    .line 726
    return-void
.end method

.method public final getSettingsValueFromDB(Z)V
    .locals 7

    .line 1
    const-string v0, "MARsDBManager"

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 11
    const-string/jumbo p0, "key"

    .line 14
    const-string/jumbo v3, "value"

    .line 17
    filled-new-array {p0, v3}, [Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    if-eqz p0, :cond_4

    .line 30
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    const-string/jumbo v3, "spcm_locking_time"

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eqz v3, :cond_1

    .line 51
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result v3

    .line 59
    invoke-static {v3}, Lcom/android/server/am/mars/MARsUtils;->setPackagesUnusedLockingTime(I)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    const-string/jumbo v3, "spcm_switch"

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 76
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    move-result v3

    .line 84
    invoke-static {v3, p1}, Lcom/android/server/am/mars/MARsUtils;->setAllPoliciesOnOffState(IZ)V

    .line 87
    :cond_2
    const-string v3, "ConfigCompTracing"

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    move-result v2

    .line 103
    if-lez v2, :cond_3

    .line 105
    move v1, v4

    .line 106
    :cond_3
    sget-object v2, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 108
    iput-boolean v1, v2, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    goto :goto_0

    .line 111
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v3, "Exception with parseInt : "

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    goto :goto_0

    .line 136
    :goto_3
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    goto :goto_4

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    :goto_4
    throw p1

    .line 145
    :catch_1
    move-exception p0

    .line 146
    goto :goto_5

    .line 147
    :cond_4
    if-eqz p0, :cond_5

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    goto :goto_6

    .line 153
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "Exception with contentResolver : "

    .line 157
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :cond_5
    :goto_6
    return-void
.end method

.method public final isCompareDBVersion()Z
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "isCompareDBVersion(), IndexOutOfBoundsException"

    .line 5
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v3

    .line 17
    move-object v6, v4

    .line 18
    :goto_0
    const/4 v7, 0x6

    .line 19
    const-string/jumbo v8, "marsversion"

    .line 22
    if-ge v5, v7, :cond_1

    .line 24
    aget-object v7, v2, v5

    .line 26
    aget-object v9, v7, v3

    .line 28
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_0

    .line 34
    aget-object v6, v7, v0

    .line 36
    :cond_0
    add-int/2addr v5, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iput-object v6, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 40
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 42
    const-string v5, "MARsDBManager"

    .line 44
    if-eqz v2, :cond_2

    .line 46
    const-string/jumbo v2, "getSMDBVersionFromDB!"

    .line 49
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    const-string/jumbo v12, "key=?"

    .line 55
    filled-new-array {v8}, [Ljava/lang/String;

    .line 58
    move-result-object v13

    .line 59
    const-string/jumbo v2, "value"

    .line 62
    filled-new-array {v2}, [Ljava/lang/String;

    .line 65
    move-result-object v11

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object v9

    .line 72
    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v2

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    const-string v7, "Exception with contentResolver : "

    .line 85
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    move-object v2, v4

    .line 106
    :goto_1
    if-eqz v2, :cond_5

    .line 108
    move-object v6, v4

    .line 109
    :cond_3
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_4

    .line 115
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    if-eqz v7, :cond_3

    .line 121
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const-string/jumbo v2, "getSMDBVersionFromDB error, no database!!"

    .line 133
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object v6, v4

    .line 137
    :goto_3
    iput-object v6, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {v2}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 144
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 146
    if-eqz v2, :cond_6

    .line 148
    const/4 v2, 0x2

    .line 149
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 151
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 154
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    goto :goto_4

    .line 156
    :catch_1
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object v6, v4

    .line 160
    :goto_4
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 162
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    goto :goto_5

    .line 167
    :catch_2
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_5
    if-eqz v4, :cond_6

    .line 172
    if-eqz v6, :cond_6

    .line 174
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_6

    .line 180
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    move-result v1

    .line 186
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    move-result p0

    .line 192
    if-lt v1, p0, :cond_6

    .line 194
    goto :goto_6

    .line 195
    :cond_6
    move v0, v3

    .line 196
    :goto_6
    return v0
.end method

.method public final registerContentObservers(Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 9
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 11
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v3

    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v0, p0, v4, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 19
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 27
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 32
    move-result v5

    .line 33
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto/16 :goto_3

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v3

    .line 44
    throw p0

    .line 45
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 47
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 51
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 53
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    :try_start_3
    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    monitor-exit v3

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v0, p0, v4, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 61
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v0

    .line 67
    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    .line 69
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 74
    move-result v5

    .line 75
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    monitor-exit v3

    .line 83
    throw p0

    .line 84
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 86
    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 90
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 92
    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    :try_start_5
    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    :try_start_6
    monitor-exit v3

    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v0, p0, v4, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 100
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 105
    move-result-object v0

    .line 106
    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 108
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 113
    move-result p1

    .line 114
    invoke-virtual {v0, v3, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 119
    goto :goto_2

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    monitor-exit v3

    .line 122
    throw p0

    .line 123
    :cond_2
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 125
    if-nez p1, :cond_3

    .line 127
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 133
    new-instance p1, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 135
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 137
    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 138
    :try_start_7
    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 140
    :try_start_8
    monitor-exit v0

    .line 141
    const/4 v0, 0x2

    .line 142
    invoke-direct {p1, p0, v3, v0}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 145
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 147
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    move-result-object p1

    .line 153
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    .line 155
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 157
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 162
    move-result v4

    .line 163
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 166
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 168
    goto :goto_4

    .line 169
    :catchall_3
    move-exception p0

    .line 170
    monitor-exit v0

    .line 171
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 172
    :goto_3
    const-string p1, "Exception : "

    .line 174
    const-string v0, "MARsDBManager"

    .line 176
    invoke-static {p0, p1, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_3
    :goto_4
    return-void
.end method

.method public final updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    move-object v2, v0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto/16 :goto_c

    .line 20
    :cond_1
    move-object v2, v1

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    move-object v3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v3, v1

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v4, v1

    .line 47
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    move-object v5, v0

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    move-object v5, v1

    .line 60
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    move-object v6, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object v6, v1

    .line 73
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_6

    .line 79
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    move-object v7, v0

    .line 84
    goto :goto_5

    .line 85
    :cond_6
    move-object v7, v1

    .line 86
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    move-object v8, v0

    .line 97
    goto :goto_6

    .line 98
    :cond_7
    move-object v8, v1

    .line 99
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_8

    .line 105
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    move-object v9, v0

    .line 110
    goto :goto_7

    .line 111
    :cond_8
    move-object v9, v1

    .line 112
    :goto_7
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_9

    .line 118
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    move-object v10, v0

    .line 123
    goto :goto_8

    .line 124
    :cond_9
    move-object v10, v1

    .line 125
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_a

    .line 131
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    move-object v11, v0

    .line 136
    goto :goto_9

    .line 137
    :cond_a
    move-object v11, v1

    .line 138
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_b

    .line 144
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    move-object v12, v0

    .line 149
    goto :goto_a

    .line 150
    :cond_b
    move-object v12, v1

    .line 151
    :goto_a
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_c

    .line 157
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    move-object v13, v0

    .line 162
    goto :goto_b

    .line 163
    :cond_c
    move-object v13, v1

    .line 164
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_d

    .line 170
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    :cond_d
    move-object p1, v1

    .line 175
    move-object v0, p0

    .line 176
    move-object v1, v2

    .line 177
    move-object v2, v3

    .line 178
    move-object v3, v4

    .line 179
    move-object v4, v5

    .line 180
    move-object v5, v6

    .line 181
    move-object v6, v7

    .line 182
    move-object v7, v8

    .line 183
    move-object v8, v9

    .line 184
    move-object v9, v10

    .line 185
    move-object v10, v11

    .line 186
    move-object v11, v12

    .line 187
    move-object v12, v13

    .line 188
    move-object v13, p1

    .line 189
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_d

    .line 193
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    const-string v0, "Exception on handling DB : "

    .line 197
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    const-string v0, "MARsDBManager"

    .line 213
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :goto_d
    return-void
.end method
