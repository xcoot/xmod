.class public final Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    const-string v0, "ApplicationUsageDb"

    .line 2
    .line 3
    const-string/jumbo v1, "dmappmgr.db"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v1, "::getAppControlDB: Exception to create DB"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    const-string p0, "SELECT 1 FROM ApplicationControl WHERE 1=0"

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    const-string p0, "::isTableExists:Table Does not exists "

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :try_start_2
    const-string/jumbo p0, "create table ApplicationControl (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "::createDmAppMgrTable: Table is Created "

    .line 46
    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_2
    move-exception p0

    .line 52
    const-string v1, "::createDmAppMgrTable: Exception while table is creating "

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    return-object v2
.end method


# virtual methods
.method public final getAppUsageData()Ljava/util/HashMap;
    .locals 20

    .line 1
    const-string/jumbo v0, "pkgname"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "lastlaunchtime"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "lastpausetime"

    .line 8
    .line 9
    .line 10
    const-string v3, "applastservicestarttime"

    .line 11
    .line 12
    const-string v4, "applastservicestoptime"

    .line 13
    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const/4 v13, 0x0

    .line 19
    move-object/from16 v5, p0

    .line 20
    .line 21
    :try_start_0
    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    if-nez v14, :cond_1

    .line 28
    .line 29
    if-eqz v14, :cond_0

    .line 30
    .line 31
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v13

    .line 35
    :cond_1
    :try_start_1
    const-string v6, "ApplicationControl"

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    move-object v5, v14

    .line 43
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    if-eqz v5, :cond_a

    .line 48
    .line 49
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_a

    .line 54
    .line 55
    new-instance v6, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_2
    :try_start_3
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v15

    .line 100
    const-wide/16 v17, 0x0

    .line 101
    .line 102
    cmp-long v19, v12, v17

    .line 103
    .line 104
    if-eqz v19, :cond_6

    .line 105
    .line 106
    cmp-long v19, v15, v17

    .line 107
    .line 108
    if-eqz v19, :cond_6

    .line 109
    .line 110
    cmp-long v19, v8, v17

    .line 111
    .line 112
    if-eqz v19, :cond_5

    .line 113
    .line 114
    cmp-long v19, v10, v15

    .line 115
    .line 116
    if-lez v19, :cond_4

    .line 117
    .line 118
    cmp-long v15, v8, v12

    .line 119
    .line 120
    if-gez v15, :cond_3

    .line 121
    .line 122
    :goto_0
    sub-long/2addr v10, v8

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    sub-long/2addr v10, v12

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    cmp-long v10, v8, v12

    .line 127
    .line 128
    if-gez v10, :cond_5

    .line 129
    .line 130
    sub-long v10, v15, v8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    sub-long v10, v15, v12

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    cmp-long v15, v10, v17

    .line 137
    .line 138
    if-eqz v15, :cond_7

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    move-wide/from16 v10, v17

    .line 142
    .line 143
    :goto_1
    cmp-long v15, v10, v17

    .line 144
    .line 145
    if-nez v15, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    new-instance v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 149
    .line 150
    invoke-direct {v15}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v7, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    iput-wide v10, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    .line 156
    .line 157
    cmp-long v10, v8, v17

    .line 158
    .line 159
    if-eqz v10, :cond_9

    .line 160
    .line 161
    iput-wide v8, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    move-object v13, v5

    .line 166
    goto :goto_8

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :goto_2
    move-object v13, v5

    .line 169
    goto :goto_6

    .line 170
    :cond_9
    iput-wide v12, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    .line 171
    .line 172
    :goto_3
    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 176
    .line 177
    .line 178
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    if-nez v7, :cond_2

    .line 180
    .line 181
    move-object v13, v6

    .line 182
    goto :goto_5

    .line 183
    :catch_1
    move-exception v0

    .line 184
    move-object v6, v13

    .line 185
    goto :goto_2

    .line 186
    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    .line 187
    .line 188
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    goto :goto_8

    .line 197
    :catch_2
    move-exception v0

    .line 198
    move-object v6, v13

    .line 199
    goto :goto_6

    .line 200
    :catchall_2
    move-exception v0

    .line 201
    move-object v14, v13

    .line 202
    goto :goto_8

    .line 203
    :catch_3
    move-exception v0

    .line 204
    move-object v6, v13

    .line 205
    move-object v14, v6

    .line 206
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    .line 208
    .line 209
    if-eqz v13, :cond_c

    .line 210
    .line 211
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 212
    .line 213
    .line 214
    :cond_c
    if-eqz v14, :cond_d

    .line 215
    .line 216
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 217
    .line 218
    .line 219
    :cond_d
    move-object v13, v6

    .line 220
    :goto_7
    return-object v13

    .line 221
    :goto_8
    if-eqz v13, :cond_e

    .line 222
    .line 223
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 224
    .line 225
    .line 226
    :cond_e
    if-eqz v14, :cond_f

    .line 227
    .line 228
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 229
    .line 230
    .line 231
    :cond_f
    throw v0
.end method

.method public final getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    :try_start_1
    const-string v2, "ApplicationControl"

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :cond_0
    const-string/jumbo v0, "pkgname"

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v3, "launchcount"

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_5

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    :goto_0
    move-object v0, v1

    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception v2

    .line 79
    move-object v9, v2

    .line 80
    move-object v2, v0

    .line 81
    move-object v0, v9

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move-object v2, v0

    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception v1

    .line 86
    move-object v9, v1

    .line 87
    move-object v1, v0

    .line 88
    move-object v0, v9

    .line 89
    goto :goto_5

    .line 90
    :catch_2
    move-exception v1

    .line 91
    move-object v2, v0

    .line 92
    move-object v0, v1

    .line 93
    move-object v1, v2

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move-object v2, v0

    .line 96
    :goto_1
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    .line 100
    .line 101
    :cond_4
    if-eqz p0, :cond_6

    .line 102
    .line 103
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    move-object v1, v0

    .line 109
    move-object v0, p0

    .line 110
    move-object p0, v1

    .line 111
    goto :goto_5

    .line 112
    :catch_3
    move-exception p0

    .line 113
    move-object v1, v0

    .line 114
    move-object v2, v1

    .line 115
    move-object v0, p0

    .line 116
    move-object p0, v2

    .line 117
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    .line 124
    .line 125
    :cond_5
    if-eqz p0, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    :goto_4
    return-object v2

    .line 129
    :goto_5
    if-eqz v1, :cond_7

    .line 130
    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    :cond_7
    if-eqz p0, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 137
    .line 138
    .line 139
    :cond_8
    throw v0
.end method

.method public final updateBackGroundUsageDetails(JJLjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string/jumbo v1, "pkgname = \'"

    .line 4
    .line 5
    .line 6
    const-string v2, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    const-string v5, "ApplicationControl"

    .line 42
    .line 43
    const-string v6, "applastservicestoptime"

    .line 44
    .line 45
    const-string v7, "applastservicestarttime"

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    :try_start_3
    new-instance v4, Landroid/content/ContentValues;

    .line 50
    .line 51
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, v5, v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    move-object v3, v2

    .line 89
    goto :goto_3

    .line 90
    :catch_0
    move-exception p1

    .line 91
    move-object v3, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v1, "pkgname"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :catch_1
    move-exception p1

    .line 128
    goto :goto_1

    .line 129
    :catch_2
    move-exception p1

    .line 130
    move-object p0, v3

    .line 131
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .line 133
    .line 134
    if-eqz v3, :cond_2

    .line 135
    .line 136
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-void

    .line 145
    :goto_3
    if-eqz v3, :cond_4

    .line 146
    .line 147
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 148
    .line 149
    .line 150
    :cond_4
    throw p0
.end method

.method public final updateForeGroundUsageDetails(IJJLjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string/jumbo v1, "pkgname = \'"

    .line 4
    .line 5
    .line 6
    const-string v2, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    const-string v5, "ApplicationControl"

    .line 42
    .line 43
    const-string/jumbo v6, "lastpausetime"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v7, "lastlaunchtime"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v8, "launchcount"

    .line 50
    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    :try_start_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/2addr p1, v4

    .line 63
    new-instance v4, Landroid/content/ContentValues;

    .line 64
    .line 65
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v4, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, v5, v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    move-object v3, v2

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception p1

    .line 112
    move-object v3, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .line 115
    .line 116
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo p1, "pkgname"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    goto :goto_3

    .line 155
    :catch_1
    move-exception p1

    .line 156
    goto :goto_1

    .line 157
    :catch_2
    move-exception p1

    .line 158
    move-object p0, v3

    .line 159
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    .line 161
    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 165
    .line 166
    .line 167
    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 170
    .line 171
    .line 172
    :cond_3
    return-void

    .line 173
    :goto_3
    if-eqz v3, :cond_4

    .line 174
    .line 175
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 176
    .line 177
    .line 178
    :cond_4
    throw p0
.end method
