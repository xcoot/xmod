.class public final Lcom/android/server/enterprise/application/NetworkDataUsageDb;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    const-string v0, "NetworkDataUsageDb"

    .line 3
    const-string/jumbo v1, "dmappmgr.db"

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    move-result-object v3

    .line 12
    const-string p0, "::getAppControlDB: DB is Created "

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "::getAppControlDB: Exception to create DB"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    if-eqz v3, :cond_1

    .line 25
    if-eqz v3, :cond_0

    .line 27
    :try_start_1
    const-string p0, "SELECT 1 FROM NetworkDataUsage WHERE 1=0"

    .line 29
    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string p0, "::isTableExists: Table exists "

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    const-string p0, "::isTableExists:Table Does not exists "

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    :try_start_2
    const-string/jumbo p0, "create table NetworkDataUsage (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    .line 46
    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string p0, "::createDmAppMgrTable: Table is Created "

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    goto :goto_1

    .line 55
    :catch_2
    const-string p0, "::createDmAppMgrTable: Exception while table is creating "

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    :goto_1
    return-object v3
.end method


# virtual methods
.method public final getMobileDataUsage()Ljava/util/Hashtable;
    .locals 10

    .line 1
    const-string v0, "_id"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    if-nez p0, :cond_1

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 17
    :cond_0
    return-object v1

    .line 18
    :cond_1
    :try_start_1
    const-string v3, "NetworkDataUsage"

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, p0

    .line 27
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    if-eqz v2, :cond_4

    .line 33
    :try_start_2
    new-instance v3, Ljava/util/Hashtable;

    .line 35
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 44
    :cond_2
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 46
    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 49
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    move-result v4

    .line 53
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    move-result v4

    .line 57
    iput v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 59
    const-string/jumbo v4, "mobiledatausagesend"

    .line 62
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    move-result v4

    .line 66
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 69
    move-result-wide v4

    .line 70
    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 72
    const-string/jumbo v4, "mobiledatausagercv"

    .line 75
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    move-result v4

    .line 79
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 82
    move-result-wide v4

    .line 83
    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 85
    const-string/jumbo v4, "wifidatausagesend"

    .line 88
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 91
    move-result v4

    .line 92
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 95
    move-result-wide v4

    .line 96
    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 98
    const-string/jumbo v4, "wifidatausagesendrcv"

    .line 101
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 104
    move-result v4

    .line 105
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 108
    move-result-wide v4

    .line 109
    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 111
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 114
    move-result v4

    .line 115
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 118
    move-result v4

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 129
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-nez v1, :cond_2

    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object v1, v2

    .line 135
    goto :goto_5

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :goto_0
    move-object v1, v2

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    :goto_1
    move-object v1, v3

    .line 140
    goto :goto_2

    .line 141
    :catch_1
    move-exception v0

    .line 142
    move-object v3, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 152
    goto :goto_4

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    goto :goto_5

    .line 155
    :catch_2
    move-exception v0

    .line 156
    move-object v3, v1

    .line 157
    goto :goto_3

    .line 158
    :catchall_2
    move-exception v0

    .line 159
    move-object p0, v1

    .line 160
    goto :goto_5

    .line 161
    :catch_3
    move-exception v0

    .line 162
    move-object p0, v1

    .line 163
    move-object v3, p0

    .line 164
    :goto_3
    :try_start_4
    const-string v2, "NetworkDataUsageDb"

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string/jumbo v5, "getMobileDataUsage "

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    if-eqz v1, :cond_6

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_6
    if-eqz p0, :cond_7

    .line 194
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    :cond_7
    move-object v1, v3

    .line 198
    :goto_4
    return-object v1

    .line 199
    :goto_5
    if-eqz v1, :cond_8

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_8
    if-eqz p0, :cond_9

    .line 206
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 209
    :cond_9
    throw v0
.end method
