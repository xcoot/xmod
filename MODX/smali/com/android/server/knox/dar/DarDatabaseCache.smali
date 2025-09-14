.class public final Lcom/android/server/knox/dar/DarDatabaseCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCache:Ljava/util/HashMap;

.field public final mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/DarDatabaseCache$1;-><init>(Lcom/android/server/knox/dar/DarDatabaseCache;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    .line 13
    const-string/jumbo v1, "dar.db"

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 24
    iput-object v0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    .line 26
    return-void
.end method

.method public static makeTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static reportError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Error occurred in "

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "DarDatabaseCache"

    .line 9
    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p0, p1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final getInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 25
    monitor-exit v1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_7

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    move-object v0, v3

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    return-object v0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    .line 37
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    move-result-object v4

    .line 41
    const-string/jumbo v5, "dar_info"

    .line 44
    const-string/jumbo v2, "value"

    .line 47
    filled-new-array {v2}, [Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    const-string/jumbo v7, "name=? AND user=?"

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    filled-new-array {p2, v2}, [Ljava/lang/String;

    .line 61
    move-result-object v8

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_2

    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 77
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    if-eqz v0, :cond_2

    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    goto :goto_6

    .line 87
    :catch_0
    move-exception v2

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 91
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 94
    goto :goto_4

    .line 95
    :goto_3
    :try_start_2
    const-string/jumbo v4, "get"

    .line 98
    invoke-static {v2, v4}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-eqz v3, :cond_3

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 106
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 112
    monitor-enter p2

    .line 113
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 115
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit p2

    .line 119
    goto :goto_5

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    throw p0

    .line 123
    :cond_4
    :goto_5
    return-object v0

    .line 124
    :goto_6
    if-eqz v3, :cond_5

    .line 126
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_5
    throw p0

    .line 130
    :goto_7
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    throw p0
.end method

.method public final getLong(I)J
    .locals 3

    .line 1
    const-string/jumbo v0, "vl.rst.token.handle"

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_0
    return-wide v1
.end method

.method public final putInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "dar_info"

    .line 4
    if-nez p3, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    const-string/jumbo v1, "name"

    .line 10
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "user"

    .line 17
    const-string/jumbo v3, "value"

    .line 20
    invoke-static {p1, v1, v2, v3, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/DarDatabaseCache$DatabaseHelper;

    .line 26
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 33
    const-string/jumbo v4, "name=? AND user=?"

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    filled-new-array {p2, v5}, [Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    invoke-virtual {v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 50
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 56
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 65
    monitor-enter p2

    .line 66
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 68
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit p2

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    move-object v2, v3

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    move-object v2, v3

    .line 81
    goto :goto_0

    .line 82
    :catchall_2
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-exception p0

    .line 85
    :goto_0
    :try_start_3
    const-string/jumbo p1, "put"

    .line 88
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->reportError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 91
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 100
    :goto_2
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_2
    throw p0
.end method
