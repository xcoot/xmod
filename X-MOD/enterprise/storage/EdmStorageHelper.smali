.class public final Lcom/android/server/enterprise/storage/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$smgetMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "SELECT * FROM "

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, " LIMIT 1"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object p2, p2, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p2

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/enterprise/storage/Column;

    .line 56
    iget-object v2, v0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 58
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    return-object p1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_2
    throw p0
.end method

.method public static -$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "INSERT INTO ENT_APP_MGMT_RT VALUES (?,?,?)"

    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 15
    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    if-eqz p0, :cond_0

    .line 31
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    const-string p2, "Error inserting package into database: "

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    const-string p1, "EdmStorageHelper"

    .line 60
    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_2
    return-void
.end method

.method public static -$$Nest$smpostTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 3
    const-string v0, "ADMIN_INFO"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const-string v1, "ADMIN"

    .line 11
    const-string v2, "EdmStorageHelper"

    .line 13
    if-nez v0, :cond_0

    .line 15
    :try_start_0
    const-string p1, "INSERT INTO ADMIN_INFO VALUES (0, \'SYSTEM-LEVEL-ADMIN\', 0, 0);"

    .line 17
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string p1, "INSERT INTO ADMIN_INFO VALUES (1000, \'KNOX-CUSTOM\', 0, 0);"

    .line 22
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    invoke-static {p0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_5

    .line 31
    const-string p1, "INSERT INTO ADMIN_INFO(adminUid,adminName,canRemove) SELECT * from ADMIN WHERE adminUid!=1000;"

    .line 33
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string p1, "In postAdminInfoTableCreate - Start adding KnoxCustomManagerService.DB_UID to ADMIN table..."

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string p1, "INSERT INTO ADMIN VALUES (1000,1000,0);"

    .line 43
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string p0, "In postAdminInfoTableCreate - Finished adding KnoxCustomManagerService.DB_UID to ADMIN table"

    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto/16 :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "ADMIN_INFO postAdminInfoTableCreate failed  EX: "

    .line 56
    invoke-static {p0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_0
    const-string v0, "CONTAINER"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 69
    :try_start_1
    const-string p1, "INSERT INTO CONTAINER(containerID,adminUid) VALUES (0,0);"

    .line 71
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    goto/16 :goto_1

    .line 76
    :catch_1
    move-exception p0

    .line 77
    const-string p1, "CONTAINER postContainerTableCreate failed  EX: "

    .line 79
    invoke-static {p0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    goto/16 :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 90
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_2
    const-string v0, "KNOX_CUSTOM"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 103
    const-string p1, "Calling postKnoxCustomTableCreate"

    .line 105
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo p1, "postKnoxCustomTableCreate()"

    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_2
    const-string p1, "Initialise KNOX_CUSTOM table..."

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string p1, "INSERT INTO KNOX_CUSTOM (adminUid) VALUES (1000);"

    .line 121
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string p0, "Finished initialising KNOX_CUSTOM table"

    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    goto/16 :goto_1

    .line 131
    :catch_2
    move-exception p0

    .line 132
    const-string p1, "ADMIN_INFO postKnoxCustomTableCreate failed  EX: "

    .line 134
    invoke-static {p0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto/16 :goto_1

    .line 139
    :cond_3
    const-string v0, "ENT_APP_MGMT_RT"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_5

    .line 147
    const-string p1, "F7:8E:EE:60:32:9A:02:EA:D2:BE:02:06:96:0E:6E:01:8F:FF:FA:5C:AC:FD:0E:0D:76:A2:1A:62:29:0C:A9:35"

    .line 149
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    .line 152
    const-string/jumbo v1, "postEntAppMgntRtTableCreate()"

    .line 155
    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const-string v3, "E4:15:1E:38:2B:51:07:8C:AA:2E:3E:0C:71:9A:95:DF:17:72:E4:CA:F1:94:96:26:48:33:AB:66:1D:86:12:65"

    .line 165
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    .line 173
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 182
    move-result-object v1

    .line 183
    invoke-static {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 186
    move-result-object v3

    .line 187
    const-string/jumbo v4, "com.microsoft.windowsintune.companyportal"

    .line 190
    invoke-static {p0, v4, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    .line 195
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance p1, Ljava/util/ArrayList;

    .line 203
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 212
    move-result-object v1

    .line 213
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 216
    move-result-object p1

    .line 217
    const-string/jumbo v3, "com.microsoft.mdm.testappclient"

    .line 220
    invoke-static {p0, v3, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    .line 225
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const-string v1, "A4:0D:A8:0A:59:D1:70:CA:A9:50:CF:15:C1:8C:45:4D:47:A3:9B:26:98:9D:8B:64:0E:CD:74:5B:A7:1B:F5:DC"

    .line 230
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .line 235
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 244
    move-result-object p1

    .line 245
    invoke-static {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 248
    move-result-object v0

    .line 249
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    const-string/jumbo v3, "eng"

    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_4

    .line 263
    const-string/jumbo v3, "userdebug"

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_4

    .line 272
    goto :goto_0

    .line 273
    :cond_4
    :try_start_4
    const-string/jumbo v1, "com.samsung.edmtest"

    .line 276
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 279
    const-string/jumbo v1, "om.samsung.android.knox.zt.sdk.consumer"

    .line 282
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 285
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 287
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    const-string v0, "33:30:D4:19:46:AD:F5:52:89:D5:7B:FC:14:19:8F:DA:BB:6C:E9:FF:B9:2B:84:45:2D:53:E6:C5:7C:3A:82:96"

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    .line 297
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 309
    move-result-object p1

    .line 310
    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->serializeObject(Ljava/lang/Object;)[B

    .line 313
    move-result-object v0

    .line 314
    const-string/jumbo v1, "com.sds.emm.emmagent"

    .line 317
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 320
    const-string/jumbo v1, "com.sds.emm.emmagent.enterprise"

    .line 323
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V

    .line 326
    const-string/jumbo v1, "com.sds.emm.emmagent.lite.samsung"

    .line 329
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$sminsertIntoEntAppMgmtTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    goto :goto_1

    .line 333
    :catch_3
    move-exception p0

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    .line 336
    const-string v0, "ENT_APP_MGMT_RT postEntAppMgntRtTableCreate failed  EX: "

    .line 338
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object p0

    .line 348
    invoke-static {v2, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_5
    :goto_1
    return-void
.end method

.method public static -$$Nest$smpreTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    iget-object v0, v2, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 7
    const-string v3, "ADMIN"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v7, "EdmStorageHelper"

    .line 17
    if-nez v4, :cond_1

    .line 19
    :try_start_0
    const-string v0, "DROP TRIGGER ADMIN_INFO_ONINSERT"

    .line 21
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string v0, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;"

    .line 26
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string v0, "CREATE TRIGGER IF NOT EXISTS ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;"

    .line 31
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v4, "ADMIN_INFOUpdate of ADMIN_INFO_ONINSERT trigger has failed : "

    .line 38
    invoke-static {v0, v4, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    const-string v4, "ADMIN upgrade failed  EX: "

    .line 43
    :try_start_1
    invoke-static {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v3, "containerID"

    .line 52
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Admin Table is already updated."

    .line 60
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 66
    :goto_1
    move v5, v6

    .line 67
    goto :goto_4

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_5

    .line 70
    :catch_1
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :cond_0
    :try_start_2
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 75
    const-string v0, "DROP TABLE ADMIN"

    .line 77
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_2
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 89
    goto :goto_4

    .line 90
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    goto :goto_2

    .line 106
    :goto_4
    move v6, v5

    .line 107
    goto/16 :goto_d

    .line 109
    :goto_5
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 112
    throw v0

    .line 113
    :cond_1
    const-string/jumbo v3, "generic"

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_2

    .line 122
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    .line 125
    move-result v6

    .line 126
    goto/16 :goto_d

    .line 128
    :cond_2
    const-string v3, "WebFilterLogTable"

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_3

    .line 136
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    .line 139
    move-result v6

    .line 140
    goto/16 :goto_d

    .line 142
    :cond_3
    const-string v3, "EnterpriseIslFpTable"

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 147
    move-result v3

    .line 148
    iget-object v4, v2, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 150
    const-string v8, " AS SELECT * FROM "

    .line 152
    const-string v9, "_temp"

    .line 154
    const-string v10, " Table"

    .line 156
    const-string v11, "Upgrading "

    .line 158
    const-string v12, "CREATE TABLE "

    .line 160
    const-string v13, "INSERT INTO "

    .line 162
    const-string v14, "DROP TABLE "

    .line 164
    const-string v15, ";"

    .line 166
    if-nez v3, :cond_5

    .line 168
    const-string v0, "Coming inside ISL Pretable update"

    .line 170
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, " (adminUid,fpBaseLined,packageName,fpCurrent,fpDirty,fpNewRow) SELECT adminUid,fpBaseLined,packageName,fpCurrent,fpDirty,fpNewRow from "

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 178
    :try_start_4
    invoke-static {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 181
    move-result-object v3

    .line 182
    if-eqz v3, :cond_4

    .line 184
    const-string/jumbo v5, "isaPackageName"

    .line 187
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_4

    .line 193
    const-string v0, "ISL Table is already updated."

    .line 195
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    goto/16 :goto_1

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    goto/16 :goto_9

    .line 206
    :catch_2
    move-exception v0

    .line 207
    goto :goto_7

    .line 208
    :cond_4
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v3

    .line 223
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v3

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 328
    goto :goto_8

    .line 329
    :goto_7
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v3, " upgrade ISL Table: "

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 349
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 352
    goto :goto_6

    .line 353
    :goto_8
    const/4 v5, 0x1

    .line 354
    goto/16 :goto_4

    .line 356
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 359
    throw v0

    .line 360
    :cond_5
    const-string v3, "RCP_DATA"

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 365
    move-result v3

    .line 366
    if-nez v3, :cond_7

    .line 368
    const-string v3, "Coming inside RCP TABLE "

    .line 370
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    move-result-object v0

    .line 374
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v3, "after end transaction"

    .line 379
    const-string v0, "( adminUid,name,propertyName,propertyValue)  SELECT * FROM "

    .line 381
    const-string v5, "Content Values is"

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 386
    :try_start_7
    invoke-static {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 389
    move-result-object v6

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v2

    .line 402
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v6, :cond_6

    .line 407
    const-string/jumbo v2, "cid"

    .line 410
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_6

    .line 416
    const-string v0, "Generic Table is already updated. for rcp "

    .line 418
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 424
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v5, 0x0

    .line 428
    goto/16 :goto_4

    .line 430
    :catchall_2
    move-exception v0

    .line 431
    goto/16 :goto_c

    .line 433
    :catch_3
    move-exception v0

    .line 434
    goto/16 :goto_b

    .line 436
    :cond_6
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 451
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    .line 456
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v2

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    .line 471
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    .line 495
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    move-result-object v5

    .line 505
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 508
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    .line 537
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 553
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 556
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    goto/16 :goto_8

    .line 561
    :goto_b
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 563
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string/jumbo v4, "inside exception for rcp data "

    .line 572
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object v0

    .line 582
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 585
    goto :goto_a

    .line 586
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 589
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    throw v0

    .line 593
    :cond_7
    const/4 v6, 0x0

    .line 594
    :goto_d
    return v6
.end method

.method public static addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 10

    .line 1
    const-string v0, ";"

    .line 3
    const-string v1, "EdmStorageHelper"

    .line 5
    const-string v2, "DROP TABLE "

    .line 7
    const-string v3, " SELECT *,0,0 from "

    .line 9
    const-string v4, "INSERT INTO "

    .line 11
    const-string v5, "CREATE TABLE "

    .line 13
    const-string v6, "Upgrading "

    .line 15
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 18
    :try_start_0
    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 20
    invoke-static {p0, v7}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 23
    move-result-object v8

    .line 24
    if-eqz v8, :cond_0

    .line 26
    const-string/jumbo v9, "containerID"

    .line 29
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_0

    .line 35
    const-string v0, "Generic Table is already updated."

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto/16 :goto_3

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v6, " Table"

    .line 61
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v8, "_temp"

    .line 81
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v5, " AS SELECT * FROM "

    .line 98
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    goto :goto_2

    .line 178
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string p1, " upgrade EX: "

    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    goto :goto_0

    .line 204
    :goto_2
    const/4 p0, 0x1

    .line 205
    return p0

    .line 206
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    throw p1
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, ""

    .line 11
    move-object v3, v2

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    const-string v5, ", "

    .line 18
    if-eqz v4, :cond_0

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/server/enterprise/storage/Column;

    .line 26
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    move-result v1

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v6, 0x2

    .line 51
    if-lez v1, :cond_1

    .line 53
    invoke-static {v6, v4, v3}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v1, v2

    .line 59
    :goto_1
    const-string v3, "CREATE TABLE "

    .line 61
    const-string v7, " ("

    .line 63
    invoke-static {v3, v0, v7, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v1

    .line 73
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/server/enterprise/storage/Column;

    .line 85
    iget-boolean v7, v3, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 87
    if-eqz v7, :cond_2

    .line 89
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v2

    .line 93
    iget-object v3, v3, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 95
    invoke-static {v2, v3, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 103
    move-result v1

    .line 104
    if-lez v1, :cond_4

    .line 106
    invoke-static {v6, v4, v2}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    const/4 v1, 0x0

    .line 112
    :goto_3
    if-eqz v1, :cond_5

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, ", PRIMARY KEY ("

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, ")"

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    :cond_5
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_6

    .line 143
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    .line 145
    if-eqz v2, :cond_6

    .line 147
    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    .line 149
    if-eqz v3, :cond_6

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, " FOREIGN KEY ("

    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, ") REFERENCES "

    .line 169
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "("

    .line 177
    const-string v1, ") ON DELETE CASCADE ON UPDATE CASCADE"

    .line 179
    invoke-static {v4, v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    :cond_6
    const-string v1, ");"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    iget-object p0, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 197
    move-result p0

    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object p0

    .line 202
    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 204
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 207
    move-result-object p0

    .line 208
    const-string/jumbo p1, "onTableFound Created Table %s with Columns %d"

    .line 211
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    const-string p1, "EdmStorageHelper"

    .line 217
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public static doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15

    .line 1
    const-string/jumbo v0, "signature"

    .line 4
    const-string v1, "adminUid"

    .line 6
    const-string/jumbo v2, "unknown"

    .line 9
    const-string/jumbo v3, "doCreationOrUpdatePostCommands EX1:"

    .line 12
    const-string v4, "EdmStorageHelper"

    .line 14
    const-string v5, "APPLICATION_SIGNATURE Current Count : "

    .line 16
    :try_start_0
    const-string v6, "CREATE TRIGGER IF NOT EXISTS webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    .line 18
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v6

    .line 23
    invoke-static {v4, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_0
    :try_start_1
    const-string v6, "CREATE TRIGGER IF NOT EXISTS bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    .line 28
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    goto :goto_1

    .line 32
    :catch_1
    move-exception v6

    .line 33
    const-string/jumbo v7, "doCreationOrUpdatePostCommands EX2:"

    .line 36
    invoke-static {v4, v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_1
    :try_start_2
    const-string v6, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (1, \'SpaceView\');"

    .line 41
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v6, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (2, \'TextView\');"

    .line 46
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v6, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (3, \'ImageView\');"

    .line 51
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v6, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (4, \'ContainerView\');"

    .line 56
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v6, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (5, \'CustomWidget\');"

    .line 61
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    :catch_2
    :try_start_3
    const-string v6, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (0, \'VERTICAL\');"

    .line 66
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v6, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (1, \'HORIZONTAL\');"

    .line 71
    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    :catch_3
    const/4 v6, 0x0

    .line 75
    :try_start_4
    const-string/jumbo v7, "ro.build.fingerprint"

    .line 78
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 88
    move-object v7, v6

    .line 89
    :cond_0
    const-string v2, "INSERT INTO generic VALUES (\'PlatformSoftwareVersion\', \'%s\', %d);"

    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v8

    .line 96
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 99
    move-result-object v7

    .line 100
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 107
    :catch_4
    :try_start_5
    const-string v2, "APPLICATION_SIGNATURE"

    .line 109
    invoke-static {p0, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 112
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 113
    if-eqz v2, :cond_3

    .line 115
    :try_start_6
    const-string v8, "APPLICATION_SIGNATURE"

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    move-object v7, p0

    .line 124
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 127
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 136
    move-result v5

    .line 137
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_1

    .line 153
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 156
    move-result v5

    .line 157
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 160
    move-result v5

    .line 161
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    move-result v7

    .line 165
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 168
    move-result-object v7

    .line 169
    new-instance v8, Landroid/content/ContentValues;

    .line 171
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 174
    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v8, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string/jumbo v5, "controlState"

    .line 187
    const/4 v7, 0x1

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v5, "APPLICATION_SIGNATURE2"

    .line 197
    invoke-virtual {p0, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    goto :goto_2

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    move-object v6, v2

    .line 203
    goto :goto_3

    .line 204
    :cond_1
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 207
    const-string v0, "DROP TABLE APPLICATION_SIGNATURE;"

    .line 209
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    goto :goto_4

    .line 213
    :catchall_1
    move-exception v0

    .line 214
    :goto_3
    if-eqz v6, :cond_2

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 220
    :catch_5
    :cond_3
    :goto_4
    :try_start_9
    const-string v0, "CREATE TRIGGER IF NOT EXISTS  domainFilterReportTableCircularBuffer  AFTER INSERT  ON DomainFilterReportTable WHEN (SELECT COUNT(*) FROM DomainFilterReportTable) > 1000 BEGIN  DELETE FROM DomainFilterReportTable WHERE id = (SELECT id FROM DomainFilterReportTable ORDER BY id LIMIT 1); END;  END;"

    .line 222
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 225
    goto :goto_5

    .line 226
    :catch_6
    move-exception p0

    .line 227
    invoke-static {v4, v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_5
    return-void
.end method

.method public static getCount(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "getCount(ADMIN_INFO) with Condition adminUid!=0 = "

    .line 4
    const-string v1, "EdmStorageHelper"

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "SELECT COUNT(*) from ADMIN_INFO WHERE adminUid!=0"

    .line 10
    invoke-virtual {p0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 20
    move-result v3

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    :try_start_1
    const-string/jumbo p0, "getCount() failed"

    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz v2, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    :goto_1
    return v3

    .line 52
    :goto_2
    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1
    throw p0
.end method

.method public static getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    .line 1
    const-string v0, "EdmStorageHelper"

    .line 3
    const-string v1, "Failed to get list of columns for table: "

    .line 5
    const-string v2, "PRAGMA table_info("

    .line 7
    const-string v3, ")"

    .line 9
    invoke-static {v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-eqz p0, :cond_2

    .line 20
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 29
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    move-object v3, p0

    .line 60
    goto :goto_5

    .line 61
    :catch_0
    :goto_1
    move-object v3, p0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 66
    goto :goto_4

    .line 67
    :catch_1
    move-object v1, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    if-eqz p0, :cond_3

    .line 86
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_3
    return-object v3

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    :catch_2
    move-object v1, v3

    .line 93
    :goto_3
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo p1, "does not exists"

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    if-eqz v3, :cond_4

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_4
    :goto_4
    return-object v1

    .line 120
    :goto_5
    if-eqz v3, :cond_5

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_5
    throw p1
.end method

.method public static insertDomainListData(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p3, :cond_2

    .line 4
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p3

    .line 15
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 27
    new-instance v2, Landroid/content/ContentValues;

    .line 29
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string v3, "adminUid"

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string/jumbo v3, "packageName"

    .line 44
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v3, "domain"

    .line 50
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "typeList"

    .line 56
    invoke-virtual {v2, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "DomainFilterListTable"

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return v0

    .line 69
    :goto_1
    const-string p1, "EdmStorageHelper"

    .line 71
    const-string/jumbo p2, "insertDomainListData() - failed"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 p0, 0x0

    .line 81
    return p0

    .line 82
    :cond_2
    :goto_2
    return v0
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "SELECT 1 FROM "

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_0

    .line 18
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " WHERE 1=0"

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v1, 0x1

    .line 39
    :catch_0
    :cond_0
    return v1
.end method

.method public static postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    const-string v0, "EdmStorageHelper"

    .line 3
    :try_start_0
    const-string v1, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;"

    .line 5
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCount(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 14
    const-string v1, "INSERT INTO ADMIN SELECT adminUid,adminUid,0,adminUid/100000 FROM ADMIN_INFO WHERE adminUid!=0;"

    .line 16
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    const-string v1, "CREATE TRIGGER ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;"

    .line 24
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    const-string v1, "Start adding KnoxCustomManagerService.DB_UID to ADMIN table..."

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v1, "INSERT INTO ADMIN VALUES (1000,1000,0);"

    .line 34
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string p0, "Finished adding KnoxCustomManagerService.DB_UID to ADMIN table"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    :try_start_2
    const-string p0, "KnoxCustomManagerService.DB_UID already exists in ADMIN table"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    const-string v1, "ADMIN_INFO postAdminTableCreate failed  EX: "

    .line 51
    invoke-static {p0, v1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_2
    return-void
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 8
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 17
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    goto :goto_0

    .line 34
    :catchall_2
    move-exception v1

    .line 35
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 39
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 42
    goto :goto_2

    .line 43
    :catchall_3
    move-exception v0

    .line 44
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 48
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "doTableCreationOrUpdate Starting + "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "EdmStorageHelper"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p0

    .line 32
    const v2, 0x117000d

    .line 35
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 38
    move-result-object v0

    .line 39
    new-instance p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    new-instance v2, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;

    .line 46
    invoke-direct {v2, v0, p0}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/EdmStorageHelper$1;)V

    .line 49
    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->parseXML()V

    .line 52
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    :try_start_1
    const-string/jumbo p1, "doTableCreationOrUpdate EX:"

    .line 67
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo p1, "doTableCreationOrUpdate Done + "

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 96
    :goto_2
    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 101
    :cond_1
    throw p0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    const/4 p0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string p1, "EdmStorageHelper"

    .line 12
    const-string v0, "Foreign Key Config failed"

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p0, "EdmStorageHelper"

    .line 3
    const-string p1, "Downgrading not supported"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    .line 1
    const-string/jumbo p0, "whitelist"

    .line 4
    const-string/jumbo p2, "blacklist"

    .line 7
    const/16 v0, 0x8

    .line 9
    const-string v1, "EdmStorageHelper"

    .line 11
    if-ne p3, v0, :cond_0

    .line 13
    :try_start_0
    const-string v0, "alter table ProfilePolicyPORestrictions rename to ProfilePolicyPORestrictions_tmp"

    .line 15
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    const-string v0, "CREATE TABLE ProfilePolicyPORestrictions (adminUid INTEGER, ProfilePolicyPORestrictionsValue NUMERIC DEFAULT 1, ProfilePolicyPORestrictionsProperty TEXT, PRIMARY KEY (adminUid, ProfilePolicyPORestrictionsProperty) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)"

    .line 20
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "insert into ProfilePolicyPORestrictions select * from ProfilePolicyPORestrictions_tmp"

    .line 26
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "drop table ProfilePolicyPORestrictions_tmp"

    .line 32
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v0, "ProfilePolicy table is migrated"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_0
    :goto_0
    const/16 v0, 0x9

    .line 47
    if-ne p3, v0, :cond_6

    .line 49
    :try_start_1
    const-string p3, "CREATE TABLE DomainFilterListTable (adminUid INTEGER, packageName TEXT,domain TEXT,typeList TEXT, PRIMARY KEY (adminUid, packageName, domain) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)"

    .line 51
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 54
    const-string p3, "DomainFilterListTable is created"

    .line 56
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 p3, 0x1

    .line 60
    const/4 v0, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    :try_start_2
    const-string v3, "SELECT adminUid, packageName, blacklist, whitelist FROM DomainFilterTable"

    .line 64
    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 67
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    move v3, p3

    .line 69
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 73
    if-eqz v4, :cond_3

    .line 75
    :try_start_4
    const-string v3, "adminUid"

    .line 77
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    move-result v3

    .line 81
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 84
    move-result v3

    .line 85
    const-string/jumbo v4, "packageName"

    .line 88
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 91
    move-result v4

    .line 92
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    move-result v5

    .line 100
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    move-result v6

    .line 108
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 111
    move-result-object v6

    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    const-string v8, ";"

    .line 118
    if-nez v7, :cond_1

    .line 120
    :try_start_5
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    move-result-object v5

    .line 128
    invoke-static {p1, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertDomainListData(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    .line 131
    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    if-nez v5, :cond_1

    .line 134
    move v5, v0

    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move v3, p3

    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception p0

    .line 139
    goto :goto_4

    .line 140
    :cond_1
    move v5, p3

    .line 141
    :goto_2
    :try_start_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    move-result v7

    .line 145
    if-nez v7, :cond_2

    .line 147
    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    move-result-object v6

    .line 157
    invoke-static {p1, v3, v4, v6, p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertDomainListData(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    .line 160
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    if-nez v3, :cond_2

    .line 163
    move v3, v0

    .line 164
    goto :goto_1

    .line 165
    :catchall_1
    move v3, v5

    .line 166
    goto :goto_5

    .line 167
    :cond_2
    move v3, v5

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    goto :goto_6

    .line 173
    :goto_4
    :try_start_7
    const-string/jumbo p2, "insertDomainFilterData() - failed"

    .line 176
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 182
    if-eqz v2, :cond_4

    .line 184
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_4
    move v3, v0

    .line 188
    goto :goto_6

    .line 189
    :catchall_2
    move v3, v0

    .line 190
    :catchall_3
    :goto_5
    if-eqz v2, :cond_5

    .line 192
    goto :goto_3

    .line 193
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 195
    const-string p0, "DomainFilterListTable is updated"

    .line 197
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_8
    const-string p0, "ALTER TABLE DomainFilterTable rename to DomainFilterTable_tmp"

    .line 202
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    const-string p0, "CREATE TABLE DomainFilterTable (adminUid INTEGER, packageName TEXT, signature TEXT, dns1 TEXT, dns2 TEXT, networkId INT, PRIMARY KEY (adminUid, packageName) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)"

    .line 207
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string p0, "INSERT INTO DomainFilterTable SELECT adminUid, packageName, signature, dns1, dns2, networkId from DomainFilterTable_tmp"

    .line 212
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string p0, "DROP TABLE DomainFilterTable_tmp"

    .line 217
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 220
    goto :goto_7

    .line 221
    :catch_2
    move-exception p0

    .line 222
    const-string p1, "alterDomainFilterTable() - failed"

    .line 224
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    move p3, v0

    .line 231
    :goto_7
    if-eqz p3, :cond_6

    .line 233
    const-string p0, "DomainFilterTable is migrated"

    .line 235
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto :goto_8

    .line 239
    :catch_3
    move-exception p0

    .line 240
    const-string/jumbo p1, "createDomainFilterListTable() - failed"

    .line 243
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :cond_6
    :goto_8
    return-void
.end method
