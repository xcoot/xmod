.class public final Lcom/android/server/am/Pageboost$PageboostAppDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$classId:I

    .line 3
    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 6
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "Pageboost"

    .line 3
    const-string/jumbo v1, "db length : "

    .line 6
    const-string/jumbo v2, "db create : "

    .line 9
    const-string v3, " (FILENAME TEXT, OFFSET INTEGER, SIZE INTEGER, FORVRAMDISK INTEGER, BITMAP BLOB, unique (FILENAME, OFFSET) );"

    .line 11
    const-string v4, "CREATE TABLE IF NOT EXISTS "

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 16
    return-object v5

    .line 17
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 19
    const-string v7, "/data/misc/pageboost/pageboost_file_db.db"

    .line 21
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_2

    .line 30
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 33
    move-result-wide v7

    .line 34
    const-wide/32 v9, 0x1e00000

    .line 37
    cmp-long v7, v7, v9

    .line 39
    if-ltz v7, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 90
    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " "

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 102
    move-result-wide v1

    .line 103
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v5

    .line 114
    :goto_1
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 116
    const-string/jumbo v1, "create table failed : "

    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    :goto_2
    return-object p1
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "DROP TABLE IF EXISTS "

    .line 3
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "drop table failed : "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "Pageboost"

    .line 31
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_0
    return-void
.end method

.method public static insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "FILENAME"

    .line 6
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 9
    move-result-object p2

    .line 10
    const-string v0, "OFFSET"

    .line 12
    const-string v1, "SIZE"

    .line 14
    invoke-static {p3, p2, v0, p5, v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    const-string p5, "FORVRAMDISK"

    .line 23
    invoke-virtual {p2, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    const-string p3, "BITMAP"

    .line 28
    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 31
    const/4 p3, 0x0

    .line 32
    const/4 p4, 0x4

    .line 33
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 36
    return-void
.end method

.method private final onCreate$com$android$server$am$Pageboost$PageboostFileDBHelper(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const-string v1, "ID"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 17
    const-string v1, "APPNAME"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    const-string v1, "CAPTURED"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    const-string v1, "ANON"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    const-string v1, "ION"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p1

    .line 61
    const-string v1, "GPU"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object p1

    .line 72
    const-string v1, "SIZE_PR"

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object p1

    .line 83
    const-string v1, "SIZE_MAP_PR"

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 94
    const-string v1, "SCORE"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p1

    .line 105
    const-string v1, "EXEC_CNT"

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    move-result-object p1

    .line 116
    const-string v1, "ACC_ETIME"

    .line 118
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object p1

    .line 127
    const-string v1, "PREFETCH_CNT"

    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object p1

    .line 138
    const-string v1, "HIT_CNT"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string p1, "APK_PATH"

    .line 145
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public static storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "db update :"

    .line 4
    if-eqz p1, :cond_2

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 11
    monitor-enter p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {p2, v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AppLRU"

    .line 19
    const-string v3, "APPNAME = ?"

    .line 21
    iget-object v4, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 23
    filled-new-array {v4}, [Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    int-to-long v2, v2

    .line 32
    const-wide/16 v4, 0x0

    .line 34
    cmp-long v4, v2, v4

    .line 36
    if-nez v4, :cond_1

    .line 38
    const-string v2, "AppLRU"

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 45
    move-result-wide v2

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 51
    const-string p0, "Pageboost"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object p2, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, " ret "

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit p1

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_2
    :goto_2
    return-void
.end method

.method public static storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "db clear : ret "

    .line 4
    :try_start_0
    const-string v1, "AppLRU"

    .line 6
    const-string v2, "1"

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    sget-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 16
    const-string v4, "Pageboost"

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 38
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 58
    add-int/lit8 v4, v1, 0x1

    .line 60
    invoke-static {v2, v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    .line 63
    move-result-object v1

    .line 64
    const-string v5, "AppLRU"

    .line 66
    invoke-virtual {p0, v5, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    move-result-wide v5

    .line 70
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 72
    const-string v1, "Pageboost"

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string/jumbo v8, "db insert :"

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " ret "

    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move v1, v4

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    monitor-exit v0

    .line 110
    goto :goto_2

    .line 111
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 115
    const-string p0, "Pageboost"

    .line 117
    const-string/jumbo p1, "failed to store app lru info"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_2
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string p0, "Pageboost"

    .line 9
    const-string v0, "CREATE TABLE IF NOT EXISTS AppLRU (ID INTEGER, APPNAME TEXT NOT NULL UNIQUE, CAPTURED INTEGER, ANON INTEGER, ION INTEGER, GPU INTEGER, SIZE_PR INTEGER, SIZE_MAP_PR INTEGER, SCORE INTEGER, EXEC_CNT INTEGER, ACC_ETIME INTEGER, PREFETCH_CNT INTEGER, HIT_CNT INTEGER, APK_PATH TEXT NOT NULL );"

    .line 11
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    sget-boolean p1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 16
    const-string p1, "AppDB table creation done"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 25
    const-string/jumbo v0, "failed to create AppDB table"

    .line 28
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string p0, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    move-result-object p0

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    if-eqz p0, :cond_2

    .line 20
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p2

    .line 39
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_1

    .line 45
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Ljava/lang/String;

    .line 51
    invoke-static {p1, p3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_2
    return-void

    .line 59
    :pswitch_0
    const-string v0, "DROP TABLE IF EXISTS AppLRU"

    .line 61
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p0

    .line 69
    sget-boolean p1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v0, "failed to upgrade or downgrade AppDB table : from "

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p2, " to "

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    const-string p2, "Pageboost"

    .line 96
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_2
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
